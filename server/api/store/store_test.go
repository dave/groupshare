package store

import (
	"context"
	"testing"

	"cloud.google.com/go/firestore"
	"github.com/dave/groupshare/server/api"
	"github.com/dave/groupshare/server/pb/groupshare/data"
	"github.com/dave/groupshare/server/pb/groupshare/data/foo"
)

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
