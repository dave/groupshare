package data

import "github.com/dave/protod/packages/pdelta/pkg/pdelta"

func Op() Op_root_type {
	return Op_root_type{}
}

type Op_root_type struct{}

func (Op_root_type) Share() Share_type {
	return Share_type{}
}
func (Op_root_type) User() User_type {
	return User_type{}
}
func (Op_root_type) User_Share() User_Share_type {
	return User_Share_type{}
}

type Share_type struct {
	location []*pdelta.Locator
}

func (b Share_type) Location_get() []*pdelta.Locator {
	return b.location
}
func NewShare_type(l []*pdelta.Locator) Share_type {
	return Share_type{location: l}
}
func (b Share_type) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b Share_type) Set(value *Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}
func (b Share_type) Name() pdelta.String_scalar {
	return pdelta.NewString_scalar(pdelta.CopyAndAppendField(b.location, "data.Share", "name", 1))
}
func (b Share_type) Description() pdelta.String_scalar {
	return pdelta.NewString_scalar(pdelta.CopyAndAppendField(b.location, "data.Share", "description", 2))
}

type Share_list struct {
	location []*pdelta.Locator
}

func (b Share_list) Location_get() []*pdelta.Locator {
	return b.location
}
func NewShare_list(l []*pdelta.Locator) Share_list {
	return Share_list{location: l}
}
func (b Share_list) Index(i int) Share_type {
	return NewShare_type(pdelta.CopyAndAppendIndex(b.location, int64(i)))
}
func (b Share_list) Insert(index int, value *Share) *pdelta.Op {
	return pdelta.Insert(pdelta.CopyAndAppendIndex(b.location, int64(index)), value)
}
func (b Share_list) Move(from, to int) *pdelta.Op {
	return pdelta.Move(pdelta.CopyAndAppendIndex(b.location, int64(from)), int64(to))
}
func (b Share_list) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b Share_list) Set(value []*Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type Share_bool_map struct {
	location []*pdelta.Locator
}

func (b Share_bool_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewShare_bool_map(l []*pdelta.Locator) Share_bool_map {
	return Share_bool_map{location: l}
}
func (b Share_bool_map) Key(key bool) Share_type {
	return NewShare_type(pdelta.CopyAndAppendKeyBool(b.location, key))
}
func (b Share_bool_map) Rename(from, to bool) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyBool(b.location, from), to)
}
func (b Share_bool_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b Share_bool_map) Set(value map[bool]*Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type Share_int32_map struct {
	location []*pdelta.Locator
}

func (b Share_int32_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewShare_int32_map(l []*pdelta.Locator) Share_int32_map {
	return Share_int32_map{location: l}
}
func (b Share_int32_map) Key(key int) Share_type {
	return NewShare_type(pdelta.CopyAndAppendKeyInt32(b.location, int32(key)))
}
func (b Share_int32_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyInt32(b.location, int32(from)), int32(to))
}
func (b Share_int32_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b Share_int32_map) Set(value map[int32]*Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type Share_int64_map struct {
	location []*pdelta.Locator
}

func (b Share_int64_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewShare_int64_map(l []*pdelta.Locator) Share_int64_map {
	return Share_int64_map{location: l}
}
func (b Share_int64_map) Key(key int) Share_type {
	return NewShare_type(pdelta.CopyAndAppendKeyInt64(b.location, int64(key)))
}
func (b Share_int64_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyInt64(b.location, int64(from)), int64(to))
}
func (b Share_int64_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b Share_int64_map) Set(value map[int64]*Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type Share_uint32_map struct {
	location []*pdelta.Locator
}

func (b Share_uint32_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewShare_uint32_map(l []*pdelta.Locator) Share_uint32_map {
	return Share_uint32_map{location: l}
}
func (b Share_uint32_map) Key(key int) Share_type {
	return NewShare_type(pdelta.CopyAndAppendKeyUint32(b.location, uint32(key)))
}
func (b Share_uint32_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyUint32(b.location, uint32(from)), uint32(to))
}
func (b Share_uint32_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b Share_uint32_map) Set(value map[uint32]*Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type Share_uint64_map struct {
	location []*pdelta.Locator
}

func (b Share_uint64_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewShare_uint64_map(l []*pdelta.Locator) Share_uint64_map {
	return Share_uint64_map{location: l}
}
func (b Share_uint64_map) Key(key int) Share_type {
	return NewShare_type(pdelta.CopyAndAppendKeyUint64(b.location, uint64(key)))
}
func (b Share_uint64_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyUint64(b.location, uint64(from)), uint64(to))
}
func (b Share_uint64_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b Share_uint64_map) Set(value map[uint64]*Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type Share_string_map struct {
	location []*pdelta.Locator
}

func (b Share_string_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewShare_string_map(l []*pdelta.Locator) Share_string_map {
	return Share_string_map{location: l}
}
func (b Share_string_map) Key(key string) Share_type {
	return NewShare_type(pdelta.CopyAndAppendKeyString(b.location, key))
}
func (b Share_string_map) Rename(from, to string) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyString(b.location, from), to)
}
func (b Share_string_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b Share_string_map) Set(value map[string]*Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_type struct {
	location []*pdelta.Locator
}

func (b User_type) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_type(l []*pdelta.Locator) User_type {
	return User_type{location: l}
}
func (b User_type) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_type) Set(value *User) *pdelta.Op {
	return pdelta.Set(b.location, value)
}
func (b User_type) Favourites() User_Share_list {
	return NewUser_Share_list(pdelta.CopyAndAppendField(b.location, "data.User", "favourites", 1))
}
func (b User_type) All() pdelta.String_string_map {
	return pdelta.NewString_string_map(pdelta.CopyAndAppendField(b.location, "data.User", "all", 2))
}

type User_list struct {
	location []*pdelta.Locator
}

func (b User_list) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_list(l []*pdelta.Locator) User_list {
	return User_list{location: l}
}
func (b User_list) Index(i int) User_type {
	return NewUser_type(pdelta.CopyAndAppendIndex(b.location, int64(i)))
}
func (b User_list) Insert(index int, value *User) *pdelta.Op {
	return pdelta.Insert(pdelta.CopyAndAppendIndex(b.location, int64(index)), value)
}
func (b User_list) Move(from, to int) *pdelta.Op {
	return pdelta.Move(pdelta.CopyAndAppendIndex(b.location, int64(from)), int64(to))
}
func (b User_list) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_list) Set(value []*User) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_bool_map struct {
	location []*pdelta.Locator
}

func (b User_bool_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_bool_map(l []*pdelta.Locator) User_bool_map {
	return User_bool_map{location: l}
}
func (b User_bool_map) Key(key bool) User_type {
	return NewUser_type(pdelta.CopyAndAppendKeyBool(b.location, key))
}
func (b User_bool_map) Rename(from, to bool) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyBool(b.location, from), to)
}
func (b User_bool_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_bool_map) Set(value map[bool]*User) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_int32_map struct {
	location []*pdelta.Locator
}

func (b User_int32_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_int32_map(l []*pdelta.Locator) User_int32_map {
	return User_int32_map{location: l}
}
func (b User_int32_map) Key(key int) User_type {
	return NewUser_type(pdelta.CopyAndAppendKeyInt32(b.location, int32(key)))
}
func (b User_int32_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyInt32(b.location, int32(from)), int32(to))
}
func (b User_int32_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_int32_map) Set(value map[int32]*User) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_int64_map struct {
	location []*pdelta.Locator
}

func (b User_int64_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_int64_map(l []*pdelta.Locator) User_int64_map {
	return User_int64_map{location: l}
}
func (b User_int64_map) Key(key int) User_type {
	return NewUser_type(pdelta.CopyAndAppendKeyInt64(b.location, int64(key)))
}
func (b User_int64_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyInt64(b.location, int64(from)), int64(to))
}
func (b User_int64_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_int64_map) Set(value map[int64]*User) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_uint32_map struct {
	location []*pdelta.Locator
}

func (b User_uint32_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_uint32_map(l []*pdelta.Locator) User_uint32_map {
	return User_uint32_map{location: l}
}
func (b User_uint32_map) Key(key int) User_type {
	return NewUser_type(pdelta.CopyAndAppendKeyUint32(b.location, uint32(key)))
}
func (b User_uint32_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyUint32(b.location, uint32(from)), uint32(to))
}
func (b User_uint32_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_uint32_map) Set(value map[uint32]*User) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_uint64_map struct {
	location []*pdelta.Locator
}

func (b User_uint64_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_uint64_map(l []*pdelta.Locator) User_uint64_map {
	return User_uint64_map{location: l}
}
func (b User_uint64_map) Key(key int) User_type {
	return NewUser_type(pdelta.CopyAndAppendKeyUint64(b.location, uint64(key)))
}
func (b User_uint64_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyUint64(b.location, uint64(from)), uint64(to))
}
func (b User_uint64_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_uint64_map) Set(value map[uint64]*User) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_string_map struct {
	location []*pdelta.Locator
}

func (b User_string_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_string_map(l []*pdelta.Locator) User_string_map {
	return User_string_map{location: l}
}
func (b User_string_map) Key(key string) User_type {
	return NewUser_type(pdelta.CopyAndAppendKeyString(b.location, key))
}
func (b User_string_map) Rename(from, to string) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyString(b.location, from), to)
}
func (b User_string_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_string_map) Set(value map[string]*User) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_Share_type struct {
	location []*pdelta.Locator
}

func (b User_Share_type) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_Share_type(l []*pdelta.Locator) User_Share_type {
	return User_Share_type{location: l}
}
func (b User_Share_type) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_Share_type) Set(value *User_Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}
func (b User_Share_type) Id() pdelta.String_scalar {
	return pdelta.NewString_scalar(pdelta.CopyAndAppendField(b.location, "data.User.Share", "id", 1))
}
func (b User_Share_type) Name() pdelta.String_scalar {
	return pdelta.NewString_scalar(pdelta.CopyAndAppendField(b.location, "data.User.Share", "name", 2))
}

type User_Share_list struct {
	location []*pdelta.Locator
}

func (b User_Share_list) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_Share_list(l []*pdelta.Locator) User_Share_list {
	return User_Share_list{location: l}
}
func (b User_Share_list) Index(i int) User_Share_type {
	return NewUser_Share_type(pdelta.CopyAndAppendIndex(b.location, int64(i)))
}
func (b User_Share_list) Insert(index int, value *User_Share) *pdelta.Op {
	return pdelta.Insert(pdelta.CopyAndAppendIndex(b.location, int64(index)), value)
}
func (b User_Share_list) Move(from, to int) *pdelta.Op {
	return pdelta.Move(pdelta.CopyAndAppendIndex(b.location, int64(from)), int64(to))
}
func (b User_Share_list) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_Share_list) Set(value []*User_Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_Share_bool_map struct {
	location []*pdelta.Locator
}

func (b User_Share_bool_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_Share_bool_map(l []*pdelta.Locator) User_Share_bool_map {
	return User_Share_bool_map{location: l}
}
func (b User_Share_bool_map) Key(key bool) User_Share_type {
	return NewUser_Share_type(pdelta.CopyAndAppendKeyBool(b.location, key))
}
func (b User_Share_bool_map) Rename(from, to bool) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyBool(b.location, from), to)
}
func (b User_Share_bool_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_Share_bool_map) Set(value map[bool]*User_Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_Share_int32_map struct {
	location []*pdelta.Locator
}

func (b User_Share_int32_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_Share_int32_map(l []*pdelta.Locator) User_Share_int32_map {
	return User_Share_int32_map{location: l}
}
func (b User_Share_int32_map) Key(key int) User_Share_type {
	return NewUser_Share_type(pdelta.CopyAndAppendKeyInt32(b.location, int32(key)))
}
func (b User_Share_int32_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyInt32(b.location, int32(from)), int32(to))
}
func (b User_Share_int32_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_Share_int32_map) Set(value map[int32]*User_Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_Share_int64_map struct {
	location []*pdelta.Locator
}

func (b User_Share_int64_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_Share_int64_map(l []*pdelta.Locator) User_Share_int64_map {
	return User_Share_int64_map{location: l}
}
func (b User_Share_int64_map) Key(key int) User_Share_type {
	return NewUser_Share_type(pdelta.CopyAndAppendKeyInt64(b.location, int64(key)))
}
func (b User_Share_int64_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyInt64(b.location, int64(from)), int64(to))
}
func (b User_Share_int64_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_Share_int64_map) Set(value map[int64]*User_Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_Share_uint32_map struct {
	location []*pdelta.Locator
}

func (b User_Share_uint32_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_Share_uint32_map(l []*pdelta.Locator) User_Share_uint32_map {
	return User_Share_uint32_map{location: l}
}
func (b User_Share_uint32_map) Key(key int) User_Share_type {
	return NewUser_Share_type(pdelta.CopyAndAppendKeyUint32(b.location, uint32(key)))
}
func (b User_Share_uint32_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyUint32(b.location, uint32(from)), uint32(to))
}
func (b User_Share_uint32_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_Share_uint32_map) Set(value map[uint32]*User_Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_Share_uint64_map struct {
	location []*pdelta.Locator
}

func (b User_Share_uint64_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_Share_uint64_map(l []*pdelta.Locator) User_Share_uint64_map {
	return User_Share_uint64_map{location: l}
}
func (b User_Share_uint64_map) Key(key int) User_Share_type {
	return NewUser_Share_type(pdelta.CopyAndAppendKeyUint64(b.location, uint64(key)))
}
func (b User_Share_uint64_map) Rename(from, to int) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyUint64(b.location, uint64(from)), uint64(to))
}
func (b User_Share_uint64_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_Share_uint64_map) Set(value map[uint64]*User_Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}

type User_Share_string_map struct {
	location []*pdelta.Locator
}

func (b User_Share_string_map) Location_get() []*pdelta.Locator {
	return b.location
}
func NewUser_Share_string_map(l []*pdelta.Locator) User_Share_string_map {
	return User_Share_string_map{location: l}
}
func (b User_Share_string_map) Key(key string) User_Share_type {
	return NewUser_Share_type(pdelta.CopyAndAppendKeyString(b.location, key))
}
func (b User_Share_string_map) Rename(from, to string) *pdelta.Op {
	return pdelta.Rename(pdelta.CopyAndAppendKeyString(b.location, from), to)
}
func (b User_Share_string_map) Delete() *pdelta.Op {
	return pdelta.Delete(b.location)
}
func (b User_Share_string_map) Set(value map[string]*User_Share) *pdelta.Op {
	return pdelta.Set(b.location, value)
}
