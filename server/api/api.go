package api

import (
	"context"
	"crypto/sha1"
	"encoding/binary"
	"encoding/json"
	"fmt"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
)

const (
	DEV_ENV           = true
	USERS_COLLECTION  = "users"
	SHARES_COLLECTION = "shares"
)

type User struct {
	Email  string   `firestore:"email"`
	Salt   string   `firestore:"salt"` // random string for auth token. change this to log this user out on all devices.
	Shares []string `firestore:"shares"`
}

func Error(errorType messages.Error_Type, message string, err error) *messages.Error {
	if DEV_ENV {
		message += fmt.Sprintf("\n[%+v]", err)
	}
	return &messages.Error{Message: message, Type: errorType}
}

//func Error(t messages.Error_Type, message string) *messages.Error {
//	errorType := messages.Error_ERROR
//	if expiredErr := new(ExpiredErrorStruct); errors.As(err, expiredErr) {
//		errorType = messages.Error_EXPIRED
//	} else if authErr := new(AuthErrorStruct); errors.As(err, authErr) {
//		errorType = messages.Error_AUTH
//	}
//	message := "Server error"
//	if userErr := new(UserErrorStruct); errors.As(err, userErr) {
//		message = userErr.Message()
//	}
//	if DEV_ENV {
//		message += fmt.Sprintf("\n[%+v]", err)
//	}
//	return &messages.Error{Message: message, Type: errorType}
//}

func GetUserVerify(ctx context.Context, client *firestore.Client, tx *firestore.Transaction, token *messages.Token) (*firestore.DocumentRef, *User, error) {
	ref := client.Collection(USERS_COLLECTION).Doc(token.Id)
	var snap *firestore.DocumentSnapshot
	var err error
	if tx == nil {
		snap, err = ref.Get(ctx)
	} else {
		snap, err = tx.Get(ref)
	}
	if err != nil {
		return nil, nil, fmt.Errorf("getting user: %w", err)
	}
	user := &User{}
	if err := snap.DataTo(user); err != nil {
		return nil, nil, fmt.Errorf("unmarshaling user: %w", err)
	}
	hash, err := GenerateHash(token.Id, token.Device, user.Salt)
	if err != nil {
		return nil, nil, fmt.Errorf("generating token: %w", err)
	}
	if hash != token.Hash {
		return nil, nil, fmt.Errorf("hash doesn't match")
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
		return "", fmt.Errorf("marshaling code: %w", err)
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
		return "", fmt.Errorf("marshaling token: %w", err)
	}
	s := sha1.New()
	s.Write(b)
	hash := s.Sum(nil)
	return fmt.Sprintf("%x", hash), nil
}

//func UserError(message string, err error) UserErrorStruct {
//	return UserErrorStruct{
//		message: message,
//		err:     err,
//	}
//}
//func AuthErrorf(format string, a ...interface{}) AuthErrorStruct {
//	return AuthErrorStruct{
//		err: fmt.Errorf(format, a...),
//	}
//}
//func ExpiredErrorf(format string, a ...interface{}) ExpiredErrorStruct {
//	return ExpiredErrorStruct{
//		err: fmt.Errorf(format, a...),
//	}
//}

//type UserErrorStruct struct {
//	message string
//	err     error
//}
//type AuthErrorStruct struct {
//	err error
//}
//type ExpiredErrorStruct struct {
//	err error
//}
//
//func (a UserErrorStruct) Message() string {
//	return a.message
//}
//func (a UserErrorStruct) Error() string {
//	return a.err.Error()
//}
//func (a AuthErrorStruct) Error() string {
//	return a.err.Error()
//}
//func (a ExpiredErrorStruct) Error() string {
//	return a.err.Error()
//}
//func (a UserErrorStruct) Unwrap() error {
//	return a.err
//}
//func (a AuthErrorStruct) Unwrap() error {
//	return a.err
//}
//func (a ExpiredErrorStruct) Unwrap() error {
//	return a.err
//}
