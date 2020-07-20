package auth

import (
	"context"
	"fmt"
	"math/rand"
	"strconv"
	"time"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/pserver"
	"google.golang.org/protobuf/proto"
)

func LoginRequest(ctx context.Context, requestBytes []byte) *messages.Login_Response {
	wrap := func(err error) *messages.Login_Response {
		return &messages.Login_Response{Err: api.Error(err)}
	}

	req := &messages.Login_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}
	t := time.Now().Unix()

	// TODO: Send an email with deep link
	fmt.Println(api.GenerateCode(req.Device, req.Email, t))

	return &messages.Login_Response{Time: fmt.Sprint(t)}
}

func TokenValidateRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) *messages.Token_Validate_Response {
	wrap := func(err error) *messages.Token_Validate_Response {
		return &messages.Token_Validate_Response{Err: api.Error(err)}
	}

	req := &messages.Token_Validate_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}

	_, _, err := api.GetUserVerify(ctx, server.Firestore, nil, req.Token)
	if err != nil {
		return wrap(api.UserError("Invalid login token", api.AuthErrorf("verifying token: %w", err)))
	}

	return &messages.Token_Validate_Response{}
}

func AuthRequest(ctx context.Context, server *pserver.Server, requestBytes []byte) *messages.Auth_Response {
	wrap := func(err error) *messages.Auth_Response {
		return &messages.Auth_Response{Err: api.Error(err)}
	}

	req := &messages.Auth_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return wrap(api.UserError("Corrupt input", fmt.Errorf("unmarshaling: %w", err)))
	}
	timeInt64, err := strconv.ParseInt(req.Time, 10, 64)
	if err != nil {
		return wrap(api.UserError("Corrupt input", api.AuthErrorf("parsing time: %w", err)))
	}
	code, err := api.GenerateCode(req.Device, req.Email, timeInt64)
	if err != nil {
		return wrap(api.UserError("Corrupt input", api.AuthErrorf("getting code: %w", err)))
	}
	if code != req.Code {
		return wrap(api.UserError("Wrong code", api.AuthErrorf("wrong code")))
	}
	if time.Unix(timeInt64, 0).Add(time.Minute * 30).Before(time.Now()) {
		return wrap(api.UserError("Code expired", api.ExpiredErrorf("code expired")))
	}

	// create or update user?
	user := &api.User{}
	var userRef *firestore.DocumentRef
	f := func(ctx context.Context, tx *firestore.Transaction) error {
		query := server.Firestore.Collection(api.USERS_COLLECTION).Where("email", "==", req.Email)
		users, err := tx.Documents(query).GetAll()
		if err != nil {
			return fmt.Errorf("selecting from users: %w", err)
		}
		if len(users) == 1 {
			userRef = users[0].Ref
			if err := users[0].DataTo(user); err != nil {
				return fmt.Errorf("unpacking user: %w", err)
			}
			return nil
		} else if len(users) > 1 {
			// TODO: should never happen - log this!
			return fmt.Errorf("%d users with email address %q", len(users), req.Email)
		}

		user = &api.User{Email: req.Email, Salt: randomString(30)}
		userRef = server.Firestore.Collection(api.USERS_COLLECTION).NewDoc()

		if err := tx.Set(userRef, user); err != nil {
			return fmt.Errorf("selecting from users: %w", err)
		}

		return nil

	}
	if err := server.Firestore.RunTransaction(ctx, f); err != nil {
		return wrap(api.UserError("Server error", fmt.Errorf("running user transaction: %w", err)))
	}

	hash, err := api.GenerateHash(userRef.ID, req.Device, user.Salt)
	if err != nil {
		return wrap(api.UserError("Corrupt data", api.AuthErrorf("getting hash: %w", err)))
	}

	return &messages.Auth_Response{Id: userRef.ID, Hash: hash}
}

var seededRand = rand.New(rand.NewSource(time.Now().UnixNano()))

func randomString(length int) string {
	const charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	b := make([]byte, length)
	for i := range b {
		b[i] = charset[seededRand.Intn(len(charset))]
	}
	return string(b)
}
