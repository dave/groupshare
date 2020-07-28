package store

import (
	"context"
	"fmt"
	"math/rand"
	"time"

	cloudtasks "cloud.google.com/go/cloudtasks/apiv2"
	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/delta"
	"github.com/dave/protod/pserver"
	taskspb "google.golang.org/genproto/googleapis/cloud/tasks/v2"
	"google.golang.org/protobuf/proto"
)

const UPDATE_SNAPSHOT_FREQUENCY = 100

func ShareGetRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) (*messages.Share_Get_Response, error) {
	wrap := func(t messages.Error_Type, m string, err error) (*messages.Share_Get_Response, error) {
		return &messages.Share_Get_Response{Err: api.Error(t, m, err)}, err
	}

	req := &messages.Share_Get_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(messages.Error_ERROR, "Corrupt input", fmt.Errorf("unmarshaling: %w", err))
	}

	if _, _, err := api.GetUserVerify(ctx, server.Firestore, nil, req.Token); err != nil {
		return wrap(messages.Error_AUTH, "Invalid login token", fmt.Errorf("verifying token: %w", err))
	}

	ref := server.Firestore.Collection(api.SHARES_COLLECTION).Doc(req.Id)

	state, value, _, err := server.UnpackSnapshot(ctx, nil, SHARE_DOCUMENT_TYPE, ref)
	if err != nil {
		return wrap(messages.Error_ERROR, "Database error", fmt.Errorf("getting snapshot: %w", err))
	}

	state, err = server.Changes(ctx, nil, SHARE_DOCUMENT_TYPE, ref, state, 0, func(op *delta.Op) error {
		if err := delta.Apply(op, value); err != nil {
			return fmt.Errorf("applying op to snapshot value: %w", err)
		}
		return nil
	})
	if err != nil {
		return wrap(messages.Error_ERROR, "Database error", fmt.Errorf("applying changes: %w", err))
	}

	return &messages.Share_Get_Response{
		State: state,
		Share: value.(*data.Share),
	}, nil
}

func ShareAddRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) (*messages.Share_Add_Response, error) {
	wrap := func(t messages.Error_Type, m string, err error) (*messages.Share_Add_Response, error) {
		return &messages.Share_Add_Response{Err: api.Error(t, m, err)}, err
	}

	req := &messages.Share_Add_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(messages.Error_ERROR, "Corrupt input", fmt.Errorf("unmarshaling: %w", err))
	}

	// do as much marshaling and unmarshaling as we can before opening the transaction
	opBlob, err := server.MarshalToBlob(delta.Set(nil, req.Share))
	if err != nil {
		return wrap(messages.Error_ERROR, "Server error", fmt.Errorf("marshaling op to blob: %w", err))
	}
	shareBlob, err := server.MarshalToBlob(req.Share)
	if err != nil {
		return wrap(messages.Error_ERROR, "Server error", fmt.Errorf("marshaling share to blob: %w", err))
	}

	ref := server.Firestore.Collection(SHARE_DOCUMENT_TYPE.Collection).Doc(req.Id)

	var response *messages.Share_Add_Response
	errType := messages.Error_ERROR
	errMessage := "Database error"

	if err := server.Firestore.RunTransaction(ctx, func(ctx context.Context, tx *firestore.Transaction) error {

		// check for documents with the same id
		found, err := server.DocumentExists(ctx, tx, ref)
		if err != nil {
			return fmt.Errorf("finding document: %w", err)
		}
		if found {
			response = &messages.Share_Add_Response{}
			return nil
		}

		// share specific
		userRef, user, err := api.GetUserVerify(ctx, server.Firestore, tx, req.Token)
		if err != nil {
			errMessage = "Invalid login token"
			errType = messages.Error_AUTH
			return fmt.Errorf("verifying token: %w", err)
		}
		user.Shares = append(user.Shares, ref.ID)
		if err := tx.Set(userRef, user); err != nil {
			return fmt.Errorf("setting updated user: %w", err)
		}
		// end share specific

		const initialState = 1

		snapshot := &data.Snapshot{
			User: userRef.ID,
			Value: &pserver.Snapshot{
				State: initialState,
				Value: shareBlob,
			},
		}
		if err := tx.Set(ref, snapshot); err != nil {
			return fmt.Errorf("setting new share: %w", err)
		}

		stateRef := ref.Collection(pserver.STATES_COLLECTION).Doc(uniqueID())
		state := &data.State{
			User: userRef.ID,
			Value: &pserver.State{
				State: initialState,
				Op:    opBlob,
			},
		}
		if err := tx.Create(stateRef, state); err != nil {
			return fmt.Errorf("setting new state: %w", err)
		}

		response = &messages.Share_Add_Response{}
		return nil

	}); err != nil {
		return wrap(errType, errMessage, err)
	}

	return response, nil
}

func ShareEditRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) (*messages.Share_Edit_Response, error) {
	wrap := func(t messages.Error_Type, m string, err error) (*messages.Share_Edit_Response, error) {
		return &messages.Share_Edit_Response{Err: api.Error(t, m, err)}, err
	}

	req := &messages.Share_Edit_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(messages.Error_ERROR, "Corrupt input", fmt.Errorf("unmarshaling: %w", err))
	}

	// TODO: should this be inside the transaction? hmm
	userRef, user, err := api.GetUserVerify(ctx, server.Firestore, nil, req.Token)
	if err != nil {
		return wrap(messages.Error_AUTH, "Invalid login token", fmt.Errorf("verifying token: %w", err))
	}

	var found bool
	for _, share := range user.Shares {
		if share == req.Payload.Document {
			found = true
			break
		}
	}
	if !found {
		return wrap(messages.Error_ERROR, "You don't have permission to edit this item", fmt.Errorf("verifying token: %w", err))
	}

	// 3) Let's refer to req.Op as OP2
	op2 := req.Payload.Op

	ref := server.Firestore.Collection(api.SHARES_COLLECTION).Doc(req.Payload.Document)

	var response *messages.Share_Edit_Response
	var duplicate *firestore.DocumentSnapshot
	errType := messages.Error_ERROR
	errMessage := "Database error"

	f := func(ctx context.Context, tx *firestore.Transaction) error {

		var err error
		duplicate, err = server.QueryState(ctx, tx, ref, req.Payload.Id)
		if err != nil {
			return fmt.Errorf("getting previous request state: %w", err)
		}
		if duplicate != nil {
			// exit from transaction and continue processing outside (no writes needed)
			return nil
		}

		state, op1x, op2x, err := server.Transform(ctx, tx, SHARE_DOCUMENT_TYPE, ref, op2, req.Payload.State, 0)
		if err != nil {
			return fmt.Errorf("transforming: %w", err)
		}

		// 6) Store OP2x in the database, and increment the state counter (STATE)
		op2xBlob, err := server.MarshalToBlob(op2x)
		if err != nil {
			return fmt.Errorf("marshaling op2x to blob: %w", err)
		}
		newState := state + 1
		newStateRef := ref.Collection(pserver.STATES_COLLECTION).Doc(req.Payload.Id)
		newStateItem := &data.State{
			User:  userRef.ID,
			Value: &pserver.State{State: newState, Op: op2xBlob},
		}
		if err := tx.Create(newStateRef, newStateItem); err != nil {
			return fmt.Errorf("setting new state item: %w", err)
		}

		// 7) Response: {unique: UNIQUE, state: COUNT, op: OP1x}
		response = &messages.Share_Edit_Response{
			Payload: &pserver.Payload_Response{
				State: newState,
				Op:    op1x,
			},
		}
		return nil

	}

	tf := func() error {
		return server.Firestore.RunTransaction(ctx, f)
	}
	if err := pserver.Lock(ctx, ref.Path, tf); err != nil {
		return wrap(errType, errMessage, err)
	}

	if duplicate != nil {
		// This request has already been processed. We can recreate the correct response, and nothing
		// needs to be stored in the database.
		after, _, err := server.UnpackState(duplicate, SHARE_DOCUMENT_TYPE)
		if err != nil {
			return wrap(messages.Error_ERROR, "Database error", fmt.Errorf("unpacking previous state: %w", err))
		}

		_, op1x, _, err := server.Transform(ctx, nil, SHARE_DOCUMENT_TYPE, ref, op2, req.Payload.State, after.State)
		if err != nil {
			return wrap(messages.Error_ERROR, "Database error", fmt.Errorf("transforming: %w", err))
		}

		return &messages.Share_Edit_Response{
			Payload: &pserver.Payload_Response{
				State: after.State,
				Op:    op1x,
			},
		}, nil
	}

	if response.Payload.State%UPDATE_SNAPSHOT_FREQUENCY == 0 {
		request := &messages.Share_Refresh_Request{Id: req.Payload.Document}
		if _, err := TriggerRefreshTask(ctx, server, request); err != nil {
			return wrap(messages.Error_ERROR, "Server error", fmt.Errorf("triggering refresh task: %w", err))
		}
	}

	return response, nil
}

func ShareRefreshRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) error {

	req := &messages.Share_Refresh_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return fmt.Errorf("unmarshaling: %w", err)
	}

	ref := server.Firestore.Collection(api.SHARES_COLLECTION).Doc(req.Id)

	//func UpdateSnapshot(ctx context.Context, server *pserver.Server, t pserver.DocumentType, ref *firestore.DocumentRef) error {
	// update the value snapshot. this doesn't need to be inside a transaction, because if the
	// snapshot is slightly out of date it doesn't matter.
	snapshotState, document, snapshotMessage, err := server.UnpackSnapshot(ctx, nil, SHARE_DOCUMENT_TYPE, ref)
	snapshot := snapshotMessage.(*data.Snapshot)

	state, err := server.Changes(ctx, nil, SHARE_DOCUMENT_TYPE, ref, snapshotState, 0, func(op *delta.Op) error {
		if err := delta.Apply(op, document); err != nil {
			return fmt.Errorf("applying op to snapshot value: %w", err)
		}
		return nil
	})
	if err != nil {
		return fmt.Errorf("applying changes: %w", err)
	}
	if state == snapshotState {
		return nil
	}
	valueBlob, err := server.MarshalToBlob(document)
	if err != nil {
		return fmt.Errorf("marshaling snapshot to blob: %w", err)
	}
	newSnapshot := &data.Snapshot{
		User:  snapshot.User,
		Value: &pserver.Snapshot{State: state, Value: valueBlob},
	}
	if _, err := ref.Set(ctx, newSnapshot); err != nil {
		return fmt.Errorf("setting new snapshot: %w", err)
	}
	return nil
}

func ShareListRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) (*messages.Share_List_Response, error) {
	wrap := func(t messages.Error_Type, m string, err error) (*messages.Share_List_Response, error) {
		return &messages.Share_List_Response{Err: api.Error(t, m, err)}, err
	}

	req := &messages.Share_Get_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(messages.Error_ERROR, "Corrupt input", fmt.Errorf("unmarshaling: %w", err))
	}

	_, user, err := api.GetUserVerify(ctx, server.Firestore, nil, req.Token)
	if err != nil {
		return wrap(messages.Error_AUTH, "Invalid login token", fmt.Errorf("verifying token: %w", err))
	}

	return &messages.Share_List_Response{Shares: user.Shares}, nil
}

func TriggerRefreshTask(ctx context.Context, server *pserver.Server, message proto.Message) (*taskspb.Task, error) {

	// Create a new Cloud Tasks client instance.
	// See https://godoc.org/cloud.google.com/go/cloudtasks/apiv2
	client, err := cloudtasks.NewClient(ctx)
	if err != nil {
		return nil, fmt.Errorf("getting new cloudtasks client: %w", err)
	}

	body, err := proto.Marshal(message)
	if err != nil {
		return nil, fmt.Errorf("marshaling refresh message: %w", err)
	}

	// Build the Task payload.
	// https://godoc.org/google.golang.org/genproto/googleapis/cloud/tasks/v2#CreateTaskRequest
	req := &taskspb.CreateTaskRequest{
		Parent: fmt.Sprintf("projects/%s/locations/%s/queues/%s", server.Project, server.Location, server.Queue),
		Task: &taskspb.Task{
			// https://godoc.org/google.golang.org/genproto/googleapis/cloud/tasks/v2#HttpRequest
			MessageType: &taskspb.Task_HttpRequest{
				HttpRequest: &taskspb.HttpRequest{
					HttpMethod: taskspb.HttpMethod_POST,
					Url:        server.Prefix + pserver.Path(message),
					Body:       body,
					Headers:    map[string]string{"Content-Type": "application/protobuf"},
				},
			},
		},
	}

	task, err := client.CreateTask(ctx, req)
	if err != nil {
		return nil, fmt.Errorf("creating task: %v", err)
	}

	return task, nil

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

const alphanum = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

func uniqueID() string {
	b := make([]byte, 20)
	if _, err := rand.Read(b); err != nil {
		panic(fmt.Sprintf("firestore: crypto/rand.Read error: %v", err))
	}
	for i, byt := range b {
		b[i] = alphanum[int(byt)%len(alphanum)]
	}
	return string(b)
}

func init() {
	rand.Seed(time.Now().UnixNano())
}
