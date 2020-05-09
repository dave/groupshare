package data_defs

import (
	"github.com/dave/groupshare/server/pb/data/foo/foo_defs"
	"github.com/dave/protod/delta"
)

func Share() Share_type {
	return Share_type{}
}

type Share_type struct {
	location []delta.Indexer
}

func NewShare_type(l []delta.Indexer) Share_type {
	return Share_type{location: l}
}
func (b Share_type) Location_get() []delta.Indexer {
	return b.location
}

type Share_type_repeated struct {
	location []delta.Indexer
}

func NewShare_type_repeated(l []delta.Indexer) Share_type_repeated {
	return Share_type_repeated{location: l}
}
func (b Share_type_repeated) Location_get() []delta.Indexer {
	return b.location
}
func (b Share_type_repeated) Index(i int) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, delta.IndexIndexer(i)))
}
func (b Share_type) Id() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppend(b.location, delta.FieldIndexer("id", 1)))
}
func (b Share_type) Name() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppend(b.location, delta.FieldIndexer("name", 2)))
}
func (b Share_type) Foo() foo_defs.Foo_type {
	return foo_defs.NewFoo_type(delta.CopyAndAppend(b.location, delta.FieldIndexer("foo", 3)))
}
