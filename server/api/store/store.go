package store

import (
	"context"
	"fmt"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/delta"
	"google.golang.org/api/iterator"
	"google.golang.org/protobuf/proto"
)

func ShareEditRequest(ctx context.Context, client *firestore.Client, requestBytes []byte) *messages.Share_Edit_Response {
	wrap := func(err error) *messages.Share_Edit_Response {
		return &messages.Share_Edit_Response{Err: api.Error(err)}
	}

	req := &messages.Share_Edit_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}

	// TODO: should this be inside the transaction? hmm
	userRef, user, err := api.GetUserVerify(ctx, client, nil, req.Token)
	if err != nil {
		return wrap(api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err)))
	}

	var found bool
	for _, share := range user.Shares {
		if share == req.Id {
			found = true
			break
		}
	}
	if !found {
		return wrap(api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err)))
	}

	// 3) Let's refer to req.Req.Op as OP2
	op2 := &delta.Op{}
	if err := proto.Unmarshal(req.Req.Op, op2); err != nil {
		return wrap(api.UserError("Database error", fmt.Errorf("unpacking req.Req.Op: %w", err)))
	}

	var response *messages.Share_Edit_Response

	if err := client.RunTransaction(ctx, func(ctx context.Context, tx *firestore.Transaction) error {

		// 1) check that req.Req.Unique (UNIQUE) hasn't been applied before... if it has, reply with appropriate response
		uniqueQuery := client.Collection(api.STATE_COLLECTION).Where("unique", "==", req.Req.Unique)
		uniqueDocs, err := tx.Documents(uniqueQuery).GetAll()
		if err != nil {
			return api.UserError("Server error", fmt.Errorf("getting unique: %w", err))
		}
		if len(uniqueDocs) > 1 {
			return api.UserError("Database error", fmt.Errorf("should be max 1 state with unique %q - found %d", req.Req.Unique, len(uniqueDocs)))
		} else if len(uniqueDocs) == 1 {
			uniqueDoc := uniqueDocs[0]
			uniqueState := &data.State{}
			if err := uniqueDoc.DataTo(uniqueState); err != nil {
				return api.UserError("Database error", fmt.Errorf("unpacking unique state: %w", err))
			}
			if uniqueState.Type != api.SHARES_COLLECTION {
				return api.UserError("Database error", fmt.Errorf("unique type %q in database does not correspond to requested type %q", uniqueState.Type, api.SHARES_COLLECTION))
			}
			if uniqueState.Id != req.Id {
				return api.UserError("Database error", fmt.Errorf("unique id %q in database does not correspond to requested id %q", uniqueState.Id, req.Id))
			}
			response = &messages.Share_Edit_Response{
				Resp: &messages.State_Response{
					Unique: uniqueState.Unique,
					State:  uniqueState.State,
					Op:     uniqueState.Op1X,
				},
				Err: nil,
			}
			return nil
		}

		// 2) get all ops that have been applied since req.Req.State and refer to them as OP1
		stateQuery := client.Collection(api.STATE_COLLECTION).
			Where("type", "==", api.SHARES_COLLECTION).
			Where("id", "==", req.Id).
			Where("state", ">=", req.Req.State).
			OrderBy("state", firestore.Asc)
		stateIter := tx.Documents(stateQuery)

		var count int
		var ops []*delta.Op
		var finalState int64
		var clientState *data.State // the first state (the state that the client was at when ops were applied)
		for {
			doc, err := stateIter.Next()
			if err == iterator.Done {
				break
			}
			if err != nil {
				return api.UserError("Database error", fmt.Errorf("iterating states: %w", err))
			}
			if count == 0 {
				clientState = &data.State{}
				if err := doc.DataTo(clientState); err != nil {
					return api.UserError("Database error", fmt.Errorf("unpacking client state: %w", err))
				}
				if clientState.State != req.Req.State {
					// first state in the returned set MUST be the client state (req.Req.State)
					return api.UserError("Database error", fmt.Errorf("client state not found for type:%q, id:%q, state:%q not found", api.SHARES_COLLECTION, req.Id, req.Req.State))
				}
				finalState = clientState.State
			}
			if count > 0 {
				state := &data.State{}
				if err := doc.DataTo(state); err != nil {
					return api.UserError("Database error", fmt.Errorf("unpacking state: %w", err))
				}
				op2x := &delta.Op{}
				if err := proto.Unmarshal(state.Op2X, op2x); err != nil {
					return api.UserError("Database error", fmt.Errorf("unpacking op: %w", err))
				}
				ops = append(ops, op2x)
				finalState = state.State
			}
			count++
		}

		var op1x, op2x *delta.Op

		switch {
		case count == 0:
			return api.UserError("Database error", fmt.Errorf("state not found for type:%q, id:%q, state:%q not found", api.SHARES_COLLECTION, req.Id, req.Req.State))
		case count == 1:
			// only one state returned (the client state), so the client was applying to the latest version,
			// so no transform needed e.g. op1 == nil
			op1x = nil
			op2x = op2
		case count > 1:
			// 4) OP1.transform(OP2) = OP2x
			// 5) OP2.transform(OP1) = OP1x
			op1 := delta.Compound(ops...)
			op1x, op2x, err = delta.Transform(op1, op2, true)
			if err != nil {
				return api.UserError("Database error", fmt.Errorf("transforming: %w", err))
			}
		}

		op1xBytes, err := proto.Marshal(op1x)
		if err != nil {
			return api.UserError("Database error", fmt.Errorf("marshaling op2x: %w", err))
		}
		op2xBytes, err := proto.Marshal(op2x)
		if err != nil {
			return api.UserError("Database error", fmt.Errorf("marshaling op2x: %w", err))
		}

		// 6) Store OP2x in the database, and increment the state counter (STATE)
		newState := finalState + 1
		newStateItem := &data.State{
			User:     userRef.ID,
			Type:     api.SHARES_COLLECTION,
			Id:       req.Id,
			State:    newState,
			Previous: finalState,
			Unique:   req.Req.Unique,
			Op2X:     op2xBytes,
			Op1X:     op1xBytes,
		}
		newStateItemRef := client.Collection(api.SHARES_COLLECTION).NewDoc()

		if err := tx.Set(newStateItemRef, newStateItem); err != nil {
			return api.UserError("Database error", fmt.Errorf("setting new state item: %w", err))
		}

		// 7) Response: {unique: UNIQUE, state: COUNT, op: OP1x}
		response = &messages.Share_Edit_Response{
			Resp: &messages.State_Response{
				Unique: req.Req.Unique,
				State:  newState,
				Op:     op1xBytes,
			},
			Err: nil,
		}
		return nil

	}); err != nil {
		return wrap(fmt.Errorf("running edit share transaction: %w", err))
	}

	// update the snapshot less frequently, and outside the transaction!
	// TODO: Can we just start this in a goroutine and run asynchronously? Hmm... in App Engine?
	updateSnapshot := response.Resp.State%10 == 0
	if updateSnapshot {
		// update the value snapshot
		snapshotRef := client.Collection(api.SHARES_COLLECTION).Doc(req.Id)
		snapshotDoc, err := snapshotRef.Get(ctx)
		if err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("getting snapshot: %w", err)))
		}
		snapshot := &data.Snapshot{}
		if err := snapshotDoc.DataTo(snapshot); err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("reading snapshot data: %w", err)))
		}
		currentState := snapshot.State
		value := &data.Share{}
		if err := proto.Unmarshal(snapshot.Value, value); err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("unmarshaling shareValue: %w", err)))
		}
		stateQuery := client.Collection(api.SHARES_COLLECTION).
			Where("type", "==", api.SHARES_COLLECTION).
			Where("id", "==", req.Id).
			Where("state", ">", snapshot.State).
			OrderBy("state", firestore.Asc)
		stateIter := stateQuery.Documents(ctx)
		var count int
		for {
			stateDoc, err := stateIter.Next()
			if err == iterator.Done {
				break
			}
			if err != nil {
				return wrap(api.UserError("Database error", fmt.Errorf("iterating state data: %w", err)))
			}
			state := &data.State{}
			if err := stateDoc.DataTo(state); err != nil {
				return wrap(api.UserError("Database error", fmt.Errorf("reading state data: %w", err)))
			}
			if currentState != state.Previous {
				return wrap(api.UserError("Database error", fmt.Errorf("can't apply op to state %d, previous = %d", currentState, state.Previous)))
			}
			stateOp2x := &delta.Op{}
			if err := proto.Unmarshal(state.Op2X, stateOp2x); err != nil {
				return wrap(api.UserError("Database error", fmt.Errorf("unmarshaling stateOp2x: %w", err)))
			}
			if err := delta.Apply(stateOp2x, value); err != nil {
				return wrap(api.UserError("Database error", fmt.Errorf("applying op to snapshot value: %w", err)))
			}
			currentState = state.State
			count++
		}
		if count == 0 {
			// snapshot is up to date (shouldn't happen if we're running every 10 states)
			return nil
		}
		valueBytes, err := proto.Marshal(value)
		if err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("marshaling snapshot value: %w", err)))
		}
		newSnapshot := &data.Snapshot{
			Type:  api.SHARES_COLLECTION,
			Id:    req.Id,
			State: currentState,
			Value: valueBytes,
		}
		if _, err := snapshotRef.Set(ctx, newSnapshot); err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("setting new snapshot: %w", err)))
		}
	}

	return response
}

func ShareAddRequest(ctx context.Context, client *firestore.Client, requestBytes []byte) *messages.Share_Add_Response {
	wrap := func(err error) *messages.Share_Add_Response {
		return &messages.Share_Add_Response{Err: api.Error(err)}
	}

	req := &messages.Share_Add_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}

	// do as much marshaling and unmarshaling as we can before opening the transaction

	share := &data.Share{}
	if err := proto.Unmarshal(req.Share, share); err != nil {
		return wrap(api.UserError("Server error", fmt.Errorf("unmarshaling share: %w", err)))
	}

	// re-marshal to ensure client hasn't sent weird bytes
	shareBytes, err := proto.Marshal(share)
	if err != nil {
		return wrap(api.UserError("Server error", fmt.Errorf("marshaling share: %w", err)))
	}

	op2x := data.Op().Share().Set(share)
	op2xBytes, err := proto.Marshal(op2x)
	if err != nil {
		return wrap(api.UserError("Server error", fmt.Errorf("marshaling op2x: %w", err)))
	}

	var response *messages.Share_Add_Response

	if err := client.RunTransaction(ctx, func(ctx context.Context, tx *firestore.Transaction) error {

		userRef, user, err := api.GetUserVerify(ctx, client, tx, req.Token)
		if err != nil {
			return api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err))
		}

		// check that req.Req.Unique (UNIQUE) hasn't been applied before... if it has, error
		uniqueQuery := client.Collection(api.STATE_COLLECTION).Where("unique", "==", req.Unique)
		uniqueDocs, err := tx.Documents(uniqueQuery).GetAll()
		if err != nil {
			return api.UserError("Server error", fmt.Errorf("getting unique: %w", err))
		}
		if len(uniqueDocs) != 0 {
			return api.UserError("Database error", fmt.Errorf("unique %q found in add request", req.Unique))
		}

		shareRef := client.Collection(api.SHARES_COLLECTION).NewDoc()
		stateRef := client.Collection(api.STATE_COLLECTION).NewDoc()
		state := &data.State{
			User:     userRef.ID,
			Type:     api.SHARES_COLLECTION,
			Id:       shareRef.ID,
			State:    1,
			Previous: 0,
			Unique:   req.Unique,
			Op2X:     op2xBytes,
			Op1X:     nil,
		}
		shareSnap := &data.Snapshot{
			Type:  api.SHARES_COLLECTION,
			Id:    shareRef.ID,
			State: 1,
			Value: shareBytes,
		}

		user.Shares = append(user.Shares, shareRef.ID)

		if err := tx.Set(stateRef, state); err != nil {
			return api.UserError("Server error", fmt.Errorf("setting new state: %w", err))
		}
		if err := tx.Set(shareRef, shareSnap); err != nil {
			return api.UserError("Server error", fmt.Errorf("setting new share: %w", err))
		}
		if err := tx.Set(userRef, user); err != nil {
			return api.UserError("Server error", fmt.Errorf("setting updated user: %w", err))
		}

		response = &messages.Share_Add_Response{Id: shareRef.ID, Unique: req.Unique}

		return nil

	}); err != nil {
		return wrap(fmt.Errorf("running add share transaction: %w", err))
	}

	return response
}

func ShareListRequest(ctx context.Context, client *firestore.Client, requestBytes []byte) *messages.Share_List_Response {
	wrap := func(err error) *messages.Share_List_Response {
		return &messages.Share_List_Response{Err: api.Error(err)}
	}

	req := &messages.Share_Get_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}

	_, user, err := api.GetUserVerify(ctx, client, nil, req.Token)
	if err != nil {
		return wrap(api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err)))
	}

	return &messages.Share_List_Response{Shares: user.Shares}
}

func ShareGetRequest(ctx context.Context, client *firestore.Client, requestBytes []byte) *messages.Share_Get_Response {
	wrap := func(err error) *messages.Share_Get_Response {
		return &messages.Share_Get_Response{Err: api.Error(err)}
	}

	req := &messages.Share_Get_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}

	if _, _, err := api.GetUserVerify(ctx, client, nil, req.Token); err != nil {
		return wrap(api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err)))
	}

	shareSnapRef := client.Collection(api.SHARES_COLLECTION).Doc(req.Id)
	shareSnapDoc, err := shareSnapRef.Get(ctx)
	if err != nil {
		return wrap(api.UserError("Database error", fmt.Errorf("getting snapshot: %w", err)))
	}
	shareSnap := &data.Snapshot{}
	if err := shareSnapDoc.DataTo(shareSnap); err != nil {
		return wrap(api.UserError("Database error", fmt.Errorf("reading snapshot data: %w", err)))
	}
	currentState := shareSnap.State
	shareValue := &data.Share{}
	if err := proto.Unmarshal(shareSnap.Value, shareValue); err != nil {
		return wrap(api.UserError("Database error", fmt.Errorf("unmarshaling value: %w", err)))
	}

	var count int
	stateIter := client.Collection(api.SHARES_COLLECTION).
		Where("type", "==", api.SHARES_COLLECTION).
		Where("id", "==", req.Id).
		Where("state", ">", shareSnap.State).
		OrderBy("state", firestore.Asc).Documents(ctx)
	for {
		stateDoc, err := stateIter.Next()
		if err == iterator.Done {
			break
		}
		if err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("iterating state data: %w", err)))
		}
		state := &data.State{}
		if err := stateDoc.DataTo(state); err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("reading state data: %w", err)))
		}
		if state.Previous != currentState {
			return wrap(api.UserError("Database error", fmt.Errorf("can't apply op to state %d, previous = %d", currentState, state.Previous)))
		}
		op2x := &delta.Op{}
		if err := proto.Unmarshal(state.Op2X, op2x); err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("unmarshaling op2x: %w", err)))
		}
		if err := delta.Apply(op2x, shareValue); err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("applying op to snapshot value: %w", err)))
		}
		currentState = state.State
		count++
	}

	var newValue []byte
	if count == 0 {
		// if count == 0, value hasn't changed, so no need to re-marshal so just use bytes value from snapshot
		newValue = shareSnap.Value
	} else {
		newValue, err = proto.Marshal(shareValue)
		if err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("marshaling shareValue: %w", err)))
		}
	}

	return &messages.Share_Get_Response{
		Id:    req.Id,
		State: currentState,
		Share: newValue,
		Err:   nil,
	}
}
