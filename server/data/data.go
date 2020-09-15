package data

import (
	"context"
	"fmt"

	cloudtasks "cloud.google.com/go/cloudtasks/apiv2"
	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/auth"
	"github.com/dave/groupshare/server/messages"
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

func GetRequest(ctx context.Context, server *pserver.Server, user *auth.User, request, response *pmsg.Bundle) error {

	req := &pstore.Payload_Get_Request{}
	if _, err := request.Get(req); err != nil {
		return perr.Wrap(err).Debug("getting get request").Message("Invalid request")
	}

	state, document, err := pstore.Get(ctx, server, req.DocumentType, pstore.DocumentId(req.DocumentId), req.Create)
	if err != nil {
		return perr.Wrap(err).Debug("pstore get")
	}

	value, err := delta.MarshalAny(document)
	if err != nil {
		return perr.Wrap(err).Debug("marshaling document")
	}

	response.MustSet(&pstore.Payload_Get_Response{State: state, Value: value})

	return nil

}

func EditRequest(ctx context.Context, server *pserver.Server, user *auth.User, request, response *pmsg.Bundle) error {

	req := &pstore.Payload_Edit_Request{}
	if _, err := request.Get(req); err != nil {
		return perr.Wrap(err).Debug("getting edit request").Message("Invalid request")
	}

	var refresh bool
	if req.DocumentType == SHARE_DOCUMENT_TYPE.Type() {
		// TODO: this isn't ideal...
		for _, op := range req.Op.Flatten() {
			if op.Affects(Op().Share().Name()) {
				refresh = true
				break
			}
		}
	}

	state, op, err := pstore.Edit(ctx, server, req.DocumentType, pstore.DocumentId(req.DocumentId), pstore.StateId(req.StateId), req.State, req.Op)
	if err != nil {
		return perr.Wrap(err).Debug("pstore edit")
	}

	response.MustSet(&pstore.Payload_Edit_Response{State: state, Op: op})

	if refresh {
		if err := pstore.Refresh(ctx, server, req.DocumentType, pstore.DocumentId(req.DocumentId)); err != nil {
			return perr.Wrap(err).Debug("pstore refresh")
		}
	} else if state%UPDATE_SNAPSHOT_FREQUENCY == 0 {
		refreshRequest := pmsg.New()
		refreshRequest.MustSet(&pstore.Payload_Refresh_Request{DocumentType: req.DocumentType, DocumentId: req.DocumentId})
		if _, err := TriggerRefreshTask(ctx, server, refreshRequest); err != nil {
			return perr.Wrap(err).Debug("triggering refresh task")
		}
	}

	return nil
}

func RefreshRequest(ctx context.Context, server *pserver.Server, request, response *pmsg.Bundle) error {

	req := &pstore.Payload_Refresh_Request{}
	if _, err := request.Get(req); err != nil {
		return perr.Wrap(err).Debug("getting refresh request").Message("Invalid request")
	}

	if err := pstore.Refresh(ctx, server, req.DocumentType, pstore.DocumentId(req.DocumentId)); err != nil {
		return perr.Wrap(err).Debug("pstore refresh")
	}

	return nil
}

func ShareListRequest(ctx context.Context, server *pserver.Server, user *auth.User, request, response *pmsg.Bundle) error {

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
		return perr.Wrap(err).Debug("firestore get all").Flag(pserver.Firestore)
	}

	var items []*messages.Share_List_Response_Item
	for _, doc := range docs {
		snap := &ShareSnapshot{}
		if err := doc.DataTo(snap); err != nil {
			return perr.Wrap(err).Debug("unwrapping snapshot")
		}
		items = append(items, &messages.Share_List_Response_Item{Id: doc.Ref.ID, Name: snap.Name})
	}
	response.MustSet(&messages.Share_List_Response{Items: items})

	return nil
}

func TriggerRefreshTask(ctx context.Context, server *pserver.Server, message proto.Message) (*taskspb.Task, error) {

	client, err := cloudtasks.NewClient(ctx)
	if err != nil {
		return nil, perr.Wrap(err).Debug("getting new cloudtasks client").Flag(CloudTasks)
	}

	body, err := proto.Marshal(message)
	if err != nil {
		return nil, perr.Wrap(err).Debug("marshaling refresh message")
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
		return nil, perr.Wrap(err).Debug("creating task").Flag(CloudTasks)
	}

	return task, nil

}

var (
	CloudTasks = perr.NewFlag("cloud tasks")
)
