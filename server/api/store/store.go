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
	datapb "github.com/dave/groupshare/server/pb/data"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/delta"
	"github.com/dave/protod/perr"
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

	state, document, err := pstore.Get(ctx, server, req.DocumentType, pstore.DocumentId(req.DocumentId), req.Create)
	if err != nil {
		api.Error(response, "Server error")
		return perr.Wrap(err, "pstore get")
	}

	value, err := delta.MarshalAny(document)
	if err != nil {
		api.Error(response, "Server error")
		return perr.Wrap(err, "marshaling document")
	}

	response.MustSet(&pstore.Payload_Get_Response{State: state, Value: value})

	return nil

}

func EditRequest(ctx context.Context, server *pserver.Server, user *api.User, request, response *pmsg.Bundle) error {

	if rand.Float64() > 0.5 {
		time.Sleep(time.Second)
		return pserver.ServerBusy
	}

	req := &pstore.Payload_Edit_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	var refresh bool
	if req.DocumentType == SHARE_DOCUMENT_TYPE.Type() {
		// TODO: this isn't ideal...
		for _, op := range req.Op.Flatten() {
			if op.Affects(datapb.Op().Share().Name()) {
				refresh = true
				break
			}
		}
	}

	state, op, err := pstore.Edit(ctx, server, req.DocumentType, pstore.DocumentId(req.DocumentId), pstore.StateId(req.StateId), req.State, req.Op)
	if err != nil {
		api.Error(response, "Server error")
		return perr.Wrap(err, "pstore edit")
	}

	response.MustSet(&pstore.Payload_Edit_Response{State: state, Op: op})

	if refresh {
		if err := pstore.Refresh(ctx, server, req.DocumentType, pstore.DocumentId(req.DocumentId)); err != nil {
			api.Error(response, "Server error")
			return perr.Wrap(err, "pstore refresh")
		}
	} else if state%UPDATE_SNAPSHOT_FREQUENCY == 0 {
		refreshRequest := pmsg.New()
		refreshRequest.MustSet(&pstore.Payload_Refresh_Request{DocumentType: req.DocumentType, DocumentId: req.DocumentId})
		if _, err := TriggerRefreshTask(ctx, server, refreshRequest); err != nil {
			api.Error(response, "Server error")
			return perr.Wrap(err, "triggering refresh task")
		}
	}

	return nil
}

func RefreshRequest(ctx context.Context, server *pserver.Server, request, response *pmsg.Bundle) error {

	req := &pstore.Payload_Refresh_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	if err := pstore.Refresh(ctx, server, req.DocumentType, pstore.DocumentId(req.DocumentId)); err != nil {
		api.Error(response, "Server error")
		return perr.Wrap(err, "pstore refresh")
	}

	return nil
}

func ShareListRequest(ctx context.Context, server *pserver.Server, user *api.User, request, response *pmsg.Bundle) error {

	if len(user.Shares) == 0 {
		response.MustSet(&messages.Share_List_Response{})
		return nil
	}

	shares := make([]*firestore.DocumentRef, len(user.Shares))
	for i, share := range user.Shares {
		shares[i] = server.Firestore.Collection(SHARE_DOCUMENT_TYPE.CollectionName()).Doc(share)
	}

	docs, err := server.Firestore.GetAll(ctx, shares)
	if err != nil {
		return err
	}

	var items []*messages.Share_List_Response_Item
	for _, doc := range docs {
		snap := &data.ShareSnapshot{}
		if err := doc.DataTo(snap); err != nil {
			return err
		}
		items = append(items, &messages.Share_List_Response_Item{Id: doc.Ref.ID, Name: snap.Name})
	}
	response.MustSet(&messages.Share_List_Response{Items: items})

	return nil
}

func TriggerRefreshTask(ctx context.Context, server *pserver.Server, message proto.Message) (*taskspb.Task, error) {

	client, err := cloudtasks.NewClient(ctx)
	if err != nil {
		return nil, perr.Wrap(err, "getting new cloudtasks client")
	}

	body, err := proto.Marshal(message)
	if err != nil {
		return nil, perr.Wrap(err, "marshaling refresh message")
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
		return nil, perr.Wrap(err, "creating task")
	}

	return task, nil

}

var USER_DOCUMENT_TYPE = &pserver.DocumentType{
	Document: &datapb.User{},
}

var SHARE_DOCUMENT_TYPE = &pserver.DocumentType{
	Document: &datapb.Share{},
	Snapshot: &data.ShareSnapshot{},
	State:    &data.State{},
	PackSnapshot: func(ctx context.Context, s *pserver.Snapshot, old proto.Message, document proto.Message) (proto.Message, error) {
		var userId string
		if old != nil {
			// When refreshing a snapshot, this is done as a task, so we don't have a user... so copy from the old value.
			userId = old.(*data.ShareSnapshot).User
		} else {
			userId = ctx.Value(UserContextKey).(*api.User).Id
		}
		return &data.ShareSnapshot{
			Value: s,
			User:  userId,
			Name:  document.(*datapb.Share).Name,
		}, nil
	},
	UnpackSnapshot: func(snap proto.Message) (*pserver.Snapshot, error) {
		return snap.(*data.ShareSnapshot).Value, nil
	},
	PackState:       statePacker,
	UnpackState:     stateUnpacker,
	StateQueryField: stateQueryField,
	OnAdd: func(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, documentId string) error {
		user := ctx.Value(UserContextKey).(*api.User)
		ref, user, err := api.GetUser(ctx, server, tx, user.Id)
		if err != nil {
			return perr.Wrap(err, "verifying token")
		}
		user.Shares = append(user.Shares, documentId)
		if err := tx.Set(ref, user); err != nil {
			return perr.Wrap(err, "setting updated user")
		}
		return nil
	},
	OnGet: func(ctx context.Context, server *pserver.Server, id string) error {
		return checkSharePermission(ctx, id)
	},
	OnEdit: func(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, id string) error {
		return checkSharePermission(ctx, id)
	},
}

func checkSharePermission(ctx context.Context, documentId string) error {
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
}

func snapshotPacker(ctx context.Context, s *pserver.Snapshot, old proto.Message, document proto.Message) (proto.Message, error) {
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
		Name:  document.(*datapb.Share).Name,
	}, nil
}

func snapshotUnpacker(snap proto.Message) (*pserver.Snapshot, error) {
	return snap.(*data.Snapshot).Value, nil
}

func statePacker(ctx context.Context, s *pserver.State) (proto.Message, error) {
	user := ctx.Value(UserContextKey).(*api.User)
	return &data.State{Value: s, User: user.Id}, nil
}

func stateUnpacker(state proto.Message) (*pserver.State, error) {
	return state.(*data.State).Value, nil
}

const stateQueryField = "Value.State"
