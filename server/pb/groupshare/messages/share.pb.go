// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.21.0
// 	protoc        v3.11.4
// source: groupshare/messages/share.proto

package messages

import (
	data "github.com/dave/groupshare/server/pb/groupshare/data"
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
		mi := &file_groupshare_messages_share_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share) ProtoMessage() {}

func (x *Share) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[0]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0}
}

type Share_List struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *Share_List) Reset() {
	*x = Share_List{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_List) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_List) ProtoMessage() {}

func (x *Share_List) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_List.ProtoReflect.Descriptor instead.
func (*Share_List) Descriptor() ([]byte, []int) {
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 0}
}

type Share_Get struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *Share_Get) Reset() {
	*x = Share_Get{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Get) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Get) ProtoMessage() {}

func (x *Share_Get) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[2]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 1}
}

type Share_Add struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *Share_Add) Reset() {
	*x = Share_Add{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Add) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Add) ProtoMessage() {}

func (x *Share_Add) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[3]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 2}
}

type Share_Edit struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *Share_Edit) Reset() {
	*x = Share_Edit{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Edit) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Edit) ProtoMessage() {}

func (x *Share_Edit) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[4]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 3}
}

type Share_List_Request struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Token *Token `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
}

func (x *Share_List_Request) Reset() {
	*x = Share_List_Request{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_List_Request) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_List_Request) ProtoMessage() {}

func (x *Share_List_Request) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_List_Request.ProtoReflect.Descriptor instead.
func (*Share_List_Request) Descriptor() ([]byte, []int) {
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 0, 0}
}

func (x *Share_List_Request) GetToken() *Token {
	if x != nil {
		return x.Token
	}
	return nil
}

type Share_List_Response struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Shares []string `protobuf:"bytes,2,rep,name=shares,proto3" json:"shares,omitempty"`
	Err    *Error   `protobuf:"bytes,3,opt,name=err,proto3" json:"err,omitempty"`
}

func (x *Share_List_Response) Reset() {
	*x = Share_List_Response{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_List_Response) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_List_Response) ProtoMessage() {}

func (x *Share_List_Response) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Share_List_Response.ProtoReflect.Descriptor instead.
func (*Share_List_Response) Descriptor() ([]byte, []int) {
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 0, 1}
}

func (x *Share_List_Response) GetShares() []string {
	if x != nil {
		return x.Shares
	}
	return nil
}

func (x *Share_List_Response) GetErr() *Error {
	if x != nil {
		return x.Err
	}
	return nil
}

type Share_Get_Request struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Token *Token `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
	Id    string `protobuf:"bytes,2,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *Share_Get_Request) Reset() {
	*x = Share_Get_Request{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Get_Request) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Get_Request) ProtoMessage() {}

func (x *Share_Get_Request) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[7]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 1, 0}
}

func (x *Share_Get_Request) GetToken() *Token {
	if x != nil {
		return x.Token
	}
	return nil
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

	Version string      `protobuf:"bytes,1,opt,name=version,proto3" json:"version,omitempty"`
	Share   *data.Share `protobuf:"bytes,2,opt,name=share,proto3" json:"share,omitempty"`
	Err     *Error      `protobuf:"bytes,3,opt,name=err,proto3" json:"err,omitempty"`
}

func (x *Share_Get_Response) Reset() {
	*x = Share_Get_Response{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Get_Response) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Get_Response) ProtoMessage() {}

func (x *Share_Get_Response) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[8]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 1, 1}
}

func (x *Share_Get_Response) GetVersion() string {
	if x != nil {
		return x.Version
	}
	return ""
}

func (x *Share_Get_Response) GetShare() *data.Share {
	if x != nil {
		return x.Share
	}
	return nil
}

func (x *Share_Get_Response) GetErr() *Error {
	if x != nil {
		return x.Err
	}
	return nil
}

type Share_Add_Request struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Token *Token      `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
	Share *data.Share `protobuf:"bytes,2,opt,name=share,proto3" json:"share,omitempty"`
}

func (x *Share_Add_Request) Reset() {
	*x = Share_Add_Request{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[9]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Add_Request) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Add_Request) ProtoMessage() {}

func (x *Share_Add_Request) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[9]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 2, 0}
}

func (x *Share_Add_Request) GetToken() *Token {
	if x != nil {
		return x.Token
	}
	return nil
}

func (x *Share_Add_Request) GetShare() *data.Share {
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
		mi := &file_groupshare_messages_share_proto_msgTypes[10]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Add_Response) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Add_Response) ProtoMessage() {}

func (x *Share_Add_Response) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[10]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 2, 1}
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

	Token   *Token      `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
	Id      string      `protobuf:"bytes,2,opt,name=id,proto3" json:"id,omitempty"`
	Version string      `protobuf:"bytes,3,opt,name=version,proto3" json:"version,omitempty"`
	Ops     []*delta.Op `protobuf:"bytes,4,rep,name=ops,proto3" json:"ops,omitempty"`
}

func (x *Share_Edit_Request) Reset() {
	*x = Share_Edit_Request{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[11]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Edit_Request) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Edit_Request) ProtoMessage() {}

func (x *Share_Edit_Request) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[11]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 3, 0}
}

func (x *Share_Edit_Request) GetToken() *Token {
	if x != nil {
		return x.Token
	}
	return nil
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

func (x *Share_Edit_Request) GetOps() []*delta.Op {
	if x != nil {
		return x.Ops
	}
	return nil
}

type Share_Edit_Response struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Version string      `protobuf:"bytes,1,opt,name=version,proto3" json:"version,omitempty"` // new version
	Ops     []*delta.Op `protobuf:"bytes,2,rep,name=ops,proto3" json:"ops,omitempty"`         // deltas to get to new version (may be more than in request)
	Err     *Error      `protobuf:"bytes,3,opt,name=err,proto3" json:"err,omitempty"`
}

func (x *Share_Edit_Response) Reset() {
	*x = Share_Edit_Response{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_share_proto_msgTypes[12]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Share_Edit_Response) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Share_Edit_Response) ProtoMessage() {}

func (x *Share_Edit_Response) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_share_proto_msgTypes[12]
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
	return file_groupshare_messages_share_proto_rawDescGZIP(), []int{0, 3, 1}
}

func (x *Share_Edit_Response) GetVersion() string {
	if x != nil {
		return x.Version
	}
	return ""
}

func (x *Share_Edit_Response) GetOps() []*delta.Op {
	if x != nil {
		return x.Ops
	}
	return nil
}

func (x *Share_Edit_Response) GetErr() *Error {
	if x != nil {
		return x.Err
	}
	return nil
}

var File_groupshare_messages_share_proto protoreflect.FileDescriptor

var file_groupshare_messages_share_proto_rawDesc = []byte{
	0x0a, 0x1f, 0x67, 0x72, 0x6f, 0x75, 0x70, 0x73, 0x68, 0x61, 0x72, 0x65, 0x2f, 0x6d, 0x65, 0x73,
	0x73, 0x61, 0x67, 0x65, 0x73, 0x2f, 0x73, 0x68, 0x61, 0x72, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x12, 0x08, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x1a, 0x1f, 0x67, 0x72, 0x6f,
	0x75, 0x70, 0x73, 0x68, 0x61, 0x72, 0x65, 0x2f, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73,
	0x2f, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1f, 0x67, 0x72,
	0x6f, 0x75, 0x70, 0x73, 0x68, 0x61, 0x72, 0x65, 0x2f, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65,
	0x73, 0x2f, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1b, 0x67,
	0x72, 0x6f, 0x75, 0x70, 0x73, 0x68, 0x61, 0x72, 0x65, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x2f, 0x73,
	0x68, 0x61, 0x72, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x12, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x64, 0x2f, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xdc,
	0x05, 0x0a, 0x05, 0x53, 0x68, 0x61, 0x72, 0x65, 0x1a, 0x7f, 0x0a, 0x04, 0x4c, 0x69, 0x73, 0x74,
	0x1a, 0x30, 0x0a, 0x07, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x25, 0x0a, 0x05, 0x74,
	0x6f, 0x6b, 0x65, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x73,
	0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x52, 0x05, 0x74, 0x6f, 0x6b,
	0x65, 0x6e, 0x1a, 0x45, 0x0a, 0x08, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x16,
	0x0a, 0x06, 0x73, 0x68, 0x61, 0x72, 0x65, 0x73, 0x18, 0x02, 0x20, 0x03, 0x28, 0x09, 0x52, 0x06,
	0x73, 0x68, 0x61, 0x72, 0x65, 0x73, 0x12, 0x21, 0x0a, 0x03, 0x65, 0x72, 0x72, 0x18, 0x03, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x45,
	0x72, 0x72, 0x6f, 0x72, 0x52, 0x03, 0x65, 0x72, 0x72, 0x1a, 0xb3, 0x01, 0x0a, 0x03, 0x47, 0x65,
	0x74, 0x1a, 0x40, 0x0a, 0x07, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x25, 0x0a, 0x05,
	0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x52, 0x05, 0x74, 0x6f,
	0x6b, 0x65, 0x6e, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x02, 0x69, 0x64, 0x1a, 0x6a, 0x0a, 0x08, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x18, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x12, 0x21, 0x0a, 0x05, 0x73, 0x68, 0x61,
	0x72, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0b, 0x2e, 0x64, 0x61, 0x74, 0x61, 0x2e,
	0x53, 0x68, 0x61, 0x72, 0x65, 0x52, 0x05, 0x73, 0x68, 0x61, 0x72, 0x65, 0x12, 0x21, 0x0a, 0x03,
	0x65, 0x72, 0x72, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x73, 0x2e, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x52, 0x03, 0x65, 0x72, 0x72, 0x1a,
	0xb3, 0x01, 0x0a, 0x03, 0x41, 0x64, 0x64, 0x1a, 0x53, 0x0a, 0x07, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x12, 0x25, 0x0a, 0x05, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x54, 0x6f, 0x6b,
	0x65, 0x6e, 0x52, 0x05, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x12, 0x21, 0x0a, 0x05, 0x73, 0x68, 0x61,
	0x72, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0b, 0x2e, 0x64, 0x61, 0x74, 0x61, 0x2e,
	0x53, 0x68, 0x61, 0x72, 0x65, 0x52, 0x05, 0x73, 0x68, 0x61, 0x72, 0x65, 0x1a, 0x57, 0x0a, 0x08,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x18, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73,
	0x69, 0x6f, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69,
	0x6f, 0x6e, 0x12, 0x21, 0x0a, 0x03, 0x65, 0x72, 0x72, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x0f, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x45, 0x72, 0x72, 0x6f, 0x72,
	0x52, 0x03, 0x65, 0x72, 0x72, 0x1a, 0xe5, 0x01, 0x0a, 0x04, 0x45, 0x64, 0x69, 0x74, 0x1a, 0x77,
	0x0a, 0x07, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x25, 0x0a, 0x05, 0x74, 0x6f, 0x6b,
	0x65, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61,
	0x67, 0x65, 0x73, 0x2e, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x52, 0x05, 0x74, 0x6f, 0x6b, 0x65, 0x6e,
	0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64,
	0x12, 0x18, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x03, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x12, 0x1b, 0x0a, 0x03, 0x6f, 0x70,
	0x73, 0x18, 0x04, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x09, 0x2e, 0x64, 0x65, 0x6c, 0x74, 0x61, 0x2e,
	0x4f, 0x70, 0x52, 0x03, 0x6f, 0x70, 0x73, 0x1a, 0x64, 0x0a, 0x08, 0x52, 0x65, 0x73, 0x70, 0x6f,
	0x6e, 0x73, 0x65, 0x12, 0x18, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x12, 0x1b, 0x0a,
	0x03, 0x6f, 0x70, 0x73, 0x18, 0x02, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x09, 0x2e, 0x64, 0x65, 0x6c,
	0x74, 0x61, 0x2e, 0x4f, 0x70, 0x52, 0x03, 0x6f, 0x70, 0x73, 0x12, 0x21, 0x0a, 0x03, 0x65, 0x72,
	0x72, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x73, 0x2e, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x52, 0x03, 0x65, 0x72, 0x72, 0x42, 0x43, 0x5a,
	0x41, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x64, 0x61, 0x76, 0x65,
	0x2f, 0x67, 0x72, 0x6f, 0x75, 0x70, 0x73, 0x68, 0x61, 0x72, 0x65, 0x2f, 0x73, 0x65, 0x72, 0x76,
	0x65, 0x72, 0x2f, 0x70, 0x62, 0x2f, 0x67, 0x72, 0x6f, 0x75, 0x70, 0x73, 0x68, 0x61, 0x72, 0x65,
	0x2f, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x3b, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_groupshare_messages_share_proto_rawDescOnce sync.Once
	file_groupshare_messages_share_proto_rawDescData = file_groupshare_messages_share_proto_rawDesc
)

func file_groupshare_messages_share_proto_rawDescGZIP() []byte {
	file_groupshare_messages_share_proto_rawDescOnce.Do(func() {
		file_groupshare_messages_share_proto_rawDescData = protoimpl.X.CompressGZIP(file_groupshare_messages_share_proto_rawDescData)
	})
	return file_groupshare_messages_share_proto_rawDescData
}

var file_groupshare_messages_share_proto_msgTypes = make([]protoimpl.MessageInfo, 13)
var file_groupshare_messages_share_proto_goTypes = []interface{}{
	(*Share)(nil),               // 0: messages.Share
	(*Share_List)(nil),          // 1: messages.Share.List
	(*Share_Get)(nil),           // 2: messages.Share.Get
	(*Share_Add)(nil),           // 3: messages.Share.Add
	(*Share_Edit)(nil),          // 4: messages.Share.Edit
	(*Share_List_Request)(nil),  // 5: messages.Share.List.Request
	(*Share_List_Response)(nil), // 6: messages.Share.List.Response
	(*Share_Get_Request)(nil),   // 7: messages.Share.Get.Request
	(*Share_Get_Response)(nil),  // 8: messages.Share.Get.Response
	(*Share_Add_Request)(nil),   // 9: messages.Share.Add.Request
	(*Share_Add_Response)(nil),  // 10: messages.Share.Add.Response
	(*Share_Edit_Request)(nil),  // 11: messages.Share.Edit.Request
	(*Share_Edit_Response)(nil), // 12: messages.Share.Edit.Response
	(*Token)(nil),               // 13: messages.Token
	(*Error)(nil),               // 14: messages.Error
	(*data.Share)(nil),          // 15: data.Share
	(*delta.Op)(nil),            // 16: delta.Op
}
var file_groupshare_messages_share_proto_depIdxs = []int32{
	13, // 0: messages.Share.List.Request.token:type_name -> messages.Token
	14, // 1: messages.Share.List.Response.err:type_name -> messages.Error
	13, // 2: messages.Share.Get.Request.token:type_name -> messages.Token
	15, // 3: messages.Share.Get.Response.share:type_name -> data.Share
	14, // 4: messages.Share.Get.Response.err:type_name -> messages.Error
	13, // 5: messages.Share.Add.Request.token:type_name -> messages.Token
	15, // 6: messages.Share.Add.Request.share:type_name -> data.Share
	14, // 7: messages.Share.Add.Response.err:type_name -> messages.Error
	13, // 8: messages.Share.Edit.Request.token:type_name -> messages.Token
	16, // 9: messages.Share.Edit.Request.ops:type_name -> delta.Op
	16, // 10: messages.Share.Edit.Response.ops:type_name -> delta.Op
	14, // 11: messages.Share.Edit.Response.err:type_name -> messages.Error
	12, // [12:12] is the sub-list for method output_type
	12, // [12:12] is the sub-list for method input_type
	12, // [12:12] is the sub-list for extension type_name
	12, // [12:12] is the sub-list for extension extendee
	0,  // [0:12] is the sub-list for field type_name
}

func init() { file_groupshare_messages_share_proto_init() }
func file_groupshare_messages_share_proto_init() {
	if File_groupshare_messages_share_proto != nil {
		return
	}
	file_groupshare_messages_token_proto_init()
	file_groupshare_messages_error_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_groupshare_messages_share_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
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
		file_groupshare_messages_share_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_List); i {
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
		file_groupshare_messages_share_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
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
		file_groupshare_messages_share_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
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
		file_groupshare_messages_share_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
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
		file_groupshare_messages_share_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_List_Request); i {
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
		file_groupshare_messages_share_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Share_List_Response); i {
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
		file_groupshare_messages_share_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
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
		file_groupshare_messages_share_proto_msgTypes[8].Exporter = func(v interface{}, i int) interface{} {
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
		file_groupshare_messages_share_proto_msgTypes[9].Exporter = func(v interface{}, i int) interface{} {
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
		file_groupshare_messages_share_proto_msgTypes[10].Exporter = func(v interface{}, i int) interface{} {
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
		file_groupshare_messages_share_proto_msgTypes[11].Exporter = func(v interface{}, i int) interface{} {
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
		file_groupshare_messages_share_proto_msgTypes[12].Exporter = func(v interface{}, i int) interface{} {
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
			RawDescriptor: file_groupshare_messages_share_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   13,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_groupshare_messages_share_proto_goTypes,
		DependencyIndexes: file_groupshare_messages_share_proto_depIdxs,
		MessageInfos:      file_groupshare_messages_share_proto_msgTypes,
	}.Build()
	File_groupshare_messages_share_proto = out.File
	file_groupshare_messages_share_proto_rawDesc = nil
	file_groupshare_messages_share_proto_goTypes = nil
	file_groupshare_messages_share_proto_depIdxs = nil
}
