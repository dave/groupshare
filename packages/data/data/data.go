package data

import (
	"context"
	"fmt"

	cloudtasks "cloud.google.com/go/cloudtasks/apiv2"
	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/packages/auth/auth"
	data_proto "github.com/dave/groupshare/packages/data/data/proto"
	main_proto "github.com/dave/groupshare/packages/main/main/proto"
	"github.com/dave/protod/delta"
	"github.com/dave/protod/perr"
	"github.com/dave/protod/pmsg"
	"github.com/dave/protod/pserver"
	"github.com/dave/protod/pstore"
	"google.golang.org/api/iterator"
	taskspb "google.golang.org/genproto/googleapis/cloud/tasks/v2"
	"google.golang.org/protobuf/proto"
)

const UPDATE_SNAPSHOT_FREQUENCY = 100

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
			if op.Affects(data_proto.Op().Share().Name()) {
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
		refreshRequest := &pstore.Payload_Refresh_Request{DocumentType: req.DocumentType, DocumentId: req.DocumentId}
		if _, err := AddTask(ctx, server, refreshRequest); err != nil {
			return perr.Wrap(err).Debug("triggering refresh task")
		}
	}

	return nil
}

func RefreshRequest(ctx context.Context, server *pserver.Server, request *pmsg.Bundle) error {

	req := &pstore.Payload_Refresh_Request{}
	if _, err := request.Get(req); err != nil {
		return perr.Wrap(err).Debug("getting refresh request").Message("Invalid request")
	}

	if err := pstore.Refresh(ctx, server, req.DocumentType, pstore.DocumentId(req.DocumentId)); err != nil {
		return perr.Wrap(err).Debug("pstore refresh")
	}

	return nil
}

func ShareRemoveRequest(ctx context.Context, server *pserver.Server, user *auth.User, request, response *pmsg.Bundle) error {
	req := &main_proto.Share_Remove_Request{}
	if _, err := request.Get(req); err != nil {
		return perr.Wrap(err).Debug("getting request").Message("Invalid request")
	}

	f := func(ctx context.Context, tx *firestore.Transaction) error {

		found, err := removeShareFromUser(ctx, server, tx, user.Id, req.Id)
		if err != nil {
			return perr.Wrap(err).Debug("removing share")
		}
		if !found {
			return perr.Message("Document not found").Debug("share not found in user shares")
		}
		return nil

	}
	if err := server.Firestore.RunTransaction(server.FirestoreContext(ctx), f); err != nil {
		return perr.Wrap(err).Debug("running user transaction").Flag(pserver.Firestore)
	}
	return nil
}

func ShareDeleteRequest(ctx context.Context, server *pserver.Server, user *auth.User, request, response *pmsg.Bundle) error {
	req := &main_proto.Share_Delete_Request{}
	if _, err := request.Get(req); err != nil {
		return perr.Wrap(err).Debug("getting request").Message("Invalid request")
	}

	f := func(ctx context.Context, tx *firestore.Transaction) error {

		found, err := removeShareFromUser(ctx, server, tx, user.Id, req.Id)
		if err != nil {
			return perr.Wrap(err).Debug("removing share")
		}
		if !found {
			return perr.Debug("share not found in user shares").Message("Document not found")
		}

		ref := server.Firestore.Collection(SHARE_DOCUMENT_TYPE.CollectionName()).Doc(req.Id)
		if err := tx.Delete(ref); err != nil {
			return perr.Wrap(err).Debug("deleting share")
		}

		return nil

	}
	if err := server.Firestore.RunTransaction(server.FirestoreContext(ctx), f); err != nil {
		return perr.Wrap(err).Debug("running user transaction").Flag(pserver.Firestore)
	}

	if _, err := AddTask(ctx, server, &main_proto.Share_Delete_Task{Id: req.Id}); err != nil {
		return perr.Wrap(err).Debug("adding delete task")
	}

	return nil
}

func removeShareFromUser(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, userId, shareId string) (bool, error) {
	userRef, user, err := auth.GetUser(ctx, server, tx, userId)
	if err != nil {
		return false, perr.Wrap(err).Debug("getting user")
	}
	var shares []string
	var found bool
	for _, share := range user.Shares {
		if share == shareId {
			found = true
		} else {
			shares = append(shares, share)
		}
	}

	if !found {
		return false, nil
	}

	user.Shares = shares

	if err := tx.Set(userRef, user); err != nil {
		return true, perr.Wrap(err).Debug("firestore set").Flag(pserver.Firestore)
	}
	return true, nil
}

func ShareDeleteTask(ctx context.Context, server *pserver.Server, request *pmsg.Bundle) error {
	req := &main_proto.Share_Delete_Task{}
	if _, err := request.Get(req); err != nil {
		return perr.Wrap(err).Debug("getting request").Message("Invalid request")
	}

	collectionRef := server.Firestore.Collection(SHARE_DOCUMENT_TYPE.CollectionName()).Doc(req.Id).Collection(pserver.STATES_COLLECTION)

	if err := deleteCollection(ctx, server.Firestore, collectionRef, 100); err != nil {
		return perr.Wrap(err).Debug("deleting collection")
	}

	return nil
}

func deleteCollection(ctx context.Context, client *firestore.Client, ref *firestore.CollectionRef, batchSize int) error {
	for {
		// Get a batch of documents
		iter := ref.Limit(batchSize).Documents(ctx)
		numDeleted := 0

		// Iterate through the documents, adding
		// a delete operation for each one to a
		// WriteBatch.
		batch := client.Batch()
		for {
			doc, err := iter.Next()
			if err == iterator.Done {
				break
			}
			if err != nil {
				return err
			}

			batch.Delete(doc.Ref)
			numDeleted++
		}

		// If there are no documents to delete,
		// the process is over.
		if numDeleted == 0 {
			return nil
		}

		_, err := batch.Commit(ctx)
		if err != nil {
			return err
		}

		fmt.Println("*** DELETING STATES ***", numDeleted, "deleted")
	}
}

func ShareListRequest(ctx context.Context, server *pserver.Server, user *auth.User, request, response *pmsg.Bundle) error {

	if len(user.Shares) == 0 {
		response.MustSet(&main_proto.Share_List_Response{})
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

	var items []*main_proto.Share_List_Response_Item
	for _, doc := range docs {
		snap := &data_proto.ShareSnapshot{}
		if err := doc.DataTo(snap); err != nil {
			return perr.Wrap(err).Debug("unwrapping snapshot")
		}
		items = append(items, &main_proto.Share_List_Response_Item{Id: doc.Ref.ID, Name: snap.Name})
	}
	response.MustSet(&main_proto.Share_List_Response{Items: items})

	return nil
}

func AddTask(ctx context.Context, server *pserver.Server, message proto.Message) (*taskspb.Task, error) {

	client, err := cloudtasks.NewClient(ctx)
	if err != nil {
		return nil, perr.Wrap(err).Debug("getting new cloudtasks client").Flag(CloudTasks)
	}

	bundle := pmsg.New()
	if err := bundle.Set(message); err != nil {
		return nil, perr.Wrap(err).Debug("setting task message")
	}

	body, err := proto.Marshal(bundle)
	if err != nil {
		return nil, perr.Wrap(err).Debug("marshaling task message")
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
