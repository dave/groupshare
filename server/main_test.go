package main

import (
	"context"
	"fmt"
	"net/http"
	"os"
	"testing"
	"time"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/delta"
	"github.com/dave/pserver"
	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/proto"
)

func TestOps(t *testing.T) {
	ctx := context.Background()
	resetDatabase(t)
	app := getApp(ctx, t)
	defer app.Server.Close()

	token := getToken(ctx, t, app, "a@b.c")

	add := app.ProcessMessage(ctx, &messages.Share_Add_Request{
		Token:   token,
		Request: "a",
		Share:   &data.Share{Name: "b"},
	}).(*messages.Share_Add_Response)
	if add.Err != nil {
		t.Fatalf("resp1 error: %s", add.Err.Message)
	}

	editC := app.ProcessMessage(ctx, &messages.Share_Edit_Request{
		Token:   token,
		Id:      add.Id,
		Request: "b",
		State:   1,
		Op:      data.Op().Share().Name().Edit("b", "bC"),
	}).(*messages.Share_Edit_Response)
	if editC.Err != nil {
		t.Fatalf("resp2 error: %s", editC.Err.Message)
	}

	editD := app.ProcessMessage(ctx, &messages.Share_Edit_Request{
		Token:   token,
		Id:      add.Id,
		Request: "c",
		State:   1,
		Op:      data.Op().Share().Name().Edit("b", "bD"),
	}).(*messages.Share_Edit_Response)
	if editD.Err != nil {
		t.Fatalf("resp3 error: %s", editD.Err.Message)
	}

	get := app.ProcessMessage(ctx, &messages.Share_Get_Request{
		Token: token,
		Id:    add.Id,
	}).(*messages.Share_Get_Response)

	expected := "bCD"
	if get.Share.Name != expected {
		t.Fatalf("expected %q, found %q", expected, get.Share.Name)
	}
}

func TestDeduplicationAdd(t *testing.T) {
	ctx := context.Background()
	resetDatabase(t)
	app := getApp(ctx, t)
	defer app.Server.Close()
	token := getToken(ctx, t, app, "a@b.c")

	add1 := app.ProcessMessage(ctx, &messages.Share_Add_Request{
		Token:   token,
		Request: "a",
		Share:   &data.Share{Name: "b"},
	}).(*messages.Share_Add_Response)
	if add1.Err != nil {
		t.Fatal("add1 error")
	}

	add2 := app.ProcessMessage(ctx, &messages.Share_Add_Request{
		Token:   token,
		Request: "a",
		Share:   &data.Share{Name: "c"},
	}).(*messages.Share_Add_Response)
	if add2.Err != nil {
		t.Fatal("add2 error")
	}
	if add2.Id != add1.Id {
		t.Fatal("id mismatch")
	}
}

func resetDatabase(t *testing.T) {
	addr := os.Getenv("FIRESTORE_EMULATOR_HOST")
	if addr == "" {
		t.Fatal("can't find FIRESTORE_EMULATOR_HOST env")
	}
	client := &http.Client{}
	url := fmt.Sprintf("http://%s/emulator/v1/projects/%s/databases/(default)/documents", addr, PROJECT_ID)
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

func getApp(ctx context.Context, t *testing.T) *App {
	fc, err := firestore.NewClient(ctx, PROJECT_ID)
	if err != nil {
		t.Fatal(err)
	}
	app := &App{Server: pserver.New(fc)}
	return app
}

func getToken(ctx context.Context, t *testing.T, app *App, email string) *messages.Token {
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
	authResponse := app.ProcessMessage(ctx, authRequest).(*messages.Auth_Response)
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
