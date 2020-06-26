package main

import (
	"context"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api/auth"
	"github.com/dave/groupshare/server/api/store"
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

	var response proto.Message
	switch r.URL.Path {
	case "/Login_Request":
		response = auth.LoginRequest(ctx, requestBytes)
	case "/Auth_Request":
		response = auth.AuthRequest(ctx, a.firestoreClient, requestBytes)
	case "/Token_Validate_Request":
		response = auth.TokenValidateRequest(ctx, a.firestoreClient, requestBytes)
	case "/Share_Add_Request":
		response = store.ShareAddRequest(ctx, a.firestoreClient, requestBytes)
	case "/Share_Get_Request":
		response = store.ShareGetRequest(ctx, a.firestoreClient, requestBytes)
	case "/Share_List_Request":
		response = store.ShareListRequest(ctx, a.firestoreClient, requestBytes)
	case "/Share_Edit_Request":
		response = store.ShareEditRequest(ctx, a.firestoreClient, requestBytes)
	default:
		fmt.Println(r.URL.Path)
	}
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
