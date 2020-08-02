package main

import (
	"bytes"
	"context"
	"fmt"
	"io/ioutil"
	"math/rand"
	"net/http"
	"os"
	"reflect"
	"testing"
	"time"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/api/store"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/delta"
	"github.com/dave/protod/pmsg"
	"github.com/dave/protod/pserver"
	"github.com/dave/protod/pstore"
	"google.golang.org/protobuf/proto"
)

const TARGET = LocalInProcess

func TestList(t *testing.T) {
	ctx := context.Background()
	c := NewClient(ctx, t, TARGET)
	defer c.Close()

	documentType := string((&data.Share{}).ProtoReflect().Descriptor().FullName())
	token := getToken(ctx, t, c, "a@b.c")
	id := uniqueID()

	c.MustRequest(ctx, t, token, &pstore.Payload_Add_Request{
		DocumentType: documentType,
		DocumentId:   id,
		Value:        delta.MustMarshalAny(&data.Share{Name: "b"}),
	})

	list := &messages.Share_List_Response{}
	c.MustRequest(ctx, t, token, &messages.Share_List_Request{}).MustGet(list)

	if !reflect.DeepEqual(list.Shares, []string{id}) {
		t.Fatalf("expect %v, found %v", []string{id}, list.Shares)
	}
	if !reflect.DeepEqual(list.Names, map[string]string{id: "b"}) {
		t.Fatalf("expect %v, found %v", map[string]string{id: "b"}, list.Names)
	}

}

func TestOps(t *testing.T) {
	ctx := context.Background()
	c := NewClient(ctx, t, TARGET)
	defer c.Close()

	documentType := string((&data.Share{}).ProtoReflect().Descriptor().FullName())
	token := getToken(ctx, t, c, "a@b.c")
	id := uniqueID()

	_ = c.MustRequest(ctx, t, token, &pstore.Payload_Add_Request{
		DocumentType: documentType,
		DocumentId:   id,
		Value:        delta.MustMarshalAny(&data.Share{Name: "b"}),
	})

	editC := &pstore.Payload_Edit_Response{}
	c.MustRequest(ctx, t, token, &pstore.Payload_Edit_Request{
		DocumentType: documentType,
		DocumentId:   id,
		StateId:      "b",
		State:        1,
		Op:           data.Op().Share().Name().Edit("b", "bC"),
	}).MustGet(editC)

	editD := &pstore.Payload_Edit_Response{}
	c.MustRequest(ctx, t, token, &pstore.Payload_Edit_Request{
		DocumentType: documentType,
		DocumentId:   id,
		StateId:      "c",
		State:        1,
		Op:           data.Op().Share().Name().Edit("b", "bD"),
	}).MustGet(editD)

	get := &pstore.Payload_Get_Response{}
	c.MustRequest(ctx, t, token, &pstore.Payload_Get_Request{
		DocumentType: documentType,
		DocumentId:   id,
	}).MustGet(get)

	expected := "bCD"
	share := delta.MustUnmarshalAny(get.Value).(*data.Share)
	if share.Name != expected {
		t.Fatalf("expected %q, found %q", expected, share.Name)
	}
}

func TestDeduplicationAdd(t *testing.T) {
	ctx := context.Background()
	c := NewClient(ctx, t, TARGET)
	defer c.Close()

	documentType := string((&data.Share{}).ProtoReflect().Descriptor().FullName())
	token := getToken(ctx, t, c, "a@b.c")
	id := uniqueID()

	c.MustRequest(ctx, t, token, &pstore.Payload_Add_Request{
		DocumentType: documentType,
		DocumentId:   id,
		Value:        delta.MustMarshalAny(&data.Share{Name: "b"}),
	})

	c.MustRequest(ctx, t, token, &pstore.Payload_Add_Request{
		DocumentType: documentType,
		DocumentId:   id,
		Value:        delta.MustMarshalAny(&data.Share{Name: "c"}),
	})

	get1 := &pstore.Payload_Get_Response{}
	c.MustRequest(ctx, t, token, &pstore.Payload_Get_Request{
		DocumentType: documentType,
		DocumentId:   id,
	}).MustGet(get1)

	share := delta.MustUnmarshalAny(get1.Value).(*data.Share)
	if share.Name != "b" {
		t.Fatal("name mismatch")
	}
}

func resetDatabase(t *testing.T) {
	if TARGET == GaeHttpServer {
		return
	}
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
	authResponse := &messages.Auth_Response{}
	c.MustRequest(ctx, t, nil, authRequest).MustGet(authResponse)
	return &messages.Token{
		Id:     authResponse.Id,
		Device: device,
		Hash:   authResponse.Hash,
	}
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
		config := pserver.Config{
			Project: TESTING_PROJECT_ID,
		}
		c.local = pserver.New(fc, config, store.SHARE_DOCUMENT_TYPE)
	case LocalHttpServer:
		resetDatabase(t)
		c.prefix = LOCAL_PREFIX
	case GaeHttpServer:
		c.prefix = PREFIX
	}
	return c
}

func (c *Client) MustRequest(ctx context.Context, t *testing.T, token *messages.Token, request proto.Message) *pmsg.Bundle {
	response, err := c.Request(ctx, token, request)
	if err != nil {
		t.Fatal(err)
	}
	e := &messages.Error{}
	found, err := response.Get(e)
	if err != nil {
		t.Fatal(err)
	}
	if found {
		t.Fatal(e.Message)
	}
	return response
}

func (c *Client) Request(ctx context.Context, token *messages.Token, request proto.Message) (*pmsg.Bundle, error) {
	switch c.target {
	case LocalInProcess:
		return c.localRequest(ctx, token, request)
	case LocalHttpServer, GaeHttpServer:
		return c.httpRequest(ctx, token, request)
	}
	panic("")
}

func (c *Client) localRequest(ctx context.Context, token *messages.Token, request proto.Message) (response *pmsg.Bundle, err error) {
	return ProcessMessage(ctx, c.local, token, request)
}

const REQUEST_RETRIES = 20

func (c *Client) httpRequest(ctx context.Context, token *messages.Token, request proto.Message) (response *pmsg.Bundle, err error) {
	for i := 0; i < REQUEST_RETRIES; i++ {
		if i > 0 {
			delay := 500 + rand.Intn(500*(1<<i))
			time.Sleep(time.Duration(delay) * time.Millisecond)
		}
		path := c.prefix + "/"
		requestBundle := pmsg.New()
		if token != nil {
			requestBundle.MustSet(token)
		}
		requestBundle.MustSet(request)

		var requestBundleBytes []byte
		requestBundleBytes, err = proto.Marshal(requestBundle)
		if err != nil {
			return nil, fmt.Errorf("marshaling request bundle: %w", err) // <- return error without retry
		}
		buf := bytes.NewBuffer(requestBundleBytes)
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
		response = pmsg.New()
		err = proto.Unmarshal(body, response)
		if err != nil {
			err = fmt.Errorf("unmarshaling response bundle: %w", err)
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
