package main

import (
	"context"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"strings"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api/auth"
	"github.com/dave/groupshare/server/api/store"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"google.golang.org/appengine"
	"google.golang.org/protobuf/proto"
)

const PROJECT_ID = "groupshare-testing"

func main() {

	var app App

	{
		firestoreClient, err := firestore.NewClient(context.Background(), PROJECT_ID)
		if err != nil {
			log.Fatal(err)
		}
		defer firestoreClient.Close()

		app.firestoreClient = firestoreClient
	}

	http.HandleFunc("/", app.indexHandler)

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
		log.Printf("Defaulting to port %s", port)
	}

	log.Printf("Listening on port %s", port)
	if err := http.ListenAndServe(":"+port, nil); err != nil {
		log.Fatal(err)
	}
}

type App struct {
	firestoreClient *firestore.Client
}

func (a *App) indexHandler(w http.ResponseWriter, r *http.Request) {

	ctx := appengine.NewContext(r)

	requestBytes, err := ioutil.ReadAll(r.Body)
	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}

	response := a.ProcessRequest(ctx, r.URL.Path, requestBytes)

	if response == nil {
		http.NotFound(w, r)
		return
	}

	// TODO: debug code
	const debug = true
	if debug {
		e := json.NewEncoder(os.Stdout)
		e.SetIndent("", "\t")
		_ = e.Encode(response)
	}

	responseBytes, err := proto.Marshal(response)
	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}
	if _, err = w.Write(responseBytes); err != nil {
		http.Error(w, err.Error(), 500)
		return
	}
}

func (a *App) ProcessMessage(ctx context.Context, message proto.Message) proto.Message {
	messageType := fmt.Sprintf("%T", message)
	path := "/" + strings.TrimPrefix(messageType, "*messages.")
	messageBytes, err := proto.Marshal(message)
	if err != nil {
		return &messages.Error{Message: "error marshaling message in ProcessMessage"}
	}
	return a.ProcessRequest(ctx, path, messageBytes)
}

func (a *App) ProcessRequest(ctx context.Context, path string, request []byte) proto.Message {
	switch path {
	case "/Login_Request":
		return auth.LoginRequest(ctx, request)
	case "/Auth_Request":
		return auth.AuthRequest(ctx, a.firestoreClient, request)
	case "/Token_Validate_Request":
		return auth.TokenValidateRequest(ctx, a.firestoreClient, request)
	case "/Share_Add_Request":
		return store.ShareAddRequest(ctx, a.firestoreClient, request)
	case "/Share_Get_Request":
		return store.ShareGetRequest(ctx, a.firestoreClient, request)
	case "/Share_List_Request":
		return store.ShareListRequest(ctx, a.firestoreClient, request)
	case "/Share_Edit_Request":
		return store.ShareEditRequest(ctx, a.firestoreClient, request)
	default:
		fmt.Println(path)
		return nil
	}

}
