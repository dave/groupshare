package data_proto

import (
	"context"

	"github.com/dave/groupshare/packages/auth/auth"
	"github.com/dave/protod/pserver"
	"google.golang.org/protobuf/proto"
)

type ContextKey struct{}

var UserContextKey ContextKey // User (*api.User)

func (s *Snapshot) PackSnapshot(ctx context.Context, state int64, value pserver.BlobInterface, previous, document proto.Message) error {

	s.State = state
	s.Value = value.(*pserver.Blob)

	if previous != nil {
		// When refreshing a snapshot, this is done as a task, so we don't have a user... so copy from the old value.
		s.User = previous.(*ShareSnapshot).User
	} else {
		s.User = ctx.Value(UserContextKey).(*auth.User).Id
	}

	return nil
}

func (s *Snapshot) UnpackSnapshot(ctx context.Context) (state int64, value pserver.BlobInterface, err error) {
	return s.State, s.Value, nil
}

func (s *ShareSnapshot) PackSnapshot(ctx context.Context, state int64, value pserver.BlobInterface, previous, document proto.Message) error {

	s.State = state
	s.Value = value.(*pserver.Blob)

	if previous != nil {
		// When refreshing a snapshot, this is done as a task, so we don't have a user... so copy from the old value.
		s.User = previous.(*ShareSnapshot).User
	} else {
		s.User = ctx.Value(UserContextKey).(*auth.User).Id
	}

	s.Name = document.(*Share).Name

	return nil
}

func (s *ShareSnapshot) UnpackSnapshot(ctx context.Context) (state int64, value pserver.BlobInterface, err error) {
	return s.State, s.Value, nil
}
