package data

import (
	"context"
	"errors"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/auth"
	"github.com/dave/protod/pserver"
)

var USER_DOCUMENT_TYPE = &pserver.DocumentType{
	Document: &User{},
	Snapshot: &Snapshot{},
	State:    &State{},
	OnAdd: func(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, id string) error {
		return checkUserPermission(ctx, id)
	},
	OnGet: func(ctx context.Context, server *pserver.Server, id string) error {
		return checkUserPermission(ctx, id)
	},
	OnEdit: func(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, id string) error {
		return checkUserPermission(ctx, id)
	},
}

func checkUserPermission(ctx context.Context, documentId string) error {
	user := ctx.Value(UserContextKey).(*auth.User)
	if user.Id != documentId {
		return errors.New("user does not have permission")
	}
	return nil
}
