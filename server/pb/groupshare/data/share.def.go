package data

import (
	"github.com/dave/groupshare/server/pb/groupshare/data/foo"
	"github.com/dave/protod/delta"
)

type Share_type struct {
	location []delta.Indexer
}

func (b Share_type) Location_get() []delta.Indexer {
	return b.location
}
func NewShare_type(l []delta.Indexer) Share_type {
	return Share_type{location: l}
}

type Share_type_repeated struct {
	location []delta.Indexer
}

func (b Share_type_repeated) Location_get() []delta.Indexer {
	return b.location
}
func NewShare_type_repeated(l []delta.Indexer) Share_type_repeated {
	return Share_type_repeated{location: l}
}
func (b Share_type_repeated) Index(i int) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, delta.IndexIndexer(i)))
}

type Share_type_bool_map struct {
	location []delta.Indexer
}

func (b Share_type_bool_map) Location_get() []delta.Indexer {
	return b.location
}
func NewShare_type_bool_map(l []delta.Indexer) Share_type_bool_map {
	return Share_type_bool_map{location: l}
}
func (b Share_type_bool_map) Key(k bool) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, delta.KeyIndexer(k)))
}

type Share_type_int32_map struct {
	location []delta.Indexer
}

func (b Share_type_int32_map) Location_get() []delta.Indexer {
	return b.location
}
func NewShare_type_int32_map(l []delta.Indexer) Share_type_int32_map {
	return Share_type_int32_map{location: l}
}
func (b Share_type_int32_map) Key(k int32) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, delta.KeyIndexer(k)))
}

type Share_type_int64_map struct {
	location []delta.Indexer
}

func (b Share_type_int64_map) Location_get() []delta.Indexer {
	return b.location
}
func NewShare_type_int64_map(l []delta.Indexer) Share_type_int64_map {
	return Share_type_int64_map{location: l}
}
func (b Share_type_int64_map) Key(k int64) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, delta.KeyIndexer(k)))
}

type Share_type_uint32_map struct {
	location []delta.Indexer
}

func (b Share_type_uint32_map) Location_get() []delta.Indexer {
	return b.location
}
func NewShare_type_uint32_map(l []delta.Indexer) Share_type_uint32_map {
	return Share_type_uint32_map{location: l}
}
func (b Share_type_uint32_map) Key(k uint32) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, delta.KeyIndexer(k)))
}

type Share_type_uint64_map struct {
	location []delta.Indexer
}

func (b Share_type_uint64_map) Location_get() []delta.Indexer {
	return b.location
}
func NewShare_type_uint64_map(l []delta.Indexer) Share_type_uint64_map {
	return Share_type_uint64_map{location: l}
}
func (b Share_type_uint64_map) Key(k uint64) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, delta.KeyIndexer(k)))
}

type Share_type_string_map struct {
	location []delta.Indexer
}

func (b Share_type_string_map) Location_get() []delta.Indexer {
	return b.location
}
func NewShare_type_string_map(l []delta.Indexer) Share_type_string_map {
	return Share_type_string_map{location: l}
}
func (b Share_type_string_map) Key(k string) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, delta.KeyIndexer(k)))
}
func ShareDef() Share_type {
	return Share_type{}
}
func (b Share_type) Id() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppend(b.location, delta.FieldIndexer("id", 1)))
}
func (b Share_type) Name() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppend(b.location, delta.FieldIndexer("name", 2)))
}
func (b Share_type) Foo() foo.Foo_type {
	return foo.NewFoo_type(delta.CopyAndAppend(b.location, delta.FieldIndexer("foo", 3)))
}
