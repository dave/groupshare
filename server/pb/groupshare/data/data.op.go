package data

import (
	"github.com/dave/groupshare/server/pb/groupshare/data/foo"
	"github.com/dave/protod/delta"
)

func Op() Op_root_type {
	return Op_root_type{}
}

type Op_root_type struct{}

func (Op_root_type) Share() Share_type {
	return Share_type{}
}

type Share_type struct {
	location []*delta.Locator
}

func (b Share_type) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type(l []*delta.Locator) Share_type {
	return Share_type{location: l}
}
func (b Share_type) Name() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppendField(b.location, "name", 1))
}
func (b Share_type) Foo() foo.Foo_type {
	return foo.NewFoo_type(delta.CopyAndAppendField(b.location, "foo", 2))
}
func (b Share_type) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Share_type) Set(value *Share) *delta.Op {
	return delta.Set(b.location, value)
}

type Share_type_list struct {
	location []*delta.Locator
}

func (b Share_type_list) Location_get() []*delta.Locator {
	return b.location
}
func NewShare_type_list(l []*delta.Locator) Share_type_list {
	return Share_type_list{location: l}
}
func (b Share_type_list) Index(i int) Share_type {
	return NewShare_type(delta.CopyAndAppendIndex(b.location, int64(i)))
}
func (b Share_type_list) Insert(index int, value *Share) *delta.Op {
	return delta.Insert(delta.CopyAndAppendIndex(b.location, int64(index)), value)
}
func (b Share_type_list) Move(from, to int) *delta.Op {
	return delta.Move(delta.CopyAndAppendIndex(b.location, int64(from)), int64(to))
}
func (b Share_type_list) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Share_type_list) Set(value []*Share) *delta.Op {
	return delta.Set(b.location, value)
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
func (b Share_type_bool_map) Key(key bool) Share_type {
	return NewShare_type(delta.CopyAndAppendKeyBool(b.location, key))
}
func (b Share_type_bool_map) Rename(from, to bool) *delta.Op {
	return delta.Rename(delta.CopyAndAppendKeyBool(b.location, from), to)
}
func (b Share_type_bool_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Share_type_bool_map) Set(value map[bool]*Share) *delta.Op {
	return delta.Set(b.location, value)
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
func (b Share_type_int32_map) Key(key int) Share_type {
	return NewShare_type(delta.CopyAndAppendKeyInt32(b.location, int32(key)))
}
func (b Share_type_int32_map) Rename(from, to int) *delta.Op {
	return delta.Rename(delta.CopyAndAppendKeyInt32(b.location, int32(from)), int32(to))
}
func (b Share_type_int32_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Share_type_int32_map) Set(value map[int32]*Share) *delta.Op {
	return delta.Set(b.location, value)
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
func (b Share_type_int64_map) Key(key int) Share_type {
	return NewShare_type(delta.CopyAndAppendKeyInt64(b.location, int64(key)))
}
func (b Share_type_int64_map) Rename(from, to int) *delta.Op {
	return delta.Rename(delta.CopyAndAppendKeyInt64(b.location, int64(from)), int64(to))
}
func (b Share_type_int64_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Share_type_int64_map) Set(value map[int64]*Share) *delta.Op {
	return delta.Set(b.location, value)
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
func (b Share_type_uint32_map) Key(key int) Share_type {
	return NewShare_type(delta.CopyAndAppendKeyUint32(b.location, uint32(key)))
}
func (b Share_type_uint32_map) Rename(from, to int) *delta.Op {
	return delta.Rename(delta.CopyAndAppendKeyUint32(b.location, uint32(from)), uint32(to))
}
func (b Share_type_uint32_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Share_type_uint32_map) Set(value map[uint32]*Share) *delta.Op {
	return delta.Set(b.location, value)
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
func (b Share_type_uint64_map) Key(key int) Share_type {
	return NewShare_type(delta.CopyAndAppendKeyUint64(b.location, uint64(key)))
}
func (b Share_type_uint64_map) Rename(from, to int) *delta.Op {
	return delta.Rename(delta.CopyAndAppendKeyUint64(b.location, uint64(from)), uint64(to))
}
func (b Share_type_uint64_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Share_type_uint64_map) Set(value map[uint64]*Share) *delta.Op {
	return delta.Set(b.location, value)
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
func (b Share_type_string_map) Key(key string) Share_type {
	return NewShare_type(delta.CopyAndAppendKeyString(b.location, key))
}
func (b Share_type_string_map) Rename(from, to string) *delta.Op {
	return delta.Rename(delta.CopyAndAppendKeyString(b.location, from), to)
}
func (b Share_type_string_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Share_type_string_map) Set(value map[string]*Share) *delta.Op {
	return delta.Set(b.location, value)
}
