package foo

import "github.com/dave/protod/delta"

type Foo_type struct {
	location []*delta.Locator
}

func (b Foo_type) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type(l []*delta.Locator) Foo_type {
	return Foo_type{location: l}
}

type Foo_type_repeated struct {
	location []*delta.Locator
}

func (b Foo_type_repeated) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type_repeated(l []*delta.Locator) Foo_type_repeated {
	return Foo_type_repeated{location: l}
}
func (b Foo_type_repeated) Index(i int) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Index{Index: int64(i)}}))
}
func (b Foo_type_repeated) Index64(i int64) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Index{Index: i}}))
}

type Foo_type_bool_map struct {
	location []*delta.Locator
}

func (b Foo_type_bool_map) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type_bool_map(l []*delta.Locator) Foo_type_bool_map {
	return Foo_type_bool_map{location: l}
}
func (b Foo_type_bool_map) Key(k bool) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Bool{Bool: k}}}}))
}

type Foo_type_int32_map struct {
	location []*delta.Locator
}

func (b Foo_type_int32_map) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type_int32_map(l []*delta.Locator) Foo_type_int32_map {
	return Foo_type_int32_map{location: l}
}
func (b Foo_type_int32_map) Key(k int) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Int32{Int32: int32(k)}}}}))
}
func (b Foo_type_int32_map) Key32(k int32) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Int32{Int32: k}}}}))
}

type Foo_type_int64_map struct {
	location []*delta.Locator
}

func (b Foo_type_int64_map) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type_int64_map(l []*delta.Locator) Foo_type_int64_map {
	return Foo_type_int64_map{location: l}
}
func (b Foo_type_int64_map) Key(k int) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Int64{Int64: int64(k)}}}}))
}
func (b Foo_type_int64_map) Key64(k int64) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Int64{Int64: k}}}}))
}

type Foo_type_uint32_map struct {
	location []*delta.Locator
}

func (b Foo_type_uint32_map) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type_uint32_map(l []*delta.Locator) Foo_type_uint32_map {
	return Foo_type_uint32_map{location: l}
}
func (b Foo_type_uint32_map) Key(k int) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Uint32{Uint32: uint32(k)}}}}))
}
func (b Foo_type_uint32_map) Key32(k uint32) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Uint32{Uint32: k}}}}))
}

type Foo_type_uint64_map struct {
	location []*delta.Locator
}

func (b Foo_type_uint64_map) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type_uint64_map(l []*delta.Locator) Foo_type_uint64_map {
	return Foo_type_uint64_map{location: l}
}
func (b Foo_type_uint64_map) Key(k int) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Uint64{Uint64: uint64(k)}}}}))
}
func (b Foo_type_uint64_map) Key64(k uint64) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_Uint64{Uint64: k}}}}))
}

type Foo_type_string_map struct {
	location []*delta.Locator
}

func (b Foo_type_string_map) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type_string_map(l []*delta.Locator) Foo_type_string_map {
	return Foo_type_string_map{location: l}
}
func (b Foo_type_string_map) Key(k string) Foo_type {
	return NewFoo_type(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Key{Key: &delta.Key{V: &delta.Key_String_{String_: k}}}}))
}
func FooDef() Foo_type {
	return Foo_type{}
}
func (b Foo_type) Bar() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppend(b.location, &delta.Locator{V: &delta.Locator_Field{Field: &delta.Field{
		Name:   "bar",
		Number: 1,
	}}}))
}
