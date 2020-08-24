package data

import (
	"context"
	"errors"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/auth"
	"github.com/dave/protod/perr"
	"github.com/dave/protod/pserver"
	"google.golang.org/protobuf/proto"
)

var SHARE_DOCUMENT_TYPE = &pserver.DocumentType{
	Document: &Share{},
	Snapshot: &ShareSnapshot{},
	State:    &State{},
	OnAdd: func(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, id string) error {
		user := ctx.Value(UserContextKey).(*auth.User)
		ref, user, err := auth.GetUser(ctx, server, tx, user.Id)
		if err != nil {
			return perr.Wrap(err, "verifying token")
		}
		user.Shares = append(user.Shares, id)
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
	user := ctx.Value(UserContextKey).(*auth.User)
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

func (s *ShareSnapshot) PackSnapshot(ctx context.Context, state int64, value pserver.BlobInterface, previous, document proto.Message) error {

	s.State = state
	s.Value = value.(*pserver.Blob)

	if previous != nil {
		// When refreshing a snapshot, this is done as a task, so we don't have a user... so copy from the old value.
		s.User = previous.(*ShareSnapshot).User
	} else {
		s.User = ctx.Value(UserContextKey).(*auth.User).Id
	}

	s.Name = document.(*Share).Name

	return nil
}

func (s *ShareSnapshot) UnpackSnapshot(ctx context.Context) (state int64, value pserver.BlobInterface, err error) {
	return s.State, s.Value, nil
}
