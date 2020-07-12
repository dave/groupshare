package store

import (
	"context"
	"fmt"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/delta"
	"github.com/dave/protod/pserver"
	"google.golang.org/protobuf/proto"
)

func ShareGetRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) *messages.Share_Get_Response {
	wrap := func(err error) *messages.Share_Get_Response {
		return &messages.Share_Get_Response{Err: api.Error(err)}
	}

	req := &messages.Share_Get_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}

	if _, _, err := api.GetUserVerify(ctx, server.Firestore, nil, req.Token); err != nil {
		return wrap(api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err)))
	}

	ref := server.Firestore.Collection(api.SHARES_COLLECTION).Doc(req.Id)

	state, value, _, err := server.UnpackSnapshot(ctx, nil, SHARE_DOCUMENT_TYPE, ref)
	if err != nil {
		return wrap(api.UserError("Database error", fmt.Errorf("getting snapshot: %w", err)))
	}

	state, err = server.Changes(ctx, nil, SHARE_DOCUMENT_TYPE, ref, state, 0, func(op *delta.Op) error {
		if err := delta.Apply(op, value); err != nil {
			return fmt.Errorf("applying op to snapshot value: %w", err)
		}
		return nil
	})
	if err != nil {
		return wrap(api.UserError("Database error", fmt.Errorf("applying changes: %w", err)))
	}

	return &messages.Share_Get_Response{
		Id:    req.Id,
		State: state,
		Share: value.(*data.Share),
	}
}

func ShareAddRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) *messages.Share_Add_Response {
	wrap := func(err error) *messages.Share_Add_Response {
		return &messages.Share_Add_Response{Err: api.Error(err)}
	}

	req := &messages.Share_Add_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}

	// do as much marshaling and unmarshaling as we can before opening the transaction
	opBlob, err := server.MarshalToBlob(delta.Set(nil, req.Share))
	if err != nil {
		return wrap(api.UserError("Server error", fmt.Errorf("marshaling op to blob: %w", err)))
	}
	shareBlob, err := server.MarshalToBlob(req.Share)
	if err != nil {
		return wrap(api.UserError("Server error", fmt.Errorf("marshaling share to blob: %w", err)))
	}

	var response *messages.Share_Add_Response

	if err := server.Firestore.RunTransaction(ctx, func(ctx context.Context, tx *firestore.Transaction) error {

		// check for documents with the same unique request id
		duplicate, err := server.QuerySnapshot(ctx, tx, SHARE_DOCUMENT_TYPE, req.Request)
		if err != nil {
			return api.UserError("Database error", fmt.Errorf("querying snapshot request: %w", err))
		}
		if duplicate != nil {
			response = &messages.Share_Add_Response{Id: duplicate.ID}
			return nil
		}

		ref := server.Firestore.Collection(api.SHARES_COLLECTION).NewDoc()

		// share specific
		userRef, user, err := api.GetUserVerify(ctx, server.Firestore, tx, req.Token)
		if err != nil {
			return api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err))
		}
		user.Shares = append(user.Shares, ref.ID)
		if err := tx.Set(userRef, user); err != nil {
			return api.UserError("Server error", fmt.Errorf("setting updated user: %w", err))
		}
		// end share specific

		snapshot := &data.Snapshot{
			User:  userRef.ID,
			Value: &pserver.Snapshot{Request: req.Request, State: 1, Value: shareBlob},
		}
		if err := tx.Set(ref, snapshot); err != nil {
			return api.UserError("Server error", fmt.Errorf("setting new share: %w", err))
		}

		stateRef := ref.Collection(pserver.STATES_COLLECTION).NewDoc()
		state := &data.State{
			User:  userRef.ID,
			Value: &pserver.State{Request: req.Request, State: 1, Op: opBlob},
		}
		if err := tx.Set(stateRef, state); err != nil {
			return api.UserError("Server error", fmt.Errorf("setting new state: %w", err))
		}

		response = &messages.Share_Add_Response{Id: ref.ID}
		return nil

	}); err != nil {
		return wrap(err)
	}

	return response
}

func ShareEditRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) *messages.Share_Edit_Response {
	wrap := func(err error) *messages.Share_Edit_Response {
		return &messages.Share_Edit_Response{Err: api.Error(err)}
	}

	req := &messages.Share_Edit_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}

	// TODO: should this be inside the transaction? hmm
	userRef, user, err := api.GetUserVerify(ctx, server.Firestore, nil, req.Token)
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
		return wrap(api.UserError("You don't have permission to edit this item", api.AuthErrorf("verifying token: %w", err)))
	}

	// 3) Let's refer to req.Op as OP2
	op2 := req.Op

	ref := server.Firestore.Collection(api.SHARES_COLLECTION).Doc(req.Id)

	var response *messages.Share_Edit_Response
	var duplicate *firestore.DocumentSnapshot

	if err := server.Firestore.RunTransaction(ctx, func(ctx context.Context, tx *firestore.Transaction) error {

		var err error
		duplicate, err = server.QueryState(ctx, tx, SHARE_DOCUMENT_TYPE, ref, req.Request)
		if err != nil {
			return api.UserError("Server error", fmt.Errorf("getting previous request state: %w", err))
		}
		if duplicate != nil {
			// exit from transaction and continue processing outside (no writes needed)
			return nil
		}

		state, op1x, op2x, err := server.Transform(ctx, tx, SHARE_DOCUMENT_TYPE, ref, op2, req.State, 0)
		if err != nil {
			return api.UserError("Database error", fmt.Errorf("transforming: %w", err))
		}

		// 6) Store OP2x in the database, and increment the state counter (STATE)
		op2xBlob, err := server.MarshalToBlob(op2x)
		if err != nil {
			return api.UserError("Database error", fmt.Errorf("marshaling op2x to blob: %w", err))
		}
		newStateRef := ref.Collection(pserver.STATES_COLLECTION).NewDoc()
		newState := state + 1
		newStateItem := &data.State{
			User:  userRef.ID,
			Value: &pserver.State{Request: req.Request, State: newState, Op: op2xBlob},
		}
		if err := tx.Set(newStateRef, newStateItem); err != nil {
			return api.UserError("Database error", fmt.Errorf("setting new state item: %w", err))
		}

		// 7) Response: {unique: UNIQUE, state: COUNT, op: OP1x}
		response = &messages.Share_Edit_Response{
			State: newState,
			Op:    op1x,
		}
		return nil

	}); err != nil {
		return wrap(err)
	}

	if duplicate != nil {
		// This request has already been processed. We can recreate the correct response, and nothing
		// needs to be stored in the database.
		after, _, err := server.UnpackState(duplicate, SHARE_DOCUMENT_TYPE)
		if err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("unpacking previous state: %w", err)))
		}

		_, op1x, _, err := server.Transform(ctx, nil, SHARE_DOCUMENT_TYPE, ref, op2, req.State, after.State)
		if err != nil {
			return wrap(api.UserError("Database error", fmt.Errorf("transforming: %w", err)))
		}

		return &messages.Share_Edit_Response{
			State: after.State,
			Op:    op1x,
		}
	}

	// update the snapshot less frequently, and outside the transaction!
	// TODO: Can we just start this in a goroutine and run asynchronously? Hmm... in App Engine?
	updateSnapshot := response.State%10 == 0
	if updateSnapshot {
		if err := UpdateSnapshot(ctx, server, SHARE_DOCUMENT_TYPE, ref); err != nil {
			return wrap(err)
		}
	}

	return response
}

func UpdateSnapshot(ctx context.Context, server *pserver.Server, t pserver.DocumentType, ref *firestore.DocumentRef) error {
	// update the value snapshot. this doesn't need to be inside a transaction, because if the
	// snapshot is slightly out of date it doesn't matter.
	snapshotState, document, snapshotMessage, err := server.UnpackSnapshot(ctx, nil, t, ref)
	snapshot := snapshotMessage.(*data.Snapshot)

	state, err := server.Changes(ctx, nil, t, ref, snapshotState, 0, func(op *delta.Op) error {
		if err := delta.Apply(op, document); err != nil {
			return fmt.Errorf("applying op to snapshot value: %w", err)
		}
		return nil
	})
	if err != nil {
		return api.UserError("Database error", fmt.Errorf("applying changes: %w", err))
	}
	if state == snapshotState {
		return nil
	}
	valueBlob, err := server.MarshalToBlob(document)
	if err != nil {
		return api.UserError("Database error", fmt.Errorf("marshaling snapshot to blob: %w", err))
	}
	newSnapshot := &data.Snapshot{
		User:  snapshot.User,
		Value: &pserver.Snapshot{State: state, Value: valueBlob},
	}
	if _, err := ref.Set(ctx, newSnapshot); err != nil {
		return api.UserError("Database error", fmt.Errorf("setting new snapshot: %w", err))
	}
	return nil
}

func ShareListRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) *messages.Share_List_Response {
	wrap := func(err error) *messages.Share_List_Response {
		return &messages.Share_List_Response{Err: api.Error(err)}
	}

	req := &messages.Share_Get_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}

	_, user, err := api.GetUserVerify(ctx, server.Firestore, nil, req.Token)
	if err != nil {
		return wrap(api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err)))
	}

	return &messages.Share_List_Response{Shares: user.Shares}
}

var SHARE_DOCUMENT_TYPE = pserver.DocumentType{
	Collection:    api.SHARES_COLLECTION,
	Snapshot:      unpackSnapshot,
	State:         unpackState,
	StateField:    "Value",
	SnapshotField: "Value",
	Document:      &data.Share{},
}

func unpackSnapshot(s *firestore.DocumentSnapshot) (*pserver.Snapshot, proto.Message, error) {
	snap := &data.Snapshot{}
	if err := s.DataTo(snap); err != nil {
		return nil, nil, err
	}
	return snap.Value, snap, nil
}

func unpackState(s *firestore.DocumentSnapshot) (*pserver.State, proto.Message, error) {
	state := &data.State{}
	if err := s.DataTo(state); err != nil {
		return nil, nil, err
	}
	return state.Value, state, nil
}
