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
	api_proto "github.com/dave/groupshare/packages/api/api/proto"
	"github.com/dave/groupshare/packages/auth/auth"
	auth_proto "github.com/dave/groupshare/packages/auth/auth/proto"
	"github.com/dave/groupshare/packages/data/data"
	data_proto "github.com/dave/groupshare/packages/data/data/proto"
	main_proto "github.com/dave/groupshare/packages/main/main/proto"
	"github.com/dave/protod/delta"
	"github.com/dave/protod/perr"
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

	documentType := string((&data_proto.Share{}).ProtoReflect().Descriptor().FullName())
	token := getToken(ctx, t, c, "a@b.c")
	id := pstore.NewDocumentID()

	add := &pstore.Payload_Edit_Response{}
	c.MustRequest(ctx, t, token, false, &pstore.Payload_Edit_Request{
		DocumentType: documentType,
		DocumentId:   string(id),
		StateId:      string(pstore.NewStateID()),
		State:        0,
		Op:           delta.Root(&data_proto.Share{Name: "b"}),
	}).MustGet(add)
	if add.State != 1 {
		t.Fatal("unexpected state")
	}
	if add.Op != nil {
		t.Fatal("unexpected op")
	}

	// TODO: do something about this!
	c.MustRequest(ctx, t, nil, true, &pstore.Payload_Refresh_Request{
		DocumentType: documentType,
		DocumentId:   string(id),
	})

	list := &main_proto.Share_List_Response{}
	c.MustRequest(ctx, t, token, false, &main_proto.Share_List_Request{}).MustGet(list)

	if !reflect.DeepEqual(list.Items, []*main_proto.Share_List_Response_Item{{Id: string(id), Name: "b"}}) {
		t.Fatalf("expect %v, found %v", []*main_proto.Share_List_Response_Item{{Id: string(id), Name: "b"}}, list.Items)
	}

}

func TestOps(t *testing.T) {
	ctx := context.Background()
	c := NewClient(ctx, t, TARGET)
	defer c.Close()

	documentType := string((&data_proto.Share{}).ProtoReflect().Descriptor().FullName())
	token := getToken(ctx, t, c, "a@b.c")
	id := pstore.NewDocumentID()

	add := &pstore.Payload_Edit_Response{}
	c.MustRequest(ctx, t, token, false, &pstore.Payload_Edit_Request{
		DocumentType: documentType,
		DocumentId:   string(id),
		StateId:      string(pstore.NewStateID()),
		State:        0,
		Op:           delta.Root(&data_proto.Share{Name: "b"}),
	}).MustGet(add)
	if add.State != 1 {
		t.Fatal("unexpected state")
	}
	if add.Op != nil {
		t.Fatal("unexpected op")
	}

	editC := &pstore.Payload_Edit_Response{}
	c.MustRequest(ctx, t, token, false, &pstore.Payload_Edit_Request{
		DocumentType: documentType,
		DocumentId:   string(id),
		StateId:      string(pstore.NewStateID()),
		State:        1,
		Op:           data_proto.Op().Share().Name().Edit("b", "bC"),
	}).MustGet(editC)

	editD := &pstore.Payload_Edit_Response{}
	c.MustRequest(ctx, t, token, false, &pstore.Payload_Edit_Request{
		DocumentType: documentType,
		DocumentId:   string(id),
		StateId:      string(pstore.NewStateID()),
		State:        1,
		Op:           data_proto.Op().Share().Name().Edit("b", "bD"),
	}).MustGet(editD)

	get := &pstore.Payload_Get_Response{}
	c.MustRequest(ctx, t, token, false, &pstore.Payload_Get_Request{
		DocumentType: documentType,
		DocumentId:   string(id),
	}).MustGet(get)

	expected := "bCD"
	share := delta.MustUnmarshalAny(get.Value).(*data_proto.Share)
	if share.Name != expected {
		t.Fatalf("expected %q, found %q", expected, share.Name)
	}
}

func TestDeduplicationAdd(t *testing.T) {
	ctx := context.Background()
	c := NewClient(ctx, t, TARGET)
	defer c.Close()

	documentType := string((&data_proto.Share{}).ProtoReflect().Descriptor().FullName())
	token := getToken(ctx, t, c, "a@b.c")
	id := pstore.NewDocumentID()

	add1 := &pstore.Payload_Edit_Response{}
	c.MustRequest(ctx, t, token, false, &pstore.Payload_Edit_Request{
		DocumentType: documentType,
		DocumentId:   string(id),
		StateId:      string(pstore.NewStateID()),
		State:        0,
		Op:           delta.Root(&data_proto.Share{Name: "b"}),
	}).MustGet(add1)

	add2 := &pstore.Payload_Edit_Response{}
	c.MustRequest(ctx, t, token, false, &pstore.Payload_Edit_Request{
		DocumentType: documentType,
		DocumentId:   string(id),
		StateId:      string(pstore.NewStateID()),
		State:        0,
		Op:           delta.Root(&data_proto.Share{Name: "c"}),
	}).MustGet(add2)

	get1 := &pstore.Payload_Get_Response{}
	c.MustRequest(ctx, t, token, false, &pstore.Payload_Get_Request{
		DocumentType: documentType,
		DocumentId:   string(id),
	}).MustGet(get1)

	share := delta.MustUnmarshalAny(get1.Value).(*data_proto.Share)
	if share.Name != "c" {
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

func getToken(ctx context.Context, t *testing.T, c *Client, email string) *auth_proto.Token {
	device := "a"
	authTime := time.Now().Unix()
	code, err := auth.GenerateCode(device, email, authTime)
	if err != nil {
		t.Fatal(err)
	}
	authRequest := &auth_proto.Code_Request{
		Device: device,
		Email:  email,
		Time:   fmt.Sprintf("%d", authTime),
		Code:   code,
	}
	authResponse := &auth_proto.Code_Response{}
	c.MustRequest(ctx, t, nil, false, authRequest).MustGet(authResponse)
	return &auth_proto.Token{
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

func mustUnmarshalShare(b []byte) *data_proto.Share {
	if len(b) == 0 {
		return nil
	}
	value := &data_proto.Share{}
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
		c.local = pserver.New(fc, config, data.SHARE_DOCUMENT_TYPE)
	case LocalHttpServer:
		resetDatabase(t)
		c.prefix = LOCAL_PREFIX
	case GaeHttpServer:
		c.prefix = PREFIX
	}
	return c
}

func (c *Client) MustRequest(ctx context.Context, t *testing.T, token *auth_proto.Token, tasks bool, request proto.Message) *pmsg.Bundle {
	t.Helper()
	response, err := c.Request(ctx, token, request, tasks)
	if err != nil {
		t.Fatal(err)
	}
	e := &api_proto.Error{}
	found, err := response.Get(e)
	if err != nil {
		t.Fatal(err)
	}
	if found {
		t.Fatal(e.Message)
	}
	return response
}

func (c *Client) Request(ctx context.Context, token *auth_proto.Token, request proto.Message, tasks bool) (*pmsg.Bundle, error) {
	switch c.target {
	case LocalInProcess:
		return c.localRequest(ctx, token, request, tasks)
	case LocalHttpServer, GaeHttpServer:
		if tasks {
			panic("not implemented")
		}
		return c.httpRequest(ctx, token, request)
	}
	panic("")
}

func (c *Client) localRequest(ctx context.Context, token *auth_proto.Token, request proto.Message, tasks bool) (response *pmsg.Bundle, err error) {
	return ProcessMessage(ctx, c.local, token, request, tasks)
}

const REQUEST_RETRIES = 20

func (c *Client) httpRequest(ctx context.Context, token *auth_proto.Token, request proto.Message) (response *pmsg.Bundle, err error) {
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
			return nil, perr.Wrap(err).Debug("marshaling request bundle") // <- return error without retry
		}
		buf := bytes.NewBuffer(requestBundleBytes)
		var resp *http.Response
		resp, err = http.Post(path, "application/protobuf", buf)
		if err != nil {
			err = perr.Wrap(err).Debug("http post")
			continue // <- restart the loop or exit when retry count exceeded
		}
		var body []byte
		body, err = ioutil.ReadAll(resp.Body)
		if err != nil {
			err = perr.Wrap(err).Debug("reading body")
			continue // <- restart the loop or exit when retry count exceeded
		}
		if resp.StatusCode != 200 {
			if resp.StatusCode == 404 {
				err = perr.Flag(perr.NotFound)
			} else if resp.StatusCode == 503 {
				err = perr.Flag(perr.Busy)
			} else {
				fmt.Printf("status %q: %q\n", resp.Status, string(body))
				err = fmt.Errorf("status %q: %q", resp.Status, string(body))
			}
			continue // <- restart the loop or exit when retry count exceeded
		}
		response = pmsg.New()
		err = proto.Unmarshal(body, response)
		if err != nil {
			err = perr.Wrap(err).Debug("unmarshaling response bundle")
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
