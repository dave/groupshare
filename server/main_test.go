package main

import (
	"bytes"
	"context"
	"fmt"
	"io/ioutil"
	"math/rand"
	"net/http"
	"os"
	"testing"
	"time"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/delta"
	"github.com/dave/protod/pserver"
	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/proto"
)

const TARGET = LocalInProcess

func TestOps(t *testing.T) {
	ctx := context.Background()
	c := NewClient(ctx, t, TARGET)
	defer c.Close()

	token := getToken(ctx, t, c, "a@b.c")
	id := uniqueID()

	add := c.MustRequest(ctx, t, &messages.Share_Add_Request{
		Token: token,
		Id:    id,
		Share: &data.Share{Name: "b"},
	}).(*messages.Share_Add_Response)
	if add.Err != nil {
		t.Fatalf("resp1 error: %s", add.Err.Message)
	}

	editC := c.MustRequest(ctx, t, &messages.Share_Edit_Request{
		Token: token,
		Payload: &pserver.Payload_Request{
			DocumentId: id,
			StateId:    "b",
			State:      1,
			Op:         data.Op().Share().Name().Edit("b", "bC"),
		},
	}).(*messages.Share_Edit_Response)
	if editC.Err != nil {
		t.Fatalf("resp2 error: %s", editC.Err.Message)
	}

	editD := c.MustRequest(ctx, t, &messages.Share_Edit_Request{
		Token: token,
		Payload: &pserver.Payload_Request{
			DocumentId: id,
			StateId:    "c",
			State:      1,
			Op:         data.Op().Share().Name().Edit("b", "bD"),
		},
	}).(*messages.Share_Edit_Response)
	if editD.Err != nil {
		t.Fatalf("resp3 error: %s", editD.Err.Message)
	}

	get := c.MustRequest(ctx, t, &messages.Share_Get_Request{
		Token: token,
		Id:    id,
	}).(*messages.Share_Get_Response)

	expected := "bCD"
	if get.Share.Name != expected {
		t.Fatalf("expected %q, found %q", expected, get.Share.Name)
	}
}

func TestDeduplicationAdd(t *testing.T) {
	ctx := context.Background()
	c := NewClient(ctx, t, TARGET)
	defer c.Close()

	token := getToken(ctx, t, c, "a@b.c")
	id := uniqueID()

	add1 := c.MustRequest(ctx, t, &messages.Share_Add_Request{
		Token: token,
		Id:    id,
		Share: &data.Share{Name: "b"},
	}).(*messages.Share_Add_Response)
	if add1.Err != nil {
		t.Fatal("add1 error")
	}

	add2 := c.MustRequest(ctx, t, &messages.Share_Add_Request{
		Token: token,
		Id:    id,
		Share: &data.Share{Name: "c"},
	}).(*messages.Share_Add_Response)
	if add2.Err != nil {
		t.Fatal("add2 error")
	}

	get1 := c.MustRequest(ctx, t, &messages.Share_Get_Request{
		Token: token,
		Id:    id,
	}).(*messages.Share_Get_Response)
	if get1.Err != nil {
		t.Fatal("add1 error")
	}

	if get1.Share.Name != "b" {
		t.Fatal("name mismatch")
	}
}

func resetDatabase(t *testing.T) {
	addr := os.Getenv("FIRESTORE_EMULATOR_HOST")
	if addr == "" {
		t.Fatal("can't find FIRESTORE_EMULATOR_HOST env")
	}
	client := &http.Client{}
	url := fmt.Sprintf("http://%s/emulator/v1/projects/%s/databases/(default)/documents", addr, TESTING_PROJECT_ID)
	req, err := http.NewRequest(http.MethodDelete, url, nil)
	if err != nil {
		t.Fatal(err)
	}
	resp, err := client.Do(req)
	if err != nil {
		t.Fatal(err)
	}
	if resp.StatusCode != 200 {
		t.Fatalf("reset database call returned %d: %s", resp.StatusCode, resp.Status)
	}
}

func getToken(ctx context.Context, t *testing.T, c *Client, email string) *messages.Token {
	device := "a"
	authTime := time.Now().Unix()
	code, err := api.GenerateCode(device, email, authTime)
	if err != nil {
		t.Fatal(err)
	}
	authRequest := &messages.Auth_Request{
		Device: device,
		Email:  email,
		Time:   fmt.Sprintf("%d", authTime),
		Code:   code,
	}
	authResponse := c.MustRequest(ctx, t, authRequest).(*messages.Auth_Response)
	return &messages.Token{
		Id:     authResponse.Id,
		Device: device,
		Hash:   authResponse.Hash,
	}
}

func mustJson(message proto.Message) string {
	b, err := protojson.Marshal(message)
	if err != nil {
		panic(err)
	}
	return string(b)
}

func mustMarshal(message proto.Message) []byte {
	b, err := proto.Marshal(message)
	if err != nil {
		panic(err)
	}
	return b
}

func mustUnmarshalOp(b []byte) *delta.Op {
	if len(b) == 0 {
		return nil
	}
	value := &delta.Op{}
	if err := proto.Unmarshal(b, value); err != nil {
		panic(err)
	}
	return value
}

func mustUnmarshalShare(b []byte) *data.Share {
	if len(b) == 0 {
		return nil
	}
	value := &data.Share{}
	if err := proto.Unmarshal(b, value); err != nil {
		panic(err)
	}
	return value
}

type TargetType int

const (
	LocalInProcess  TargetType = 1
	LocalHttpServer TargetType = 2
	GaeHttpServer   TargetType = 3
)

type Client struct {
	target TargetType
	local  *pserver.Server
	prefix string
}

func NewClient(ctx context.Context, t *testing.T, targetType TargetType) *Client {
	c := &Client{target: targetType}
	switch targetType {
	case LocalInProcess:
		resetDatabase(t)
		fc, err := firestore.NewClient(ctx, TESTING_PROJECT_ID)
		if err != nil {
			t.Fatal(err)
		}
		c.local = &pserver.Server{Firestore: fc, Project: TESTING_PROJECT_ID}
	case LocalHttpServer:
		resetDatabase(t)
		c.prefix = LOCAL_PREFIX
	case GaeHttpServer:
		c.prefix = PREFIX
	}
	return c
}

func (c *Client) MustRequest(ctx context.Context, t *testing.T, request proto.Message) proto.Message {
	response, err := c.Request(ctx, request)
	if err != nil {
		t.Fatal(err)
	}
	return response
}

func (c *Client) Request(ctx context.Context, request proto.Message) (proto.Message, error) {
	switch c.target {
	case LocalInProcess:
		return c.localRequest(ctx, request)
	case LocalHttpServer, GaeHttpServer:
		return c.httpRequest(ctx, request)
	}
	panic("")
}

func (c *Client) localRequest(ctx context.Context, request proto.Message) (response proto.Message, err error) {
	return ProcessMessage(ctx, c.local, request)
}

const REQUEST_RETRIES = 20

func (c *Client) httpRequest(ctx context.Context, request proto.Message) (response proto.Message, err error) {
	for i := 0; i < REQUEST_RETRIES; i++ {
		if i > 0 {
			delay := 500 + rand.Intn(500*(1<<i))
			time.Sleep(time.Duration(delay) * time.Millisecond)
		}
		path := c.prefix + pserver.Path(request)
		var messageBytes []byte
		messageBytes, err = proto.Marshal(request)
		if err != nil {
			return nil, fmt.Errorf("marshaling message: %w", err) // <- return error without retry
		}
		buf := bytes.NewBuffer(messageBytes)
		var resp *http.Response
		resp, err = http.Post(path, "application/protobuf", buf)
		if err != nil {
			err = fmt.Errorf("http post: %w", err)
			continue // <- restart the loop or exit when retry count exceeded
		}
		var body []byte
		body, err = ioutil.ReadAll(resp.Body)
		if err != nil {
			err = fmt.Errorf("reading body: %w", err)
			continue // <- restart the loop or exit when retry count exceeded
		}
		if resp.StatusCode != 200 {
			if resp.StatusCode == 404 {
				err = pserver.PathNotFound
			} else if resp.StatusCode == 503 {
				err = pserver.ServerBusy
			} else {
				fmt.Printf("status %q: %q\n", resp.Status, string(body))
				err = fmt.Errorf("status %q: %q", resp.Status, string(body))
			}
			continue // <- restart the loop or exit when retry count exceeded
		}
		response = GetResponse(request)
		err = proto.Unmarshal(body, response)
		if err != nil {
			err = fmt.Errorf("unmarshaling response: %w", err)
			continue // <- restart the loop or exit when retry count exceeded
		}
		break // <- finish the loop and continue executing
	}
	if err != nil {
		return nil, err
	}
	return response, nil
}

func (c *Client) Close() {
	if c.target == LocalInProcess {
		_ = c.local.Firestore.Close()
	}
}

const alphanum = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

func uniqueID() string {
	b := make([]byte, 20)
	if _, err := rand.Read(b); err != nil {
		panic(fmt.Sprintf("firestore: crypto/rand.Read error: %v", err))
	}
	for i, byt := range b {
		b[i] = alphanum[int(byt)%len(alphanum)]
	}
	return string(b)
}

func init() {
	rand.Seed(time.Now().UnixNano())
}
