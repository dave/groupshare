package data

import (
	"context"

	"github.com/dave/groupshare/server/auth"
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
