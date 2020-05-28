package foo

import "github.com/dave/protod/delta"

func Op() Op_root_type {
	return Op_root_type{}
}

type Op_root_type struct{}

func (Op_root_type) Foo() Foo_type {
	return Foo_type{}
}

type Foo_type struct {
	location []*delta.Locator
}

func (b Foo_type) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type(l []*delta.Locator) Foo_type {
	return Foo_type{location: l}
}
func (b Foo_type) Bar() delta.String_scalar {
	return delta.NewString_scalar(delta.CopyAndAppendField(b.location, "bar", 1))
}
func (b Foo_type) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Foo_type) Replace(value *Foo) *delta.Op {
	return delta.Replace(b.location, value)
}

type Foo_type_list struct {
	location []*delta.Locator
}

func (b Foo_type_list) Location_get() []*delta.Locator {
	return b.location
}
func NewFoo_type_list(l []*delta.Locator) Foo_type_list {
	return Foo_type_list{location: l}
}
func (b Foo_type_list) Index(i int) Foo_type {
	return NewFoo_type(delta.CopyAndAppendIndex(b.location, int64(i)))
}
func (b Foo_type_list) Insert(index int, value *Foo) *delta.Op {
	return delta.Insert(delta.CopyAndAppendIndex(b.location, int64(index)), value)
}
func (b Foo_type_list) Move(from, to int) *delta.Op {
	return delta.Move(delta.CopyAndAppendIndex(b.location, int64(from)), int64(to))
}
func (b Foo_type_list) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Foo_type_list) Replace(value []*Foo) *delta.Op {
	return delta.Replace(b.location, value)
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
func (b Foo_type_bool_map) Key(key bool) Foo_type {
	return NewFoo_type(delta.CopyAndAppendKeyBool(b.location, key))
}
func (b Foo_type_bool_map) Move(from, to bool) *delta.Op {
	return delta.Move(delta.CopyAndAppendKeyBool(b.location, from), to)
}
func (b Foo_type_bool_map) Insert(key bool, value *Foo) *delta.Op {
	return delta.Insert(delta.CopyAndAppendKeyBool(b.location, key), value)
}
func (b Foo_type_bool_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Foo_type_bool_map) Replace(value map[bool]*Foo) *delta.Op {
	return delta.Replace(b.location, value)
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
func (b Foo_type_int32_map) Key(key int) Foo_type {
	return NewFoo_type(delta.CopyAndAppendKeyInt32(b.location, int32(key)))
}
func (b Foo_type_int32_map) Move(from, to int) *delta.Op {
	return delta.Move(delta.CopyAndAppendKeyInt32(b.location, int32(from)), int32(to))
}
func (b Foo_type_int32_map) Insert(key int, value *Foo) *delta.Op {
	return delta.Insert(delta.CopyAndAppendKeyInt32(b.location, int32(key)), value)
}
func (b Foo_type_int32_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Foo_type_int32_map) Replace(value map[int32]*Foo) *delta.Op {
	return delta.Replace(b.location, value)
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
func (b Foo_type_int64_map) Key(key int) Foo_type {
	return NewFoo_type(delta.CopyAndAppendKeyInt64(b.location, int64(key)))
}
func (b Foo_type_int64_map) Move(from, to int) *delta.Op {
	return delta.Move(delta.CopyAndAppendKeyInt64(b.location, int64(from)), int64(to))
}
func (b Foo_type_int64_map) Insert(key int, value *Foo) *delta.Op {
	return delta.Insert(delta.CopyAndAppendKeyInt64(b.location, int64(key)), value)
}
func (b Foo_type_int64_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Foo_type_int64_map) Replace(value map[int64]*Foo) *delta.Op {
	return delta.Replace(b.location, value)
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
func (b Foo_type_uint32_map) Key(key int) Foo_type {
	return NewFoo_type(delta.CopyAndAppendKeyUint32(b.location, uint32(key)))
}
func (b Foo_type_uint32_map) Move(from, to int) *delta.Op {
	return delta.Move(delta.CopyAndAppendKeyUint32(b.location, uint32(from)), uint32(to))
}
func (b Foo_type_uint32_map) Insert(key int, value *Foo) *delta.Op {
	return delta.Insert(delta.CopyAndAppendKeyUint32(b.location, uint32(key)), value)
}
func (b Foo_type_uint32_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Foo_type_uint32_map) Replace(value map[uint32]*Foo) *delta.Op {
	return delta.Replace(b.location, value)
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
func (b Foo_type_uint64_map) Key(key int) Foo_type {
	return NewFoo_type(delta.CopyAndAppendKeyUint64(b.location, uint64(key)))
}
func (b Foo_type_uint64_map) Move(from, to int) *delta.Op {
	return delta.Move(delta.CopyAndAppendKeyUint64(b.location, uint64(from)), uint64(to))
}
func (b Foo_type_uint64_map) Insert(key int, value *Foo) *delta.Op {
	return delta.Insert(delta.CopyAndAppendKeyUint64(b.location, uint64(key)), value)
}
func (b Foo_type_uint64_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Foo_type_uint64_map) Replace(value map[uint64]*Foo) *delta.Op {
	return delta.Replace(b.location, value)
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
func (b Foo_type_string_map) Key(key string) Foo_type {
	return NewFoo_type(delta.CopyAndAppendKeyString(b.location, key))
}
func (b Foo_type_string_map) Move(from, to string) *delta.Op {
	return delta.Move(delta.CopyAndAppendKeyString(b.location, from), to)
}
func (b Foo_type_string_map) Insert(key string, value *Foo) *delta.Op {
	return delta.Insert(delta.CopyAndAppendKeyString(b.location, key), value)
}
func (b Foo_type_string_map) Delete() *delta.Op {
	return delta.Delete(b.location)
}
func (b Foo_type_string_map) Replace(value map[string]*Foo) *delta.Op {
	return delta.Replace(b.location, value)
}
