// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.21.0
// 	protoc        v3.11.4
// source: messages/share.proto

package messages

import (
	delta "github.com/dave/protod/delta"
	proto "github.com/golang/protobuf/proto"
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

type Share struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *Share) Reset() {
	*x = Share{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share) ProtoMessage() {}

func (x *Share) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share.ProtoReflect.Descriptor instead.
func (*Share) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0}
}

type Share_Get struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *Share_Get) Reset() {
	*x = Share_Get{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Get) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Get) ProtoMessage() {}

func (x *Share_Get) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_Get.ProtoReflect.Descriptor instead.
func (*Share_Get) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0, 0}
}

type Share_Add struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *Share_Add) Reset() {
	*x = Share_Add{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Add) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Add) ProtoMessage() {}

func (x *Share_Add) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_Add.ProtoReflect.Descriptor instead.
func (*Share_Add) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0, 1}
}

type Share_Edit struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *Share_Edit) Reset() {
	*x = Share_Edit{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Edit) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Edit) ProtoMessage() {}

func (x *Share_Edit) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_Edit.ProtoReflect.Descriptor instead.
func (*Share_Edit) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0, 2}
}

type Share_Get_Request struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *Share_Get_Request) Reset() {
	*x = Share_Get_Request{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Get_Request) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Get_Request) ProtoMessage() {}

func (x *Share_Get_Request) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_Get_Request.ProtoReflect.Descriptor instead.
func (*Share_Get_Request) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0, 0, 0}
}

func (x *Share_Get_Request) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type Share_Get_Response struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Version string `protobuf:"bytes,1,opt,name=version,proto3" json:"version,omitempty"`
	Share   *Share `protobuf:"bytes,2,opt,name=share,proto3" json:"share,omitempty"`
}

func (x *Share_Get_Response) Reset() {
	*x = Share_Get_Response{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Get_Response) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Get_Response) ProtoMessage() {}

func (x *Share_Get_Response) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_Get_Response.ProtoReflect.Descriptor instead.
func (*Share_Get_Response) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0, 0, 1}
}

func (x *Share_Get_Response) GetVersion() string {
	if x != nil {
		return x.Version
	}
	return ""
}

func (x *Share_Get_Response) GetShare() *Share {
	if x != nil {
		return x.Share
	}
	return nil
}

type Share_Add_Request struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Share *Share `protobuf:"bytes,1,opt,name=share,proto3" json:"share,omitempty"`
}

func (x *Share_Add_Request) Reset() {
	*x = Share_Add_Request{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Add_Request) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Add_Request) ProtoMessage() {}

func (x *Share_Add_Request) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_Add_Request.ProtoReflect.Descriptor instead.
func (*Share_Add_Request) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0, 1, 0}
}

func (x *Share_Add_Request) GetShare() *Share {
	if x != nil {
		return x.Share
	}
	return nil
}

type Share_Add_Response struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id      string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Version string `protobuf:"bytes,2,opt,name=version,proto3" json:"version,omitempty"`
	Err     *Error `protobuf:"bytes,3,opt,name=err,proto3" json:"err,omitempty"`
}

func (x *Share_Add_Response) Reset() {
	*x = Share_Add_Response{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Add_Response) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Add_Response) ProtoMessage() {}

func (x *Share_Add_Response) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_Add_Response.ProtoReflect.Descriptor instead.
func (*Share_Add_Response) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0, 1, 1}
}

func (x *Share_Add_Response) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *Share_Add_Response) GetVersion() string {
	if x != nil {
		return x.Version
	}
	return ""
}

func (x *Share_Add_Response) GetErr() *Error {
	if x != nil {
		return x.Err
	}
	return nil
}

type Share_Edit_Request struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id      string         `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Version string         `protobuf:"bytes,2,opt,name=version,proto3" json:"version,omitempty"`
	Deltas  []*delta.Delta `protobuf:"bytes,3,rep,name=deltas,proto3" json:"deltas,omitempty"`
}

func (x *Share_Edit_Request) Reset() {
	*x = Share_Edit_Request{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Edit_Request) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Edit_Request) ProtoMessage() {}

func (x *Share_Edit_Request) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_Edit_Request.ProtoReflect.Descriptor instead.
func (*Share_Edit_Request) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0, 2, 0}
}

func (x *Share_Edit_Request) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *Share_Edit_Request) GetVersion() string {
	if x != nil {
		return x.Version
	}
	return ""
}

func (x *Share_Edit_Request) GetDeltas() []*delta.Delta {
	if x != nil {
		return x.Deltas
	}
	return nil
}

type Share_Edit_Response struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Version string `protobuf:"bytes,1,opt,name=version,proto3" json:"version,omitempty"`
	Err     *Error `protobuf:"bytes,2,opt,name=err,proto3" json:"err,omitempty"`
}

func (x *Share_Edit_Response) Reset() {
	*x = Share_Edit_Response{}
	if protoimpl.UnsafeEnabled {
		mi := &file_messages_share_proto_msgTypes[9]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Edit_Response) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Edit_Response) ProtoMessage() {}

func (x *Share_Edit_Response) ProtoReflect() protoreflect.Message {
	mi := &file_messages_share_proto_msgTypes[9]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_Edit_Response.ProtoReflect.Descriptor instead.
func (*Share_Edit_Response) Descriptor() ([]byte, []int) {
	return file_messages_share_proto_rawDescGZIP(), []int{0, 2, 1}
}

func (x *Share_Edit_Response) GetVersion() string {
	if x != nil {
		return x.Version
	}
	return ""
}

func (x *Share_Edit_Response) GetErr() *Error {
	if x != nil {
		return x.Err
	}
	return nil
}

var File_messages_share_proto protoreflect.FileDescriptor

var file_messages_share_proto_rawDesc = []byte{
	0x0a, 0x14, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2f, 0x73, 0x68, 0x61, 0x72, 0x65,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x08, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73,
	0x1a, 0x14, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2f, 0x65, 0x72, 0x72, 0x6f, 0x72,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x18, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x64, 0x2f, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x22, 0xb6, 0x03, 0x0a, 0x05, 0x53, 0x68, 0x61, 0x72, 0x65, 0x1a, 0x6d, 0x0a, 0x03, 0x47, 0x65,
	0x74, 0x1a, 0x19, 0x0a, 0x07, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x0e, 0x0a, 0x02,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x1a, 0x4b, 0x0a, 0x08,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x18, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73,
	0x69, 0x6f, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69,
	0x6f, 0x6e, 0x12, 0x25, 0x0a, 0x05, 0x73, 0x68, 0x61, 0x72, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x53, 0x68, 0x61,
	0x72, 0x65, 0x52, 0x05, 0x73, 0x68, 0x61, 0x72, 0x65, 0x1a, 0x90, 0x01, 0x0a, 0x03, 0x41, 0x64,
	0x64, 0x1a, 0x30, 0x0a, 0x07, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x25, 0x0a, 0x05,
	0x73, 0x68, 0x61, 0x72, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x53, 0x68, 0x61, 0x72, 0x65, 0x52, 0x05, 0x73, 0x68,
	0x61, 0x72, 0x65, 0x1a, 0x57, 0x0a, 0x08, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12,
	0x18, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x12, 0x21, 0x0a, 0x03, 0x65, 0x72, 0x72,
	0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65,
	0x73, 0x2e, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x52, 0x03, 0x65, 0x72, 0x72, 0x1a, 0xaa, 0x01, 0x0a,
	0x04, 0x45, 0x64, 0x69, 0x74, 0x1a, 0x59, 0x0a, 0x07, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64,
	0x12, 0x18, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x12, 0x24, 0x0a, 0x06, 0x64, 0x65,
	0x6c, 0x74, 0x61, 0x73, 0x18, 0x03, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x0c, 0x2e, 0x64, 0x65, 0x6c,
	0x74, 0x61, 0x2e, 0x44, 0x65, 0x6c, 0x74, 0x61, 0x52, 0x06, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x73,
	0x1a, 0x47, 0x0a, 0x08, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x18, 0x0a, 0x07,
	0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x76,
	0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x12, 0x21, 0x0a, 0x03, 0x65, 0x72, 0x72, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x45,
	0x72, 0x72, 0x6f, 0x72, 0x52, 0x03, 0x65, 0x72, 0x72, 0x42, 0x38, 0x5a, 0x36, 0x67, 0x69, 0x74,
	0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x64, 0x61, 0x76, 0x65, 0x2f, 0x67, 0x72, 0x6f,
	0x75, 0x70, 0x73, 0x68, 0x61, 0x72, 0x65, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2f, 0x70,
	0x62, 0x2f, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x3b, 0x6d, 0x65, 0x73, 0x73, 0x61,
	0x67, 0x65, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_messages_share_proto_rawDescOnce sync.Once
	file_messages_share_proto_rawDescData = file_messages_share_proto_rawDesc
)

func file_messages_share_proto_rawDescGZIP() []byte {
	file_messages_share_proto_rawDescOnce.Do(func() {
		file_messages_share_proto_rawDescData = protoimpl.X.CompressGZIP(file_messages_share_proto_rawDescData)
	})
	return file_messages_share_proto_rawDescData
}

var file_messages_share_proto_msgTypes = make([]protoimpl.MessageInfo, 10)
var file_messages_share_proto_goTypes = []interface{}{
	(*Share)(nil),               // 0: messages.Share
	(*Share_Get)(nil),           // 1: messages.Share.Get
	(*Share_Add)(nil),           // 2: messages.Share.Add
	(*Share_Edit)(nil),          // 3: messages.Share.Edit
	(*Share_Get_Request)(nil),   // 4: messages.Share.Get.Request
	(*Share_Get_Response)(nil),  // 5: messages.Share.Get.Response
	(*Share_Add_Request)(nil),   // 6: messages.Share.Add.Request
	(*Share_Add_Response)(nil),  // 7: messages.Share.Add.Response
	(*Share_Edit_Request)(nil),  // 8: messages.Share.Edit.Request
	(*Share_Edit_Response)(nil), // 9: messages.Share.Edit.Response
	(*Error)(nil),               // 10: messages.Error
	(*delta.Delta)(nil),         // 11: delta.Delta
}
var file_messages_share_proto_depIdxs = []int32{
	0,  // 0: messages.Share.Get.Response.share:type_name -> messages.Share
	0,  // 1: messages.Share.Add.Request.share:type_name -> messages.Share
	10, // 2: messages.Share.Add.Response.err:type_name -> messages.Error
	11, // 3: messages.Share.Edit.Request.deltas:type_name -> delta.Delta
	10, // 4: messages.Share.Edit.Response.err:type_name -> messages.Error
	5,  // [5:5] is the sub-list for method output_type
	5,  // [5:5] is the sub-list for method input_type
	5,  // [5:5] is the sub-list for extension type_name
	5,  // [5:5] is the sub-list for extension extendee
	0,  // [0:5] is the sub-list for field type_name
}

func init() { file_messages_share_proto_init() }
func file_messages_share_proto_init() {
	if File_messages_share_proto != nil {
		return
	}
	file_messages_error_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_messages_share_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share); i {
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
		file_messages_share_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_Get); i {
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
		file_messages_share_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_Add); i {
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
		file_messages_share_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_Edit); i {
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
		file_messages_share_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_Get_Request); i {
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
		file_messages_share_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_Get_Response); i {
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
		file_messages_share_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_Add_Request); i {
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
		file_messages_share_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_Add_Response); i {
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
		file_messages_share_proto_msgTypes[8].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_Edit_Request); i {
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
		file_messages_share_proto_msgTypes[9].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_Edit_Response); i {
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
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_messages_share_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   10,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_messages_share_proto_goTypes,
		DependencyIndexes: file_messages_share_proto_depIdxs,
		MessageInfos:      file_messages_share_proto_msgTypes,
	}.Build()
	File_messages_share_proto = out.File
	file_messages_share_proto_rawDesc = nil
	file_messages_share_proto_goTypes = nil
	file_messages_share_proto_depIdxs = nil
}
