package store

import (
	"context"
	"fmt"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/delta"
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
		stateDocs, err := tx.Documents(stateQuery).GetAll()
		if err != nil {
			return api.UserError("Database error", fmt.Errorf("getting states: %w", err))
		}
		if len(stateDocs) == 0 {
			return api.UserError("Database error", fmt.Errorf("state not found for type:%q, id:%q, state:%q not found", api.SHARES_COLLECTION, req.Id, req.Req.State))
		}
		op2 := req.Req.Op
		var op1x, op2x *delta.Op
		var newState int64
		if len(stateDocs) == 1 {
			// the client was applying ops to the latest version
			op1x = nil
			op2x = req.Req.Op

			stateItem := &data.State{}
			if err := stateDocs[0].DataTo(stateItem); err != nil {
				return api.UserError("Database error", fmt.Errorf("unpacking state: %w", err))
			}
			newState = stateItem.State + 1

		} else {
			// 3) Let's refer to req.Req.Op as OP2
			// 4) OP1.transform(OP2) = OP2x
			// 5) OP2.transform(OP1) = OP1x

			newStateDocs := stateDocs[1:] // ignore the first state - this is the state of the client
			var ops []*delta.Op
			for i, stateDoc := range newStateDocs {
				stateItem := &data.State{}
				if err := stateDoc.DataTo(stateItem); err != nil {
					return api.UserError("Database error", fmt.Errorf("unpacking state: %w", err))
				}
				ops = append(ops, stateItem.Op2X)
				if i == len(newStateDocs)-1 {
					newState = stateItem.State + 1
				}
			}
			op1 := delta.Compound(ops...)
			op1x, op2x, err = delta.Transform(op1, op2, true)
			if err != nil {
				return api.UserError("Database error", fmt.Errorf("transforming: %w", err))
			}
		}

		// 6) Store OP2x in the database, and increment the counter (STATE)
		newStateItem := &data.State{
			User:   userRef.ID,
			Type:   api.SHARES_COLLECTION,
			Id:     req.Id,
			State:  newState,
			Unique: req.Req.Unique,
			Op2X:   op2x,
			Op1X:   op1x,
		}
		newStateItemDocRef := client.Collection(api.SHARES_COLLECTION).NewDoc()
		if err := tx.Set(newStateItemDocRef, newStateItem); err != nil {
			return api.UserError("Database error", fmt.Errorf("setting new state item: %w", err))
		}

		// 7) Response: {unique: UNIQUE, state: COUNT, op: OP1x}
		response = &messages.Share_Edit_Response{
			Resp: &messages.State_Response{
				Unique: req.Req.Unique,
				State:  newState,
				Op:     op1x,
			},
			Err: nil,
		}
		return nil

	}); err != nil {
		return wrap(fmt.Errorf("running edit share transaction: %w", err))
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

	if err := client.RunTransaction(ctx, func(ctx context.Context, tx *firestore.Transaction) error {

		userRef, user, err := api.GetUserVerify(ctx, client, tx, req.Token)
		if err != nil {
			return api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err))
		}

		shareRef := client.Collection(api.SHARES_COLLECTION).NewDoc()
		user.Shares = append(user.Shares, shareRef.ID)

		if err := tx.Set(shareRef, req.Share); err != nil {
			return api.UserError("Server error", fmt.Errorf("setting new share: %w", err))
		}
		if err := tx.Set(userRef, user); err != nil {
			return api.UserError("Server error", fmt.Errorf("setting updated user: %w", err))
		}

		return nil

	}); err != nil {
		return wrap(fmt.Errorf("running add share transaction: %w", err))
	}

	ref, _, err := client.Collection(api.SHARES_COLLECTION).Add(ctx, req.Share)
	if err != nil {
		return wrap(api.UserError("Database error", fmt.Errorf("adding to firebase collection: %w", err)))
	}

	return &messages.Share_Add_Response{Id: ref.ID, Version: ""}
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

	doc, err := client.Collection(api.SHARES_COLLECTION).Doc(req.Id).Get(ctx)
	if err != nil {
		return wrap(api.UserError("Database error", fmt.Errorf("getting from firebase: %w", err)))
	}

	share := &data.Share{}
	if err := doc.DataTo(share); err != nil {
		return wrap(api.UserError("Database error", fmt.Errorf("unpacking share: %w", err)))
	}

	return &messages.Share_Get_Response{Share: share, Version: ""}
}
