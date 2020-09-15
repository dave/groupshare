package auth

import (
	"context"
	"crypto/sha1"
	"encoding/binary"
	"encoding/json"
	"fmt"
	"math/rand"
	"strconv"
	"time"

	"cloud.google.com/go/firestore"
	"github.com/dave/protod/perr"
	"github.com/dave/protod/pmsg"
	"github.com/dave/protod/pserver"
	"google.golang.org/appengine"
	"google.golang.org/appengine/mail"
)

const USERS_COLLECTION = "users"

type User struct {
	Id     string   `firestore:"id"`
	Email  string   `firestore:"email"`
	Salt   string   `firestore:"salt"` // random string for auth token. change this to log this user out on all devices.
	Shares []string `firestore:"shares"`
}

func GenerateCode(device, email string, time int64) (string, error) {
	// TODO: Change this secret and put it somewhere private before launch.
	const SECRET = "giuqtycuciuxbxziubzxuidsihnsdfjdnndsoimxosjoasuhieuhbck"
	const VERSION = 4
	type dataType struct {
		Version int
		Secret  string
		Time    int64
		Device  string
		Email   string
	}
	d := dataType{
		Version: VERSION,
		Secret:  SECRET,
		Time:    time,
		Device:  device,
		Email:   email,
	}
	b, err := json.Marshal(d)
	if err != nil {
		return "", perr.Wrap(err).Debug("marshaling code")
	}
	s := sha1.New()
	s.Write(b)
	hash := s.Sum(nil)
	return fmt.Sprintf("%d", binary.LittleEndian.Uint16(hash)), nil
}

func GenerateHash(id, device, salt string) (string, error) {
	// TODO: Change this secret and put it somewhere private before launch.
	const SECRET = "vhodifusrthklnxcvldsfngufvwiuhfeimbgnhojdcihbsxbih"
	const VERSION = 4
	type dataType struct {
		Version int
		Secret  string
		Device  string
		Id      string
		Salt    string
	}
	d := dataType{
		Version: VERSION,
		Secret:  SECRET,
		Device:  device,
		Id:      id,
		Salt:    salt,
	}
	b, err := json.Marshal(d)
	if err != nil {
		return "", perr.Wrap(err).Debug("marshaling token")
	}
	s := sha1.New()
	s.Write(b)
	hash := s.Sum(nil)
	return fmt.Sprintf("%x", hash), nil
}

func GetUser(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, id string) (*firestore.DocumentRef, *User, error) {
	ref := server.Firestore.Collection(USERS_COLLECTION).Doc(id)
	var snap *firestore.DocumentSnapshot
	var err error
	if tx == nil {
		snap, err = ref.Get(server.FirestoreContext(ctx))
	} else {
		snap, err = tx.Get(ref)
	}
	if err != nil {
		return nil, nil, perr.Wrap(err).Debug("getting user record").Flag(pserver.Firestore)
	}
	user := &User{}
	if err := snap.DataTo(user); err != nil {
		return nil, nil, perr.Wrap(err).Debug("unwrapping user")
	}
	return ref, user, nil
}

func GetUserVerify(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, token *Token) (*firestore.DocumentRef, *User, error) {
	ref, user, err := GetUser(ctx, server, tx, token.Id)
	if err != nil {
		return nil, nil, perr.Wrap(err).Debug("getting user")
	}
	hash, err := GenerateHash(token.Id, token.Device, user.Salt)
	if err != nil {
		return nil, nil, perr.Wrap(err).Debug("generating token")
	}
	if hash != token.Hash {
		return nil, nil, perr.Debug("hash doesn't match")
	}
	return ref, user, nil
}

func LoginRequest(ctx context.Context, request, response *pmsg.Bundle) error {

	req := &Login_Request{}
	if _, err := request.Get(req); err != nil {
		return perr.Wrap(err).Debug("getting login request").Message("Invalid request")
	}

	t := time.Now().Unix()

	code, err := GenerateCode(req.Device, req.Email, t)
	if err != nil {
		return perr.Wrap(err).Debug("generating code")
	}

	if appengine.IsAppEngine() {
		msg := &mail.Message{
			Sender:  "Dave Brophy <dave@davidbrophy.com>",
			To:      []string{req.Email},
			Subject: "Group Share login code",
			Body:    fmt.Sprintf("This is your code: %v", code),
		}
		if err := mail.Send(ctx, msg); err != nil {
			return perr.Wrap(err).Debug("sending email")
		}
	} else {
		fmt.Println("code", code)
	}

	response.MustSet(&Login_Response{Time: fmt.Sprint(t)})

	return nil
}

func CodeRequest(ctx context.Context, server *pserver.Server, request, response *pmsg.Bundle) error {

	req := &Code_Request{}
	if _, err := request.Get(req); err != nil {
		return perr.Wrap(err).Debug("getting code request").Message("Invalid request")
	}

	timeInt64, err := strconv.ParseInt(req.Time, 10, 64)
	if err != nil {
		return perr.Wrap(err).Debug("parsing time").Flag(perr.Auth).Message("Invalid request")
	}
	code, err := GenerateCode(req.Device, req.Email, timeInt64)
	if err != nil {
		return perr.Wrap(err).Debug("generating code").Flag(perr.Auth).Message("Invalid request")
	}
	checkCode := true
	if req.Test {
		// the client is requesting that we skip the code check. This should only work in dev env.
		// TODO: put this check back in at some point
		//if !appengine.IsAppEngine() {
		//	checkCode = false
		//}
		checkCode = false
	}
	if checkCode && code != req.Code {
		return perr.Debug("wrong code").Message("Wrong code").Flag(perr.Auth)
	}
	if time.Unix(timeInt64, 0).Add(time.Minute * 60).Before(time.Now()) {
		return perr.Debug("code expired").Message("Code expired").Flag(perr.Auth, perr.Expired)
	}

	// create or update user?
	user := &User{}
	var userRef *firestore.DocumentRef
	f := func(ctx context.Context, tx *firestore.Transaction) error {
		query := server.Firestore.Collection(USERS_COLLECTION).Where("email", "==", req.Email)
		users, err := tx.Documents(query).GetAll()
		if err != nil {
			return perr.Wrap(err).Debug("selecting from users").Flag(pserver.Firestore)
		}
		if len(users) == 1 {
			userRef = users[0].Ref
			if err := users[0].DataTo(user); err != nil {
				return perr.Wrap(err).Debug("unwrapping user")
			}
			return nil
		} else if len(users) > 1 {
			// TODO: should never happen - log this!
			return perr.Debugf("%d users with email address %q", len(users), req.Email)
		}

		userRef = server.Firestore.Collection(USERS_COLLECTION).NewDoc()
		user = &User{Id: userRef.ID, Email: req.Email, Salt: randomString(30)}

		if err := tx.Set(userRef, user); err != nil {
			return perr.Wrap(err).Debug("firestore set").Flag(pserver.Firestore)
		}

		return nil

	}
	if err := server.Firestore.RunTransaction(server.FirestoreContext(ctx), f); err != nil {
		return perr.Wrap(err).Debug("running user transaction").Flag(pserver.Firestore)
	}

	hash, err := GenerateHash(userRef.ID, req.Device, user.Salt)
	if err != nil {
		return perr.Wrap(err).Debug("getting hash")
	}

	response.MustSet(&Code_Response{Id: userRef.ID, Hash: hash})
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
