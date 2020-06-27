package main

import (
	"context"
	"fmt"
	"net/http"
	"testing"
	"time"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/proto"
)

func TestFoo(t *testing.T) {
	ctx := context.Background()
	resetDatabase(t)
	app, closer := getApp(ctx, t)
	defer closer()
	token := getToken(ctx, t, app, "a@b.c")
	req1 := &messages.Share_Add_Request{
		Token:  token,
		Unique: "a",
		Share:  mustMarshal(&data.Share{Name: "b"}),
	}
	resp1 := app.ProcessMessage(ctx, req1).(*messages.Share_Add_Response)
	if resp1.Err != nil {
		t.Fatal("resp1 error")
	}
	req2 := &messages.Share_Add_Request{
		Token:  token,
		Unique: "a",
		Share:  mustMarshal(&data.Share{Name: "c"}),
	}
	resp2 := app.ProcessMessage(ctx, req2).(*messages.Share_Add_Response)
	if resp2.Err != nil {
		t.Fatal("resp2 error")
	}
	if resp2.Id != resp1.Id {
		t.Fatal("id mismatch")
	}
}

func resetDatabase(t *testing.T) {
	client := &http.Client{}
	url := fmt.Sprintf("http://localhost:8081/emulator/v1/projects/%s/databases/(default)/documents", PROJECT_ID)
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

func getApp(ctx context.Context, t *testing.T) (*App, func() error) {
	app := &App{}
	fc, err := firestore.NewClient(ctx, PROJECT_ID)
	if err != nil {
		t.Fatal(err)
	}
	app.firestoreClient = fc
	return app, fc.Close
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
