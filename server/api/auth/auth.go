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
	"github.com/dave/groupshare/server/pb/auth"
	"github.com/dave/protod/perr"
	"github.com/dave/protod/pmsg"
	"github.com/dave/protod/pserver"
	"google.golang.org/appengine"
	"google.golang.org/appengine/mail"
)

func LoginRequest(ctx context.Context, request, response *pmsg.Bundle) error {

	req := &auth.Login_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	t := time.Now().Unix()

	code, err := api.GenerateCode(req.Device, req.Email, t)
	if err != nil {
		api.Error(response, "Server error")
		return err
	}

	if appengine.IsAppEngine() {
		msg := &mail.Message{
			Sender:  "Dave Brophy <dave@davidbrophy.com>",
			To:      []string{req.Email},
			Subject: "Group Share login code",
			Body:    fmt.Sprintf("This is your code: %v", code),
		}
		if err := mail.Send(ctx, msg); err != nil {
			api.Error(response, "Server error")
			return err
		}
	} else {
		fmt.Println("code", code)
	}

	response.MustSet(&auth.Login_Response{Time: fmt.Sprint(t)})

	return nil
}

func CodeRequest(ctx context.Context, server *pserver.Server, request, response *pmsg.Bundle) error {

	req := &auth.Code_Request{}
	if _, err := request.Get(req); err != nil {
		api.Error(response, "Invalid input")
		return err
	}

	timeInt64, err := strconv.ParseInt(req.Time, 10, 64)
	if err != nil {
		api.AuthError(response, "Invalid input")
		return perr.Wrap(err, "parsing time")
	}
	code, err := api.GenerateCode(req.Device, req.Email, timeInt64)
	if err != nil {
		api.AuthError(response, "Invalid input")
		return perr.Wrap(err, "getting code")
	}
	checkCode := true
	if req.Test {
		// the client is requesting that we skip the code check. This should only work in dev env.
		if !appengine.IsAppEngine() {
			checkCode = false
		}
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
			return perr.Wrap(err, "selecting from users")
		}
		if len(users) == 1 {
			userRef = users[0].Ref
			if err := users[0].DataTo(user); err != nil {
				return perr.Wrap(err, "unpacking user")
			}
			return nil
		} else if len(users) > 1 {
			// TODO: should never happen - log this!
			return fmt.Errorf("%d users with email address %q", len(users), req.Email)
		}

		userRef = server.Firestore.Collection(api.USERS_COLLECTION).NewDoc()
		user = &api.User{Id: userRef.ID, Email: req.Email, Salt: randomString(30)}

		if err := tx.Set(userRef, user); err != nil {
			return perr.Wrap(err, "selecting from users")
		}

		return nil

	}
	if err := server.Firestore.RunTransaction(server.FirestoreContext(ctx), f); err != nil {
		api.Error(response, "Server error")
		return perr.Wrap(err, "running user transaction")
	}

	hash, err := api.GenerateHash(userRef.ID, req.Device, user.Salt)
	if err != nil {
		api.Error(response, "Server error")
		return perr.Wrap(err, "getting hash")
	}

	response.MustSet(&auth.Code_Response{Id: userRef.ID, Hash: hash})
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
