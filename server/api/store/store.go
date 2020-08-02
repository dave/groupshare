package store

import (
	"context"
	"errors"
	"fmt"
	"math/rand"
	"time"

	cloudtasks "cloud.google.com/go/cloudtasks/apiv2"
	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/delta"
	"github.com/dave/protod/pmsg"
	"github.com/dave/protod/pserver"
	"github.com/dave/protod/pstore"
	taskspb "google.golang.org/genproto/googleapis/cloud/tasks/v2"
	"google.golang.org/protobuf/proto"
)

const UPDATE_SNAPSHOT_FREQUENCY = 100

type ContextKey struct{}

var UserContextKey ContextKey // User (*api.User)

func GetRequest(ctx context.Context, server *pserver.Server, user *api.User, request, response *pmsg.Bundle) error {

	req := &pstore.Payload_Get_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	t := server.Type(req.DocumentType)
	if t == nil {
		api.Error(response, "Server error")
		return fmt.Errorf("type %q not found", req.DocumentType)
	}

	state, document, err := pstore.Get(ctx, server, t, req.DocumentId)
	if err != nil {
		api.Error(response, "Server error")
		return fmt.Errorf("pstore get: %w", err)
	}

	value, err := delta.MarshalAny(document)
	if err != nil {
		api.Error(response, "Server error")
		return fmt.Errorf("marshaling document: %w", err)
	}

	response.MustSet(&pstore.Payload_Get_Response{State: state, Value: value})

	return nil

}

func AddRequest(ctx context.Context, server *pserver.Server, user *api.User, request, response *pmsg.Bundle) error {

	req := &pstore.Payload_Add_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	t := server.Type(req.DocumentType)
	if t == nil {
		api.Error(response, "Server error")
		return fmt.Errorf("type %q not found", req.DocumentType)
	}

	document, err := delta.UnmarshalAny(req.Value)
	if err != nil {
		api.Error(response, "Server error")
		return fmt.Errorf("unmarshaling document: %w", err)
	}

	if err := pstore.Add(ctx, server, t, req.DocumentId, document); err != nil {
		api.Error(response, "Server error")
		return fmt.Errorf("pstore add: %w", err)
	}

	return nil
}

func EditRequest(ctx context.Context, server *pserver.Server, user *api.User, request, response *pmsg.Bundle) error {

	req := &pstore.Payload_Edit_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	t := server.Type(req.DocumentType)
	if t == nil {
		api.Error(response, "Server error")
		return fmt.Errorf("type %q not found", req.DocumentType)
	}

	state, op, err := pstore.Edit(ctx, server, t, req.StateId, req.DocumentId, req.State, req.Op)
	if err != nil {
		api.Error(response, "Server error")
		return fmt.Errorf("pstore edit: %w", err)
	}

	response.MustSet(&pstore.Payload_Edit_Response{State: state, Op: op})

	if state%UPDATE_SNAPSHOT_FREQUENCY == 0 {
		refreshRequest := pmsg.New()
		refreshRequest.MustSet(&pstore.Payload_Refresh_Request{DocumentType: req.DocumentType, DocumentId: req.DocumentId})
		if _, err := TriggerRefreshTask(ctx, server, refreshRequest); err != nil {
			api.Error(response, "Server error")
			return fmt.Errorf("triggering refresh task: %w", err)
		}
	}

	return nil
}

func RefreshRequest(ctx context.Context, server *pserver.Server, user *api.User, request, response *pmsg.Bundle) error {

	req := &pstore.Payload_Refresh_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	t := server.Type(req.DocumentType)
	if t == nil {
		api.Error(response, "Server error")
		return fmt.Errorf("type %q not found", req.DocumentType)
	}

	if err := pstore.Refresh(ctx, server, t, req.DocumentId); err != nil {
		api.Error(response, "Server error")
		return fmt.Errorf("pstore refresh: %w", err)
	}

	return nil
}

func ShareListRequest(ctx context.Context, server *pserver.Server, user *api.User, request, response *pmsg.Bundle) error {

	if len(user.Shares) == 0 {
		response.MustSet(&messages.Share_List_Response{})
		return nil
	}

	docs, err := server.Firestore.Collection(SHARE_DOCUMENT_TYPE.CollectionName()).
		Query.
		Where(SHARE_DOCUMENT_TYPE.SnapshotFieldSelector("Id"), "in", user.Shares).
		Select("Name").
		Documents(server.FirestoreContext(ctx)).
		GetAll()
	if err != nil {
		return err
	}
	m := map[string]string{}
	for _, doc := range docs {
		snap := &data.ShareSnapshot{}
		if err := doc.DataTo(snap); err != nil {
			return err
		}
		m[doc.Ref.ID] = snap.Name
	}
	response.MustSet(&messages.Share_List_Response{Shares: user.Shares, Names: m})

	return nil
}

func TriggerRefreshTask(ctx context.Context, server *pserver.Server, message proto.Message) (*taskspb.Task, error) {

	client, err := cloudtasks.NewClient(ctx)
	if err != nil {
		return nil, fmt.Errorf("getting new cloudtasks client: %w", err)
	}

	body, err := proto.Marshal(message)
	if err != nil {
		return nil, fmt.Errorf("marshaling refresh message: %w", err)
	}

	req := &taskspb.CreateTaskRequest{
		Parent: fmt.Sprintf("projects/%s/locations/%s/queues/%s", server.Config.Project, server.Config.Location, server.Config.Queue),
		Task: &taskspb.Task{
			MessageType: &taskspb.Task_HttpRequest{
				HttpRequest: &taskspb.HttpRequest{
					HttpMethod: taskspb.HttpMethod_POST,
					Url:        server.Config.Prefix + "/",
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

var SHARE_DOCUMENT_TYPE = &pserver.DocumentType{
	Document: &data.Share{},
	PackSnapshot: func(ctx context.Context, s *pserver.Snapshot, old proto.Message, document proto.Message) (proto.Message, error) {
		var userId string
		if old != nil {
			// When refreshing a snapshot, this is done as a task, so we don't have a user... so copy from the old value.
			userId = old.(*data.Snapshot).User
		} else {
			userId = ctx.Value(UserContextKey).(*api.User).Id
		}
		return &data.ShareSnapshot{
			Value: s,
			User:  userId,
			Name:  document.(*data.Share).Name,
		}, nil
	},
	UnpackSnapshot: unpackSnapshot,
	PackState:      packState,
	UnpackState:    unpackState,
	StateField:     "Value",
	SnapshotField:  "Value",
	OnAdd: func(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, documentId string) error {
		user := ctx.Value(UserContextKey).(*api.User)
		ref, user, err := api.GetUser(ctx, server, tx, user.Id)
		if err != nil {
			return fmt.Errorf("verifying token: %w", err)
		}
		user.Shares = append(user.Shares, documentId)
		if err := tx.Set(ref, user); err != nil {
			return fmt.Errorf("setting updated user: %w", err)
		}
		return nil
	},
	PreEdit: func(ctx context.Context, server *pserver.Server, documentId string) error {
		user := ctx.Value(UserContextKey).(*api.User)
		var found bool
		for _, share := range user.Shares {
			if share == documentId {
				found = true
				break
			}
		}
		if !found {
			return errors.New("user does not have permission")
		}
		return nil
	},
}

func packState(ctx context.Context, s *pserver.State) (proto.Message, error) {
	user := ctx.Value(UserContextKey).(*api.User)
	return &data.State{
		Value: s,
		User:  user.Id,
	}, nil
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
