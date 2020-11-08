package data

import (
	"context"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/packages/auth/pkg/auth"
	"github.com/dave/protod/packages/perr/pkg/perr"
	"github.com/dave/protod/packages/pserver/pkg/pserver"
)

var SHARE_DOCUMENT_TYPE = &pserver.DocumentType{
	Document: &Share{},
	Snapshot: &ShareSnapshot{},
	State:    &State{},
	OnAdd: func(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, id string) error {
		user := ctx.Value(UserContextKey).(*auth.User)
		ref, user, err := auth.GetUser(ctx, server, tx, user.Id)
		if err != nil {
			return perr.Wrap(err).Debug("verifying token").Flag(perr.Auth)
		}
		user.Shares = append(user.Shares, id)
		if err := tx.Set(ref, user); err != nil {
			return perr.Wrap(err).Debug("setting updated user").Flag(pserver.Firestore)
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
		return perr.Debug("user does not have permission")
	}
	return nil
}
