// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.21.0
// 	protoc        v3.11.4
// source: protod/delta.proto

package delta

import (
	proto "github.com/golang/protobuf/proto"
	any "github.com/golang/protobuf/ptypes/any"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// This is a compile-time assertion that a sufficiently up-to-date version
// of the legacy proto package is being used.
const _ = proto.ProtoPackageIsVersion4

type Op_Type int32

const (
	Op_Edit   Op_Type = 0 // edit the value or create a new value when the value is null
	Op_Append Op_Type = 1 // append to the end of a list
	Op_Insert Op_Type = 2 // insert at a specific location in a list or map
	Op_Move   Op_Type = 3 // move in a list or change the key in a map
	Op_Delete Op_Type = 4 // delete from a list or map, or make the value null
)

// Enum value maps for Op_Type.
var (
	Op_Type_name = map[int32]string{
		0: "Edit",
		1: "Append",
		2: "Insert",
		3: "Move",
		4: "Delete",
	}
	Op_Type_value = map[string]int32{
		"Edit":   0,
		"Append": 1,
		"Insert": 2,
		"Move":   3,
		"Delete": 4,
	}
)

func (x Op_Type) Enum() *Op_Type {
	p := new(Op_Type)
	*p = x
	return p
}

func (x Op_Type) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (Op_Type) Descriptor() protoreflect.EnumDescriptor {
	return file_protod_delta_proto_enumTypes[0].Descriptor()
}

func (Op_Type) Type() protoreflect.EnumType {
	return &file_protod_delta_proto_enumTypes[0]
}

func (x Op_Type) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use Op_Type.Descriptor instead.
func (Op_Type) EnumDescriptor() ([]byte, []int) {
	return file_protod_delta_proto_rawDescGZIP(), []int{0, 0}
}

type Op struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Type     Op_Type    `protobuf:"varint,1,opt,name=type,proto3,enum=delta.Op_Type" json:"type,omitempty"`
	Location []*Locator `protobuf:"bytes,2,rep,name=location,proto3" json:"location,omitempty"`
	Value    *any.Any   `protobuf:"bytes,3,opt,name=value,proto3" json:"value,omitempty"`
}

func (x *Op) Reset() {
	*x = Op{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protod_delta_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Op) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Op) ProtoMessage() {}

func (x *Op) ProtoReflect() protoreflect.Message {
	mi := &file_protod_delta_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Op.ProtoReflect.Descriptor instead.
func (*Op) Descriptor() ([]byte, []int) {
	return file_protod_delta_proto_rawDescGZIP(), []int{0}
}

func (x *Op) GetType() Op_Type {
	if x != nil {
		return x.Type
	}
	return Op_Edit
}

func (x *Op) GetLocation() []*Locator {
	if x != nil {
		return x.Location
	}
	return nil
}

func (x *Op) GetValue() *any.Any {
	if x != nil {
		return x.Value
	}
	return nil
}

type Locator struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to V:
	//	*Locator_Field
	//	*Locator_Index
	//	*Locator_Key
	V isLocator_V `protobuf_oneof:"v"`
}

func (x *Locator) Reset() {
	*x = Locator{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protod_delta_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Locator) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Locator) ProtoMessage() {}

func (x *Locator) ProtoReflect() protoreflect.Message {
	mi := &file_protod_delta_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Locator.ProtoReflect.Descriptor instead.
func (*Locator) Descriptor() ([]byte, []int) {
	return file_protod_delta_proto_rawDescGZIP(), []int{1}
}

func (m *Locator) GetV() isLocator_V {
	if m != nil {
		return m.V
	}
	return nil
}

func (x *Locator) GetField() *Field {
	if x, ok := x.GetV().(*Locator_Field); ok {
		return x.Field
	}
	return nil
}

func (x *Locator) GetIndex() int64 {
	if x, ok := x.GetV().(*Locator_Index); ok {
		return x.Index
	}
	return 0
}

func (x *Locator) GetKey() *Key {
	if x, ok := x.GetV().(*Locator_Key); ok {
		return x.Key
	}
	return nil
}

type isLocator_V interface {
	isLocator_V()
}

type Locator_Field struct {
	Field *Field `protobuf:"bytes,1,opt,name=field,proto3,oneof"`
}

type Locator_Index struct {
	Index int64 `protobuf:"varint,2,opt,name=index,proto3,oneof"`
}

type Locator_Key struct {
	Key *Key `protobuf:"bytes,3,opt,name=key,proto3,oneof"`
}

func (*Locator_Field) isLocator_V() {}

func (*Locator_Index) isLocator_V() {}

func (*Locator_Key) isLocator_V() {}

type Key struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to V:
	//	*Key_Bool
	//	*Key_Int32
	//	*Key_Int64
	//	*Key_Uint32
	//	*Key_Uint64
	//	*Key_String_
	V isKey_V `protobuf_oneof:"v"`
}

func (x *Key) Reset() {
	*x = Key{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protod_delta_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Key) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Key) ProtoMessage() {}

func (x *Key) ProtoReflect() protoreflect.Message {
	mi := &file_protod_delta_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Key.ProtoReflect.Descriptor instead.
func (*Key) Descriptor() ([]byte, []int) {
	return file_protod_delta_proto_rawDescGZIP(), []int{2}
}

func (m *Key) GetV() isKey_V {
	if m != nil {
		return m.V
	}
	return nil
}

func (x *Key) GetBool() bool {
	if x, ok := x.GetV().(*Key_Bool); ok {
		return x.Bool
	}
	return false
}

func (x *Key) GetInt32() int32 {
	if x, ok := x.GetV().(*Key_Int32); ok {
		return x.Int32
	}
	return 0
}

func (x *Key) GetInt64() int64 {
	if x, ok := x.GetV().(*Key_Int64); ok {
		return x.Int64
	}
	return 0
}

func (x *Key) GetUint32() uint32 {
	if x, ok := x.GetV().(*Key_Uint32); ok {
		return x.Uint32
	}
	return 0
}

func (x *Key) GetUint64() uint64 {
	if x, ok := x.GetV().(*Key_Uint64); ok {
		return x.Uint64
	}
	return 0
}

func (x *Key) GetString_() string {
	if x, ok := x.GetV().(*Key_String_); ok {
		return x.String_
	}
	return ""
}

type isKey_V interface {
	isKey_V()
}

type Key_Bool struct {
	Bool bool `protobuf:"varint,1,opt,name=bool,proto3,oneof"`
}

type Key_Int32 struct {
	Int32 int32 `protobuf:"varint,2,opt,name=int32,proto3,oneof"`
}

type Key_Int64 struct {
	Int64 int64 `protobuf:"varint,3,opt,name=int64,proto3,oneof"`
}

type Key_Uint32 struct {
	Uint32 uint32 `protobuf:"varint,4,opt,name=uint32,proto3,oneof"`
}

type Key_Uint64 struct {
	Uint64 uint64 `protobuf:"varint,5,opt,name=uint64,proto3,oneof"`
}

type Key_String_ struct {
	String_ string `protobuf:"bytes,6,opt,name=string,proto3,oneof"`
}

func (*Key_Bool) isKey_V() {}

func (*Key_Int32) isKey_V() {}

func (*Key_Int64) isKey_V() {}

func (*Key_Uint32) isKey_V() {}

func (*Key_Uint64) isKey_V() {}

func (*Key_String_) isKey_V() {}

type Field struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name   string `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
	Number int32  `protobuf:"varint,2,opt,name=number,proto3" json:"number,omitempty"`
}

func (x *Field) Reset() {
	*x = Field{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protod_delta_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Field) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Field) ProtoMessage() {}

func (x *Field) ProtoReflect() protoreflect.Message {
	mi := &file_protod_delta_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Field.ProtoReflect.Descriptor instead.
func (*Field) Descriptor() ([]byte, []int) {
	return file_protod_delta_proto_rawDescGZIP(), []int{3}
}

func (x *Field) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *Field) GetNumber() int32 {
	if x != nil {
		return x.Number
	}
	return 0
}

type Scalar struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to V:
	//	*Scalar_Double
	//	*Scalar_Float
	//	*Scalar_Int32
	//	*Scalar_Int64
	//	*Scalar_Uint32
	//	*Scalar_Uint64
	//	*Scalar_Sint32
	//	*Scalar_Sint64
	//	*Scalar_Fixed32
	//	*Scalar_Fixed64
	//	*Scalar_Sfixed32
	//	*Scalar_Sfixed64
	//	*Scalar_Bool
	//	*Scalar_String_
	//	*Scalar_Bytes
	//	*Scalar_Diff
	V isScalar_V `protobuf_oneof:"v"`
}

func (x *Scalar) Reset() {
	*x = Scalar{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protod_delta_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Scalar) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Scalar) ProtoMessage() {}

func (x *Scalar) ProtoReflect() protoreflect.Message {
	mi := &file_protod_delta_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Scalar.ProtoReflect.Descriptor instead.
func (*Scalar) Descriptor() ([]byte, []int) {
	return file_protod_delta_proto_rawDescGZIP(), []int{4}
}

func (m *Scalar) GetV() isScalar_V {
	if m != nil {
		return m.V
	}
	return nil
}

func (x *Scalar) GetDouble() float64 {
	if x, ok := x.GetV().(*Scalar_Double); ok {
		return x.Double
	}
	return 0
}

func (x *Scalar) GetFloat() float32 {
	if x, ok := x.GetV().(*Scalar_Float); ok {
		return x.Float
	}
	return 0
}

func (x *Scalar) GetInt32() int32 {
	if x, ok := x.GetV().(*Scalar_Int32); ok {
		return x.Int32
	}
	return 0
}

func (x *Scalar) GetInt64() int64 {
	if x, ok := x.GetV().(*Scalar_Int64); ok {
		return x.Int64
	}
	return 0
}

func (x *Scalar) GetUint32() uint32 {
	if x, ok := x.GetV().(*Scalar_Uint32); ok {
		return x.Uint32
	}
	return 0
}

func (x *Scalar) GetUint64() uint64 {
	if x, ok := x.GetV().(*Scalar_Uint64); ok {
		return x.Uint64
	}
	return 0
}

func (x *Scalar) GetSint32() int32 {
	if x, ok := x.GetV().(*Scalar_Sint32); ok {
		return x.Sint32
	}
	return 0
}

func (x *Scalar) GetSint64() int64 {
	if x, ok := x.GetV().(*Scalar_Sint64); ok {
		return x.Sint64
	}
	return 0
}

func (x *Scalar) GetFixed32() uint32 {
	if x, ok := x.GetV().(*Scalar_Fixed32); ok {
		return x.Fixed32
	}
	return 0
}

func (x *Scalar) GetFixed64() uint64 {
	if x, ok := x.GetV().(*Scalar_Fixed64); ok {
		return x.Fixed64
	}
	return 0
}

func (x *Scalar) GetSfixed32() int32 {
	if x, ok := x.GetV().(*Scalar_Sfixed32); ok {
		return x.Sfixed32
	}
	return 0
}

func (x *Scalar) GetSfixed64() int64 {
	if x, ok := x.GetV().(*Scalar_Sfixed64); ok {
		return x.Sfixed64
	}
	return 0
}

func (x *Scalar) GetBool() bool {
	if x, ok := x.GetV().(*Scalar_Bool); ok {
		return x.Bool
	}
	return false
}

func (x *Scalar) GetString_() string {
	if x, ok := x.GetV().(*Scalar_String_); ok {
		return x.String_
	}
	return ""
}

func (x *Scalar) GetBytes() []byte {
	if x, ok := x.GetV().(*Scalar_Bytes); ok {
		return x.Bytes
	}
	return nil
}

func (x *Scalar) GetDiff() string {
	if x, ok := x.GetV().(*Scalar_Diff); ok {
		return x.Diff
	}
	return ""
}

type isScalar_V interface {
	isScalar_V()
}

type Scalar_Double struct {
	Double float64 `protobuf:"fixed64,1,opt,name=double,proto3,oneof"`
}

type Scalar_Float struct {
	Float float32 `protobuf:"fixed32,2,opt,name=float,proto3,oneof"`
}

type Scalar_Int32 struct {
	Int32 int32 `protobuf:"varint,3,opt,name=int32,proto3,oneof"`
}

type Scalar_Int64 struct {
	Int64 int64 `protobuf:"varint,4,opt,name=int64,proto3,oneof"`
}

type Scalar_Uint32 struct {
	Uint32 uint32 `protobuf:"varint,5,opt,name=uint32,proto3,oneof"`
}

type Scalar_Uint64 struct {
	Uint64 uint64 `protobuf:"varint,6,opt,name=uint64,proto3,oneof"`
}

type Scalar_Sint32 struct {
	Sint32 int32 `protobuf:"zigzag32,7,opt,name=sint32,proto3,oneof"`
}

type Scalar_Sint64 struct {
	Sint64 int64 `protobuf:"zigzag64,8,opt,name=sint64,proto3,oneof"`
}

type Scalar_Fixed32 struct {
	Fixed32 uint32 `protobuf:"fixed32,9,opt,name=fixed32,proto3,oneof"`
}

type Scalar_Fixed64 struct {
	Fixed64 uint64 `protobuf:"fixed64,10,opt,name=fixed64,proto3,oneof"`
}

type Scalar_Sfixed32 struct {
	Sfixed32 int32 `protobuf:"fixed32,11,opt,name=sfixed32,proto3,oneof"`
}

type Scalar_Sfixed64 struct {
	Sfixed64 int64 `protobuf:"fixed64,12,opt,name=sfixed64,proto3,oneof"`
}

type Scalar_Bool struct {
	Bool bool `protobuf:"varint,13,opt,name=bool,proto3,oneof"`
}

type Scalar_String_ struct {
	String_ string `protobuf:"bytes,14,opt,name=string,proto3,oneof"`
}

type Scalar_Bytes struct {
	Bytes []byte `protobuf:"bytes,15,opt,name=bytes,proto3,oneof"`
}

type Scalar_Diff struct {
	Diff string `protobuf:"bytes,16,opt,name=diff,proto3,oneof"`
}

func (*Scalar_Double) isScalar_V() {}

func (*Scalar_Float) isScalar_V() {}

func (*Scalar_Int32) isScalar_V() {}

func (*Scalar_Int64) isScalar_V() {}

func (*Scalar_Uint32) isScalar_V() {}

func (*Scalar_Uint64) isScalar_V() {}

func (*Scalar_Sint32) isScalar_V() {}

func (*Scalar_Sint64) isScalar_V() {}

func (*Scalar_Fixed32) isScalar_V() {}

func (*Scalar_Fixed64) isScalar_V() {}

func (*Scalar_Sfixed32) isScalar_V() {}

func (*Scalar_Sfixed64) isScalar_V() {}

func (*Scalar_Bool) isScalar_V() {}

func (*Scalar_String_) isScalar_V() {}

func (*Scalar_Bytes) isScalar_V() {}

func (*Scalar_Diff) isScalar_V() {}

var File_protod_delta_proto protoreflect.FileDescriptor

var file_protod_delta_proto_rawDesc = []byte{
	0x0a, 0x12, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x64, 0x2f, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x12, 0x05, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x1a, 0x19, 0x67, 0x6f, 0x6f,
	0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x61, 0x6e, 0x79,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xc0, 0x01, 0x0a, 0x02, 0x4f, 0x70, 0x12, 0x22, 0x0a,
	0x04, 0x74, 0x79, 0x70, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x0e, 0x2e, 0x64, 0x65,
	0x6c, 0x74, 0x61, 0x2e, 0x4f, 0x70, 0x2e, 0x54, 0x79, 0x70, 0x65, 0x52, 0x04, 0x74, 0x79, 0x70,
	0x65, 0x12, 0x2a, 0x0a, 0x08, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x02, 0x20,
	0x03, 0x28, 0x0b, 0x32, 0x0e, 0x2e, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x2e, 0x4c, 0x6f, 0x63, 0x61,
	0x74, 0x6f, 0x72, 0x52, 0x08, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x2a, 0x0a,
	0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x14, 0x2e, 0x67,
	0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x41,
	0x6e, 0x79, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x22, 0x3e, 0x0a, 0x04, 0x54, 0x79, 0x70,
	0x65, 0x12, 0x08, 0x0a, 0x04, 0x45, 0x64, 0x69, 0x74, 0x10, 0x00, 0x12, 0x0a, 0x0a, 0x06, 0x41,
	0x70, 0x70, 0x65, 0x6e, 0x64, 0x10, 0x01, 0x12, 0x0a, 0x0a, 0x06, 0x49, 0x6e, 0x73, 0x65, 0x72,
	0x74, 0x10, 0x02, 0x12, 0x08, 0x0a, 0x04, 0x4d, 0x6f, 0x76, 0x65, 0x10, 0x03, 0x12, 0x0a, 0x0a,
	0x06, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x10, 0x04, 0x22, 0x6c, 0x0a, 0x07, 0x4c, 0x6f, 0x63,
	0x61, 0x74, 0x6f, 0x72, 0x12, 0x24, 0x0a, 0x05, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x0c, 0x2e, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x2e, 0x46, 0x69, 0x65, 0x6c,
	0x64, 0x48, 0x00, 0x52, 0x05, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x12, 0x16, 0x0a, 0x05, 0x69, 0x6e,
	0x64, 0x65, 0x78, 0x18, 0x02, 0x20, 0x01, 0x28, 0x03, 0x48, 0x00, 0x52, 0x05, 0x69, 0x6e, 0x64,
	0x65, 0x78, 0x12, 0x1e, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x0a, 0x2e, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x2e, 0x4b, 0x65, 0x79, 0x48, 0x00, 0x52, 0x03, 0x6b,
	0x65, 0x79, 0x42, 0x03, 0x0a, 0x01, 0x76, 0x22, 0x9e, 0x01, 0x0a, 0x03, 0x4b, 0x65, 0x79, 0x12,
	0x14, 0x0a, 0x04, 0x62, 0x6f, 0x6f, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x08, 0x48, 0x00, 0x52,
	0x04, 0x62, 0x6f, 0x6f, 0x6c, 0x12, 0x16, 0x0a, 0x05, 0x69, 0x6e, 0x74, 0x33, 0x32, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x05, 0x48, 0x00, 0x52, 0x05, 0x69, 0x6e, 0x74, 0x33, 0x32, 0x12, 0x16, 0x0a,
	0x05, 0x69, 0x6e, 0x74, 0x36, 0x34, 0x18, 0x03, 0x20, 0x01, 0x28, 0x03, 0x48, 0x00, 0x52, 0x05,
	0x69, 0x6e, 0x74, 0x36, 0x34, 0x12, 0x18, 0x0a, 0x06, 0x75, 0x69, 0x6e, 0x74, 0x33, 0x32, 0x18,
	0x04, 0x20, 0x01, 0x28, 0x0d, 0x48, 0x00, 0x52, 0x06, 0x75, 0x69, 0x6e, 0x74, 0x33, 0x32, 0x12,
	0x18, 0x0a, 0x06, 0x75, 0x69, 0x6e, 0x74, 0x36, 0x34, 0x18, 0x05, 0x20, 0x01, 0x28, 0x04, 0x48,
	0x00, 0x52, 0x06, 0x75, 0x69, 0x6e, 0x74, 0x36, 0x34, 0x12, 0x18, 0x0a, 0x06, 0x73, 0x74, 0x72,
	0x69, 0x6e, 0x67, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x06, 0x73, 0x74, 0x72,
	0x69, 0x6e, 0x67, 0x42, 0x03, 0x0a, 0x01, 0x76, 0x22, 0x33, 0x0a, 0x05, 0x46, 0x69, 0x65, 0x6c,
	0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x06, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x22, 0xa9, 0x03,
	0x0a, 0x06, 0x53, 0x63, 0x61, 0x6c, 0x61, 0x72, 0x12, 0x18, 0x0a, 0x06, 0x64, 0x6f, 0x75, 0x62,
	0x6c, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x01, 0x48, 0x00, 0x52, 0x06, 0x64, 0x6f, 0x75, 0x62,
	0x6c, 0x65, 0x12, 0x16, 0x0a, 0x05, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x02, 0x48, 0x00, 0x52, 0x05, 0x66, 0x6c, 0x6f, 0x61, 0x74, 0x12, 0x16, 0x0a, 0x05, 0x69, 0x6e,
	0x74, 0x33, 0x32, 0x18, 0x03, 0x20, 0x01, 0x28, 0x05, 0x48, 0x00, 0x52, 0x05, 0x69, 0x6e, 0x74,
	0x33, 0x32, 0x12, 0x16, 0x0a, 0x05, 0x69, 0x6e, 0x74, 0x36, 0x34, 0x18, 0x04, 0x20, 0x01, 0x28,
	0x03, 0x48, 0x00, 0x52, 0x05, 0x69, 0x6e, 0x74, 0x36, 0x34, 0x12, 0x18, 0x0a, 0x06, 0x75, 0x69,
	0x6e, 0x74, 0x33, 0x32, 0x18, 0x05, 0x20, 0x01, 0x28, 0x0d, 0x48, 0x00, 0x52, 0x06, 0x75, 0x69,
	0x6e, 0x74, 0x33, 0x32, 0x12, 0x18, 0x0a, 0x06, 0x75, 0x69, 0x6e, 0x74, 0x36, 0x34, 0x18, 0x06,
	0x20, 0x01, 0x28, 0x04, 0x48, 0x00, 0x52, 0x06, 0x75, 0x69, 0x6e, 0x74, 0x36, 0x34, 0x12, 0x18,
	0x0a, 0x06, 0x73, 0x69, 0x6e, 0x74, 0x33, 0x32, 0x18, 0x07, 0x20, 0x01, 0x28, 0x11, 0x48, 0x00,
	0x52, 0x06, 0x73, 0x69, 0x6e, 0x74, 0x33, 0x32, 0x12, 0x18, 0x0a, 0x06, 0x73, 0x69, 0x6e, 0x74,
	0x36, 0x34, 0x18, 0x08, 0x20, 0x01, 0x28, 0x12, 0x48, 0x00, 0x52, 0x06, 0x73, 0x69, 0x6e, 0x74,
	0x36, 0x34, 0x12, 0x1a, 0x0a, 0x07, 0x66, 0x69, 0x78, 0x65, 0x64, 0x33, 0x32, 0x18, 0x09, 0x20,
	0x01, 0x28, 0x07, 0x48, 0x00, 0x52, 0x07, 0x66, 0x69, 0x78, 0x65, 0x64, 0x33, 0x32, 0x12, 0x1a,
	0x0a, 0x07, 0x66, 0x69, 0x78, 0x65, 0x64, 0x36, 0x34, 0x18, 0x0a, 0x20, 0x01, 0x28, 0x06, 0x48,
	0x00, 0x52, 0x07, 0x66, 0x69, 0x78, 0x65, 0x64, 0x36, 0x34, 0x12, 0x1c, 0x0a, 0x08, 0x73, 0x66,
	0x69, 0x78, 0x65, 0x64, 0x33, 0x32, 0x18, 0x0b, 0x20, 0x01, 0x28, 0x0f, 0x48, 0x00, 0x52, 0x08,
	0x73, 0x66, 0x69, 0x78, 0x65, 0x64, 0x33, 0x32, 0x12, 0x1c, 0x0a, 0x08, 0x73, 0x66, 0x69, 0x78,
	0x65, 0x64, 0x36, 0x34, 0x18, 0x0c, 0x20, 0x01, 0x28, 0x10, 0x48, 0x00, 0x52, 0x08, 0x73, 0x66,
	0x69, 0x78, 0x65, 0x64, 0x36, 0x34, 0x12, 0x14, 0x0a, 0x04, 0x62, 0x6f, 0x6f, 0x6c, 0x18, 0x0d,
	0x20, 0x01, 0x28, 0x08, 0x48, 0x00, 0x52, 0x04, 0x62, 0x6f, 0x6f, 0x6c, 0x12, 0x18, 0x0a, 0x06,
	0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x18, 0x0e, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x06,
	0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x12, 0x16, 0x0a, 0x05, 0x62, 0x79, 0x74, 0x65, 0x73, 0x18,
	0x0f, 0x20, 0x01, 0x28, 0x0c, 0x48, 0x00, 0x52, 0x05, 0x62, 0x79, 0x74, 0x65, 0x73, 0x12, 0x14,
	0x0a, 0x04, 0x64, 0x69, 0x66, 0x66, 0x18, 0x10, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x04,
	0x64, 0x69, 0x66, 0x66, 0x42, 0x03, 0x0a, 0x01, 0x76, 0x42, 0x24, 0x5a, 0x22, 0x67, 0x69, 0x74,
	0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x64, 0x61, 0x76, 0x65, 0x2f, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x64, 0x2f, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x3b, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x62,
	0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_protod_delta_proto_rawDescOnce sync.Once
	file_protod_delta_proto_rawDescData = file_protod_delta_proto_rawDesc
)

func file_protod_delta_proto_rawDescGZIP() []byte {
	file_protod_delta_proto_rawDescOnce.Do(func() {
		file_protod_delta_proto_rawDescData = protoimpl.X.CompressGZIP(file_protod_delta_proto_rawDescData)
	})
	return file_protod_delta_proto_rawDescData
}

var file_protod_delta_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_protod_delta_proto_msgTypes = make([]protoimpl.MessageInfo, 5)
var file_protod_delta_proto_goTypes = []interface{}{
	(Op_Type)(0),    // 0: delta.Op.Type
	(*Op)(nil),      // 1: delta.Op
	(*Locator)(nil), // 2: delta.Locator
	(*Key)(nil),     // 3: delta.Key
	(*Field)(nil),   // 4: delta.Field
	(*Scalar)(nil),  // 5: delta.Scalar
	(*any.Any)(nil), // 6: google.protobuf.Any
}
var file_protod_delta_proto_depIdxs = []int32{
	0, // 0: delta.Op.type:type_name -> delta.Op.Type
	2, // 1: delta.Op.location:type_name -> delta.Locator
	6, // 2: delta.Op.value:type_name -> google.protobuf.Any
	4, // 3: delta.Locator.field:type_name -> delta.Field
	3, // 4: delta.Locator.key:type_name -> delta.Key
	5, // [5:5] is the sub-list for method output_type
	5, // [5:5] is the sub-list for method input_type
	5, // [5:5] is the sub-list for extension type_name
	5, // [5:5] is the sub-list for extension extendee
	0, // [0:5] is the sub-list for field type_name
}

func init() { file_protod_delta_proto_init() }
func file_protod_delta_proto_init() {
	if File_protod_delta_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_protod_delta_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Op); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_protod_delta_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Locator); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_protod_delta_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Key); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_protod_delta_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Field); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_protod_delta_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Scalar); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_protod_delta_proto_msgTypes[1].OneofWrappers = []interface{}{
		(*Locator_Field)(nil),
		(*Locator_Index)(nil),
		(*Locator_Key)(nil),
	}
	file_protod_delta_proto_msgTypes[2].OneofWrappers = []interface{}{
		(*Key_Bool)(nil),
		(*Key_Int32)(nil),
		(*Key_Int64)(nil),
		(*Key_Uint32)(nil),
		(*Key_Uint64)(nil),
		(*Key_String_)(nil),
	}
	file_protod_delta_proto_msgTypes[4].OneofWrappers = []interface{}{
		(*Scalar_Double)(nil),
		(*Scalar_Float)(nil),
		(*Scalar_Int32)(nil),
		(*Scalar_Int64)(nil),
		(*Scalar_Uint32)(nil),
		(*Scalar_Uint64)(nil),
		(*Scalar_Sint32)(nil),
		(*Scalar_Sint64)(nil),
		(*Scalar_Fixed32)(nil),
		(*Scalar_Fixed64)(nil),
		(*Scalar_Sfixed32)(nil),
		(*Scalar_Sfixed64)(nil),
		(*Scalar_Bool)(nil),
		(*Scalar_String_)(nil),
		(*Scalar_Bytes)(nil),
		(*Scalar_Diff)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_protod_delta_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   5,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_protod_delta_proto_goTypes,
		DependencyIndexes: file_protod_delta_proto_depIdxs,
		EnumInfos:         file_protod_delta_proto_enumTypes,
		MessageInfos:      file_protod_delta_proto_msgTypes,
	}.Build()
	File_protod_delta_proto = out.File
	file_protod_delta_proto_rawDesc = nil
	file_protod_delta_proto_goTypes = nil
	file_protod_delta_proto_depIdxs = nil
}
