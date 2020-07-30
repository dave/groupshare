package main

import (
	"context"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"strings"
	"testing"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api/auth"
	"github.com/dave/groupshare/server/api/store"
	"github.com/dave/groupshare/server/pb/groupshare/messages"
	"github.com/dave/protod/pserver"
	"google.golang.org/appengine"
	"google.golang.org/protobuf/proto"
)

const PROJECT_ID = "groupshare"
const TESTING_PROJECT_ID = "groupshare-testing"
const LOCATION_ID = "europe-west2"
const TASKS_QUEUE = "tasks"
const PREFIX = "https://groupshare.uc.r.appspot.com"
const LOCAL_PREFIX = "http://localhost:8080"

func main() {

	var prefix, project, location, queue string
	if appengine.IsAppEngine() {
		prefix = PREFIX
		project = PROJECT_ID
		location = LOCATION_ID
		queue = TASKS_QUEUE
	} else {
		prefix = LOCAL_PREFIX
		project = TESTING_PROJECT_ID
		location = "" // not used when local
		queue = ""    // not used when local
	}
	fc, err := firestore.NewClient(context.Background(), project)
	if err != nil {
		log.Fatal(err)
	}
	server := &pserver.Server{
		Firestore: fc,
		Prefix:    prefix,
		Project:   project,
		Location:  location,
		Queue:     queue,
	}
	defer func() { _ = server.Close() }()

	http.HandleFunc("/", indexHandler(server))

	if appengine.IsAppEngine() {
		appengine.Main()
	} else {
		port := os.Getenv("PORT")
		if port == "" {
			port = "8080"
		}
		fmt.Println("Serving...")
		if err := http.ListenAndServe(":"+port, nil); err != nil && err != http.ErrServerClosed {
			log.Fatal(err)
		}
	}
}

func indexHandler(server *pserver.Server) func(w http.ResponseWriter, r *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {
		ctx := appengine.NewContext(r)

		requestBytes, err := ioutil.ReadAll(r.Body)
		if err != nil {
			http.Error(w, err.Error(), 500)
			return
		}

		response, err := ProcessRequest(ctx, server, r.URL.Path, requestBytes)

		if err == pserver.ServerBusy {
			http.Error(w, "503 server busy", http.StatusServiceUnavailable)
			return
		}
		if err == pserver.PathNotFound {
			http.NotFound(w, r)
			return
		}
		if err != nil && response == nil {
			http.Error(w, err.Error(), 500)
			return
		}

		if response != nil {
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
	}
}

func TestProcessMessage(ctx context.Context, t *testing.T, server *pserver.Server, message proto.Message) proto.Message {
	response, err := ProcessMessage(ctx, server, message)
	if err != nil {
		t.Fatal(err)
	}
	return response
}

func ProcessMessage(ctx context.Context, server *pserver.Server, message proto.Message) (proto.Message, error) {
	messageType := fmt.Sprintf("%T", message)
	path := "/" + strings.TrimPrefix(messageType, "*messages.")
	messageBytes, err := proto.Marshal(message)
	if err != nil {
		return nil, fmt.Errorf("marshaling message: %w", err)
	}
	response, err := ProcessRequest(ctx, server, path, messageBytes)
	if err != nil {
		return nil, err
	}
	return response, nil
}

func ProcessRequest(ctx context.Context, server *pserver.Server, path string, request []byte) (proto.Message, error) {
	switch path {
	case fmt.Sprintf("/%T", &messages.Login_Request{}):
		return auth.LoginRequest(ctx, request)
	case fmt.Sprintf("/%T", &messages.Auth_Request{}):
		return auth.AuthRequest(ctx, server, request)
	case fmt.Sprintf("/%T", &messages.Token_Validate_Request{}):
		return auth.TokenValidateRequest(ctx, server, request)
	case pserver.Path(&messages.Share_Add_Request{}):
		return store.ShareAddRequest(ctx, server, request)
	case pserver.Path(&messages.Share_Get_Request{}):
		return store.ShareGetRequest(ctx, server, request)
	case pserver.Path(&messages.Share_List_Request{}):
		return store.ShareListRequest(ctx, server, request)
	case pserver.Path(&messages.Share_Edit_Request{}):
		return store.ShareEditRequest(ctx, server, request)
	case pserver.Path(&messages.Share_Refresh_Request{}):
		return nil, store.ShareRefreshRequest(ctx, server, request)
	default:
		return nil, pserver.PathNotFound
	}
}

func GetResponse(request proto.Message) proto.Message {
	switch request.(type) {
	case *messages.Login_Request:
		return &messages.Login_Response{}
	case *messages.Auth_Request:
		return &messages.Auth_Response{}
	case *messages.Token_Validate_Request:
		return &messages.Token_Validate_Response{}
	case *messages.Share_Add_Request:
		return &messages.Share_Add_Response{}
	case *messages.Share_Get_Request:
		return &messages.Share_Get_Response{}
	case *messages.Share_List_Request:
		return &messages.Share_List_Response{}
	case *messages.Share_Edit_Request:
		return &messages.Share_Edit_Response{}
	case *messages.Share_Refresh_Request:
		return &messages.Share_Refresh_Response{}
	default:
		panic(fmt.Sprintf("response not found for %T", request))
	}
}
