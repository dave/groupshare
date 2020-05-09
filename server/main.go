package main

import (
	"encoding/json"
	"io/ioutil"
	"log"
	"net/http"
	"os"

	"github.com/dave/groupshare/server/api/auth"
	"google.golang.org/protobuf/proto"
)

func main() {
	http.HandleFunc("/", indexHandler)

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

func indexHandler(w http.ResponseWriter, r *http.Request) {
	requestBytes, err := ioutil.ReadAll(r.Body)
	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}

	var response proto.Message
	switch r.URL.Path {
	case "/Login_Request":
		response = auth.LoginRequest(requestBytes)
	case "/Auth_Request":
		response = auth.AuthRequest(requestBytes)
	case "/Token_Request":
		response = auth.TokenRequest(requestBytes)
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
