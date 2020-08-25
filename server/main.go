package main

import (
	"context"
	"errors"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"testing"
	"time"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/auth"
	"github.com/dave/groupshare/server/data"
	"github.com/dave/groupshare/server/messages"
	"github.com/dave/protod/perr"
	"github.com/dave/protod/pmsg"
	"github.com/dave/protod/pserver"
	"github.com/dave/protod/pstore"
	"google.golang.org/appengine"
	"google.golang.org/protobuf/encoding/protojson"
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
	config := pserver.Config{
		Prefix:   prefix,
		Project:  project,
		Location: location,
		Queue:    queue,
	}
	server := pserver.New(fc, config, data.SHARE_DOCUMENT_TYPE, data.USER_DOCUMENT_TYPE)
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

		defer func() {
			if r := recover(); r != nil {
				switch r := r.(type) {
				case error:
					http.Error(w, r.Error(), 500)
					return
				default:
					http.Error(w, fmt.Sprintf("recovered: %v", r), 500)
					return
				}
			}
		}()

		ctx := appengine.NewContext(r)

		requestBytes, err := ioutil.ReadAll(r.Body)
		if err != nil {
			http.Error(w, err.Error(), 500)
			return
		}

		request := pmsg.New()
		if err := proto.Unmarshal(requestBytes, request); err != nil {
			http.Error(w, err.Error(), 500)
			return
		}

		response := pmsg.New()

		fmt.Println("request:", mustJson(request))

		err = ProcessBundle(ctx, server, request, response)

		if pserver.IsBusyError(err) {
			fmt.Println("error: 503 server busy")
			http.Error(w, "503 server busy", http.StatusServiceUnavailable)
			return
		}

		if err == pserver.PathNotFound {
			fmt.Println("error: 404 path not found")
			http.NotFound(w, r)
			return
		}

		if err != nil && !response.Has(&api.Error{}) {
			// if we got an error, but no error was added to the response, add a generic server error
			api.Err(response, "Server error")
		}

		if err != nil {
			fmt.Printf("error: %+v\n", err)
		}

		fmt.Println("response:", mustJson(response))
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

func TestProcessMessage(ctx context.Context, t *testing.T, server *pserver.Server, token *auth.Token, message proto.Message) *pmsg.Bundle {
	response, err := ProcessMessage(ctx, server, token, message)
	if err != nil {
		t.Fatal(err)
	}
	return response
}

func ProcessMessage(ctx context.Context, server *pserver.Server, token *auth.Token, message proto.Message) (*pmsg.Bundle, error) {
	request := pmsg.New()
	if token != nil {
		request.MustSet(token)
	}
	request.MustSet(message)
	response := pmsg.New()
	if err := ProcessBundle(ctx, server, request, response); err != nil {
		return nil, err
	}
	return response, nil
}

const DEBUG = true

func ProcessBundle(ctx context.Context, server *pserver.Server, request, response *pmsg.Bundle) (err error) {

	time.Sleep(time.Second)

	if appengine.IsAppEngine() {
		// when running in app engine, catch panics and convert to errors
		defer func() {
			if r := recover(); r != nil {
				switch r := r.(type) {
				case error:
					err = r
				default:
					err = fmt.Errorf("recovered: %v", r)
				}
			}
		}()
	} else {
		// when running locally, recover from panic, print inputs, and re-panic to get stack trace
		defer func() {
			if r := recover(); r != nil {
				fmt.Println("RECOVERED")
				fmt.Println("Request: ", mustJson(request))
				panic(r)
			}
		}()
	}

	// handle requests that don't need auth token
	switch {
	case request.Has(&auth.Login_Request{}):
		return auth.LoginRequest(ctx, request, response)
	case request.Has(&auth.Code_Request{}):
		return auth.CodeRequest(ctx, server, request, response)
	case request.Has(&pstore.Payload_Refresh_Request{}):
		return data.RefreshRequest(ctx, server, request, response)
	}

	var user *auth.User
	token := &auth.Token{}
	found, err := request.Get(token)
	if err != nil {
		api.AuthError(response, "Invalid login token")
		return perr.Wrap(err, "unpacking token")
	}
	if !found {
		api.AuthError(response, "Login token missing")
		return errors.New("request missing auth token")
	}
	if _, user, err = auth.GetUserVerify(ctx, server, nil, token); err != nil {
		api.AuthError(response, "Login token error")
		return perr.Wrap(err, "verifying token")
	}

	ctx = context.WithValue(ctx, data.UserContextKey, user)

	switch {
	case request.Has(&auth.Validate_Request{}):
		// validate request just sends back no error if user validated OK
		return nil
	}

	// pstore requests
	switch {
	//case request.Has(&pstore.Payload_Add_Request{}):
	//	return store.AddRequest(ctx, server, user, request, response)
	case request.Has(&pstore.Payload_Get_Request{}):
		return data.GetRequest(ctx, server, user, request, response)
	case request.Has(&pstore.Payload_Edit_Request{}):
		return data.EditRequest(ctx, server, user, request, response)
	}

	// other requests
	switch {
	case request.Has(&messages.Share_List_Request{}):
		return data.ShareListRequest(ctx, server, user, request, response)
	}

	return pserver.PathNotFound

}

func mustJson(message proto.Message) string {
	if message == nil {
		return "[nil]"
	}
	if !message.ProtoReflect().IsValid() {
		return "[invalid]"
	}
	b, err := protojson.MarshalOptions{Indent: "\t"}.Marshal(message)
	if err != nil {
		panic(err)
	}
	return string(b)
}
