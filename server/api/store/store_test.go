package store

import (
	"context"
	"encoding/json"
	"fmt"
	"testing"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/data/foo"
	"github.com/golang/protobuf/proto"
	"google.golang.org/protobuf/encoding/protojson"
)

func marshal(message proto.GeneratedMessage) (map[string]interface{}, error) {
	b, err := protojson.Marshal(proto.MessageV2(message))
	if err != nil {
		return nil, err
	}
	var value map[string]interface{}
	if err := json.Unmarshal(b, &value); err != nil {
		return nil, err
	}
	return value, nil
}
func unmarshal(in map[string]interface{}, out proto.GeneratedMessage) error {
	b, err := json.Marshal(in)
	if err != nil {
		return err
	}
	if err := protojson.Unmarshal(b, proto.MessageV2(out)); err != nil {
		return err
	}
	return nil
}

func TestStoreState(t *testing.T) {
	state := &data.State{
		User:     "a",
		Type:     "b",
		Id:       "c",
		State:    1,
		Previous: 0,
		Unique:   "d",
		Op2X:     data.Op().Share().Set(&data.Share{Id: "a", Name: "b"}),
		Op1X:     data.Op().Share().Set(&data.Share{Id: "c", Name: "d"}),
	}
	stateMarshaled, err := marshal(state)

	projectID := "groupshare-testing"

	ctx := context.Background()
	client, err := firestore.NewClient(ctx, projectID)
	if err != nil {
		t.Fatalf("creating client: %v", err)
	}
	defer client.Close()

	stateRef := client.Collection(api.STATE_COLLECTION).NewDoc()
	if _, err := stateRef.Set(ctx, stateMarshaled); err != nil {
		t.Fatalf("adding state: %v", err)
	}

	snapshot, err := client.Collection(api.STATE_COLLECTION).Doc(stateRef.ID).Get(ctx)
	if err != nil {
		t.Fatalf("getting share: %v", err)
	}
	var s1 map[string]interface{}
	if err := snapshot.DataTo(&s1); err != nil {
		t.Fatalf("unpacking share: %v", err)
	}
	stateUnmarshaled := &data.State{}

	if err := unmarshal(s1, stateUnmarshaled); err != nil {
		t.Fatalf("unmarshaling: %v", err)
	}
	fmt.Println(stateUnmarshaled.Op2X.Value)

	//if s1.Name != s0.Name {
	//	t.Fatalf("s1.Name should be %q, got %q", s0.Name, s1.Name)
	//}
	//if s1.Foo.Bar != s0.Foo.Bar {
	//	t.Fatalf("s1.Foo.Bar should be %q, got %q", s0.Foo.Bar, s1.Foo.Bar)
	//}

}

func TestStore(t *testing.T) {
	// this project id will intentionally fail if accidentally used on the production database
	projectID := "groupshare-testing"

	ctx := context.Background()
	client, err := firestore.NewClient(ctx, projectID)
	if err != nil {
		t.Fatalf("creating client: %v", err)
	}
	defer client.Close()

	s0 := data.Share{Name: "foo", Foo: &foo.Foo{Bar: "baz"}}

	ref, _, err := client.Collection(api.SHARES_COLLECTION).Add(ctx, &s0)
	if err != nil {
		t.Fatalf("adding share: %v", err)
	}

	snapshot, err := client.Collection(api.SHARES_COLLECTION).Doc(ref.ID).Get(ctx)
	if err != nil {
		t.Fatalf("getting share: %v", err)
	}
	s1 := &data.Share{}
	if err := snapshot.DataTo(s1); err != nil {
		t.Fatalf("unpacking share: %v", err)
	}
	if s1.Name != s0.Name {
		t.Fatalf("s1.Name should be %q, got %q", s0.Name, s1.Name)
	}
	if s1.Foo.Bar != s0.Foo.Bar {
		t.Fatalf("s1.Foo.Bar should be %q, got %q", s0.Foo.Bar, s1.Foo.Bar)
	}
}
