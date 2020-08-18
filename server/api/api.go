package api

import (
	"context"
	"crypto/sha1"
	"encoding/binary"
	"encoding/json"
	"errors"
	"fmt"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/pb/api"
	"github.com/dave/groupshare/server/pb/auth"
	"github.com/dave/protod/perr"
	"github.com/dave/protod/pmsg"
	"github.com/dave/protod/pserver"
)

const (
	DEV_ENV          = true
	USERS_COLLECTION = "users"
)

type User struct {
	Id     string   `firestore:"id"`
	Email  string   `firestore:"email"`
	Salt   string   `firestore:"salt"` // random string for auth token. change this to log this user out on all devices.
	Shares []string `firestore:"shares"`
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
		return nil, nil, perr.Wrap(err, "getting user record")
	}
	user := &User{}
	if err := snap.DataTo(user); err != nil {
		return nil, nil, perr.Wrap(err, "unmarshaling user")
	}
	return ref, user, nil
}

func GetUserVerify(ctx context.Context, server *pserver.Server, tx *firestore.Transaction, token *auth.Token) (*firestore.DocumentRef, *User, error) {
	ref, user, err := GetUser(ctx, server, tx, token.Id)
	if err != nil {
		return nil, nil, perr.Wrap(err, "getting user")
	}
	hash, err := GenerateHash(token.Id, token.Device, user.Salt)
	if err != nil {
		return nil, nil, perr.Wrap(err, "generating token")
	}
	if hash != token.Hash {
		return nil, nil, errors.New("hash doesn't match")
	}
	return ref, user, nil
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
		return "", perr.Wrap(err, "marshaling code")
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
		return "", perr.Wrap(err, "marshaling token")
	}
	s := sha1.New()
	s.Write(b)
	hash := s.Sum(nil)
	return fmt.Sprintf("%x", hash), nil
}

func Error(response *pmsg.Bundle, message string) {
	response.MustSet(&api.Error{
		Type:    api.Error_ERROR,
		Message: message,
	})
}

func AuthError(response *pmsg.Bundle, message string) {
	response.MustSet(&api.Error{
		Type:    api.Error_AUTH,
		Message: message,
	})
}

func ExpiredError(response *pmsg.Bundle, message string) {
	response.MustSet(&api.Error{
		Type:    api.Error_EXPIRED,
		Message: message,
	})
}
