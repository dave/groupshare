package data

import (
	"github.com/dave/groupshare/server/pb/groupshare/data/foo"
	"github.com/dave/protod/delta"
)

type Share_type struct {
	location []*delta.Locator
}

func (b Share_type) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type(l []*delta.Locator) Share_type {
	return Share_type{location: l}
}

type Share_type_repeated struct {
	location []*delta.Locator
}

func (b Share_type_repeated) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type_repeated(l []*delta.Locator) Share_type_repeated {
	return Share_type_repeated{location: l}
}
func (b Share_type_repeated) Index(i int) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Index{Index: int64(i)}}))
}
func (b Share_type_repeated) Index64(i int64) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Index{Index: i}}))
}

type Share_type_bool_map struct {
	location []*delta.Locator
}

func (b Share_type_bool_map) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type_bool_map(l []*delta.Locator) Share_type_bool_map {
	return Share_type_bool_map{location: l}
}
func (b Share_type_bool_map) Key(k bool) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Bool{Bool: k}}}}))
}

type Share_type_int32_map struct {
	location []*delta.Locator
}

func (b Share_type_int32_map) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type_int32_map(l []*delta.Locator) Share_type_int32_map {
	return Share_type_int32_map{location: l}
}
func (b Share_type_int32_map) Key(k int) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Int32{Int32: int32(k)}}}}))
}
func (b Share_type_int32_map) Key32(k int32) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Int32{Int32: k}}}}))
}

type Share_type_int64_map struct {
	location []*delta.Locator
}

func (b Share_type_int64_map) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type_int64_map(l []*delta.Locator) Share_type_int64_map {
	return Share_type_int64_map{location: l}
}
func (b Share_type_int64_map) Key(k int) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Int64{Int64: int64(k)}}}}))
}
func (b Share_type_int64_map) Key64(k int64) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Int64{Int64: k}}}}))
}

type Share_type_uint32_map struct {
	location []*delta.Locator
}

func (b Share_type_uint32_map) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type_uint32_map(l []*delta.Locator) Share_type_uint32_map {
	return Share_type_uint32_map{location: l}
}
func (b Share_type_uint32_map) Key(k int) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Uint32{Uint32: uint32(k)}}}}))
}
func (b Share_type_uint32_map) Key32(k uint32) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Uint32{Uint32: k}}}}))
}

type Share_type_uint64_map struct {
	location []*delta.Locator
}

func (b Share_type_uint64_map) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type_uint64_map(l []*delta.Locator) Share_type_uint64_map {
	return Share_type_uint64_map{location: l}
}
func (b Share_type_uint64_map) Key(k int) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Uint64{Uint64: uint64(k)}}}}))
}
func (b Share_type_uint64_map) Key64(k uint64) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Uint64{Uint64: k}}}}))
}

type Share_type_string_map struct {
	location []*delta.Locator
}

func (b Share_type_string_map) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type_string_map(l []*delta.Locator) Share_type_string_map {
	return Share_type_string_map{location: l}
}
func (b Share_type_string_map) Key(k string) Share_type {
	return NewShare_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_String_{String_: k}}}}))
}
func ShareDef() Share_type {
	return Share_type{}
}
func (b Share_type) Id() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Field{Field: &delta.Field{
		Name:   "id",
		Number: 1,
	}}}))
}
func (b Share_type) Name() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Field{Field: &delta.Field{
		Name:   "name",
		Number: 2,
	}}}))
}
func (b Share_type) Foo() foo.Foo_type {
	return foo.NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Field{Field: &delta.Field{
		Name:   "foo",
		Number: 3,
	}}}))
}
