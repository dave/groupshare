package auth

import (
	"crypto/sha1"
	"encoding/binary"
	"encoding/json"
	"fmt"
	"strconv"
	"time"

	"github.com/dave/groupshare/server/pb/messages"
	"google.golang.org/protobuf/proto"
)

func LoginRequest(requestBytes []byte) proto.Message {
	req := &messages.Login_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return &messages.Login_Response{Err: &messages.Error{Message: "Corrupt input"}}
	}
	t := time.Now().Unix()

	// TODO: Send an email with deep link
	fmt.Println(code(req.Device, req.Email, t))

	return &messages.Login_Response{Time: fmt.Sprint(t)}
}

func AuthRequest(requestBytes []byte) proto.Message {
	req := &messages.Auth_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return &messages.Auth_Response{Err: &messages.Error{Message: "Corrupt input"}}
	}
	timeInt64, err := strconv.ParseInt(req.Time, 10, 64)
	if err != nil {
		return &messages.Auth_Response{Err: &messages.Error{Type: messages.Error_AUTH_ERROR, Message: "Corrupt data"}}
	}
	token, code, err := code(req.Device, req.Email, timeInt64)
	if err != nil {
		return &messages.Auth_Response{Err: &messages.Error{Type: messages.Error_AUTH_ERROR, Message: "Corrupt data"}}
	}
	if code != req.Code {
		return &messages.Auth_Response{Err: &messages.Error{Type: messages.Error_AUTH_ERROR, Message: "Wrong code"}}
	}
	if time.Unix(timeInt64, 0).Add(time.Minute * 30).Before(time.Now()) {
		return &messages.Auth_Response{Err: &messages.Error{Type: messages.Error_AUTH_EXPIRED, Message: "Code expired"}}
	}
	return &messages.Auth_Response{Token: token}
}

func TokenRequest(requestBytes []byte) proto.Message {
	req := &messages.Token_Request{}
	if err := proto.Unmarshal(requestBytes, req); err != nil {
		return &messages.Token_Response{Err: &messages.Error{Message: "Corrupt input"}}
	}
	timeInt64, err := strconv.ParseInt(req.Time, 10, 64)
	if err != nil {
		return &messages.Token_Response{Err: &messages.Error{Type: messages.Error_AUTH_ERROR, Message: "Corrupt data"}}
	}
	token, _, err := code(req.Device, req.Email, timeInt64)
	if err != nil {
		return &messages.Token_Response{Err: &messages.Error{Type: messages.Error_AUTH_ERROR, Message: "Corrupt data"}}
	}
	if token != req.Token {
		return &messages.Token_Response{Err: &messages.Error{Type: messages.Error_AUTH_ERROR, Message: "Wrong token"}}
	}
	return &messages.Token_Response{Ok: true}
}

func code(device, email string, time int64) (string, string, error) {
	// TODO: Change this secret and put it somewhere private before launch.
	const SECRET = "vhodifusrthklnxcvldsfngufvwiuhfeimbgnhojdcihbsxbih"
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
		return "", "", fmt.Errorf("marshaling code: %w", err)
	}
	s := sha1.New()
	s.Write(b)
	hash := s.Sum(nil)
	return fmt.Sprintf("%x", hash), fmt.Sprintf("%d", binary.LittleEndian.Uint16(hash)), nil
}
