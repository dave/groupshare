package auth

import (
	"context"
	"errors"
	"fmt"
	"math/rand"
	"strconv"
	"time"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/pmsg"
	"github.com/dave/protod/pserver"
	"google.golang.org/appengine"
)

func LoginRequest(ctx context.Context, request, response *pmsg.Bundle) error {

	req := &messages.Login_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	t := time.Now().Unix()

	// TODO: Send an email with deep link
	fmt.Println(api.GenerateCode(req.Device, req.Email, t))

	response.MustSet(&messages.Login_Response{Time: fmt.Sprint(t)})

	return nil
}

func AuthRequest(ctx context.Context, server *pserver.Server, request, response *pmsg.Bundle) error {

	req := &messages.Auth_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	timeInt64, err := strconv.ParseInt(req.Time, 10, 64)
	if err != nil {
		api.AuthError(response, "Invalid input")
		return fmt.Errorf("parsing time: %w", err)
	}
	code, err := api.GenerateCode(req.Device, req.Email, timeInt64)
	if err != nil {
		api.AuthError(response, "Invalid input")
		return fmt.Errorf("getting code: %w", err)
	}
	checkCode := true
	if req.Test {
		// the client is requesting that we skip the code check. This should throw an error
		// in production environments
		if appengine.IsAppEngine() {
			api.Error(response, "Invalid input")
			return errors.New("test flag set in production")
		}
		checkCode = false
	}
	if checkCode && code != req.Code {
		api.AuthError(response, "Wrong code")
		return errors.New("wrong code")
	}
	if time.Unix(timeInt64, 0).Add(time.Minute * 30).Before(time.Now()) {
		api.ExpiredError(response, "Code expired")
		return errors.New("code expired")
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

		userRef = server.Firestore.Collection(api.USERS_COLLECTION).NewDoc()
		user = &api.User{Id: userRef.ID, Email: req.Email, Salt: randomString(30)}

		if err := tx.Set(userRef, user); err != nil {
			return fmt.Errorf("selecting from users: %w", err)
		}

		return nil

	}
	if err := server.Firestore.RunTransaction(server.FirestoreContext(ctx), f); err != nil {
		api.Error(response, "Server error")
		return fmt.Errorf("running user transaction: %w", err)
	}

	hash, err := api.GenerateHash(userRef.ID, req.Device, user.Salt)
	if err != nil {
		api.Error(response, "Server error")
		return fmt.Errorf("getting hash: %w", err)
	}

	response.MustSet(&messages.Auth_Response{Id: userRef.ID, Hash: hash})
	return nil
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
