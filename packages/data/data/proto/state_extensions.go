package data_proto

import (
	"context"

	"github.com/dave/groupshare/packages/auth/auth"
	"github.com/dave/protod/pserver"
)

func (s *State) PackState(ctx context.Context, state int64, op pserver.BlobInterface) error {
	s.User = ctx.Value(UserContextKey).(*auth.User).Id
	s.State = state
	s.Op = op.(*pserver.Blob)
	return nil
}

func (s *State) UnpackState(ctx context.Context) (state int64, op pserver.BlobInterface, err error) {
	return s.State, s.Op, nil
}
