package main

import (
	"context"
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
const LOCATION_ID = "us-central1"
const TASKS_QUEUE = "tasks"
const PREFIX = "https://groupshare.uc.r.appspot.com"
const LOCAL_PREFIX = "http://localhost:8080"
const DATABASE_TIMEOUT_LIVE = time.Second * 2
const DATABASE_TIMEOUT_DEV = time.Second * 4

func main() {
	var prefix, project, location, queue string
	var timeout time.Duration
	if appengine.IsAppEngine() {
		prefix = PREFIX
		project = PROJECT_ID
		location = LOCATION_ID
		queue = TASKS_QUEUE
		timeout = DATABASE_TIMEOUT_LIVE
	} else {
		prefix = LOCAL_PREFIX
		project = TESTING_PROJECT_ID
		location = "" // not used when local
		queue = ""    // not used when local
		timeout = DATABASE_TIMEOUT_DEV
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
		Timeout:  timeout,
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
			log.Fatal(perr.Stack(err))
		}
	}
}

func indexHandler(server *pserver.Server) func(w http.ResponseWriter, r *http.Request) {

	return func(w http.ResponseWriter, r *http.Request) {

		requestTime := time.Now()

		w.Header().Add("Access-Control-Allow-Origin", "*")

		defer func() {
			if r := recover(); r != nil {
				switch r := r.(type) {
				case error:
					fmt.Println(perr.Stack(r))
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

		// did this request come from the tasks queue?
		tasks := r.Header.Get("X-Cloudtasks-Queuename") == TASKS_QUEUE

		err = ProcessBundle(ctx, server, request, response, tasks)

		if err != nil {
			fmt.Printf("error: \n%s\n", perr.Stack(err))
		}

		if perr.AnyFlag(err, perr.NotFound) {
			fmt.Println("error: 404 path not found")
			http.NotFound(w, r)
			return
		}

		if tasks && err != nil {
			// if there's an error in a task, always send a simple 500 http error
			http.Error(w, err.Error(), 500)
			return
		}

		if err != nil {
			e := &api.Error{}
			if perr.AnyFlag(err, perr.Auth) {
				e.Auth = true
			}
			if perr.AnyFlag(err, perr.Expired) {
				e.Expired = true
			}
			if perr.AnyFlag(err, perr.Busy) || perr.Any(err, pserver.IsBusy) {
				e.Busy = true
			}
			if perr.AnyFlag(err, perr.Retry) || perr.Any(err, pserver.IsRetry) {
				e.Retry = true
			}
			if perr.AnyFlag(err, perr.Stop) || perr.Any(err, pserver.IsStop) {
				e.Stop = true
			}
			e.Message = perr.FirstMessage(err)
			if e.Message == "" {
				if perr.AnyFlag(err, pserver.Firestore) {
					e.Message = "Database error"
				} else {
					e.Message = "Server error"
				}
			}
			e.Debug = perr.Stack(err)
			response.MustSet(e)
		}

		fmt.Printf("response after %.3f sec: %s\n", time.Now().Sub(requestTime).Seconds(), mustJson(response))
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
	response, err := ProcessMessage(ctx, server, token, message, false)
	if err != nil {
		t.Fatal(err)
	}
	return response
}

func ProcessMessage(ctx context.Context, server *pserver.Server, token *auth.Token, message proto.Message, tasks bool) (*pmsg.Bundle, error) {
	request := pmsg.New()
	if token != nil {
		request.MustSet(token)
	}
	request.MustSet(message)
	response := pmsg.New()
	if err := ProcessBundle(ctx, server, request, response, tasks); err != nil {
		return nil, perr.Wrap(err).Debug("processing bundle")
	}
	return response, nil
}

func ProcessBundle(ctx context.Context, server *pserver.Server, request, response *pmsg.Bundle, tasks bool) (err error) {

	//time.Sleep(time.Millisecond * 500)

	if appengine.IsAppEngine() {
		// when running in app engine, catch panics and convert to errors
		defer func() {
			if r := recover(); r != nil {
				switch r := r.(type) {
				case error:
					err = perr.Wrap(r).Debug("recovered in process bundle")
				default:
					err = perr.Debugf("recovered: %v", r)
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

	// handle requests that only come from the tasks API
	if tasks {
		switch {
		case request.Has(&pstore.Payload_Refresh_Request{}):
			return data.RefreshRequest(ctx, server, request)
		case request.Has(&messages.Share_Delete_Task{}):
			return data.ShareDeleteTask(ctx, server, request)
		}
	}

	// handle requests that don't need auth token
	switch {
	case request.Has(&auth.Login_Request{}):
		return auth.LoginRequest(ctx, request, response)
	case request.Has(&auth.Code_Request{}):
		return auth.CodeRequest(ctx, server, request, response)
	}

	var user *auth.User
	token := &auth.Token{}
	found, err := request.Get(token)
	if err != nil {
		return perr.Wrap(err).Message("Invalid login token").Debug("unpacking token")
	}
	if !found {
		return perr.Flag(perr.Auth).Message("Login token missing").Debug("request missing auth token")
	}
	if _, user, err = auth.GetUserVerify(ctx, server, nil, token); err != nil {
		return perr.Wrap(err).Flag(perr.Auth).Message("Login token error").Debug("verifying token")
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
		//time.Sleep(time.Millisecond * 500)
		//if rand.Float64() > 0.25 {
		//	return perr.Flag(perr.Retry)
		//}
		//time.Sleep(time.Millisecond * 500)

		return data.EditRequest(ctx, server, user, request, response)
	}

	// other requests
	switch {
	case request.Has(&messages.Share_List_Request{}):
		return data.ShareListRequest(ctx, server, user, request, response)
	case request.Has(&messages.Share_Remove_Request{}):
		return data.ShareRemoveRequest(ctx, server, user, request, response)
	case request.Has(&messages.Share_Delete_Request{}):
		return data.ShareDeleteRequest(ctx, server, user, request, response)
	}

	return perr.Flag(perr.NotFound)

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
