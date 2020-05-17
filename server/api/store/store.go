package store

import (
	"context"
	"fmt"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"google.golang.org/protobuf/proto"
)

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
