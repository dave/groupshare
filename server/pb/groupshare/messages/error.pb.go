// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.21.0
// 	protoc        v3.11.4
// source: groupshare/messages/error.proto

package messages

import (
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

type Error_Type int32

const (
	Error_ERROR   Error_Type = 0
	Error_AUTH    Error_Type = 1
	Error_EXPIRED Error_Type = 2
)

// Enum value maps for Error_Type.
var (
	Error_Type_name = map[int32]string{
		0: "ERROR",
		1: "AUTH",
		2: "EXPIRED",
	}
	Error_Type_value = map[string]int32{
		"ERROR":   0,
		"AUTH":    1,
		"EXPIRED": 2,
	}
)

func (x Error_Type) Enum() *Error_Type {
	p := new(Error_Type)
	*p = x
	return p
}

func (x Error_Type) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (Error_Type) Descriptor() protoreflect.EnumDescriptor {
	return file_groupshare_messages_error_proto_enumTypes[0].Descriptor()
}

func (Error_Type) Type() protoreflect.EnumType {
	return &file_groupshare_messages_error_proto_enumTypes[0]
}

func (x Error_Type) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use Error_Type.Descriptor instead.
func (Error_Type) EnumDescriptor() ([]byte, []int) {
	return file_groupshare_messages_error_proto_rawDescGZIP(), []int{0, 0}
}

type Error struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Type    Error_Type `protobuf:"varint,1,opt,name=type,proto3,enum=messages.Error_Type" json:"type,omitempty"`
	Message string     `protobuf:"bytes,2,opt,name=message,proto3" json:"message,omitempty"`
}

func (x *Error) Reset() {
	*x = Error{}
	if protoimpl.UnsafeEnabled {
		mi := &file_groupshare_messages_error_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Error) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Error) ProtoMessage() {}

func (x *Error) ProtoReflect() protoreflect.Message {
	mi := &file_groupshare_messages_error_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Error.ProtoReflect.Descriptor instead.
func (*Error) Descriptor() ([]byte, []int) {
	return file_groupshare_messages_error_proto_rawDescGZIP(), []int{0}
}

func (x *Error) GetType() Error_Type {
	if x != nil {
		return x.Type
	}
	return Error_ERROR
}

func (x *Error) GetMessage() string {
	if x != nil {
		return x.Message
	}
	return ""
}

var File_groupshare_messages_error_proto protoreflect.FileDescriptor

var file_groupshare_messages_error_proto_rawDesc = []byte{
	0x0a, 0x1f, 0x67, 0x72, 0x6f, 0x75, 0x70, 0x73, 0x68, 0x61, 0x72, 0x65, 0x2f, 0x6d, 0x65, 0x73,
	0x73, 0x61, 0x67, 0x65, 0x73, 0x2f, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x12, 0x08, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x22, 0x75, 0x0a, 0x05, 0x45,
	0x72, 0x72, 0x6f, 0x72, 0x12, 0x28, 0x0a, 0x04, 0x74, 0x79, 0x70, 0x65, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x0e, 0x32, 0x14, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x45, 0x72,
	0x72, 0x6f, 0x72, 0x2e, 0x54, 0x79, 0x70, 0x65, 0x52, 0x04, 0x74, 0x79, 0x70, 0x65, 0x12, 0x18,
	0x0a, 0x07, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x07, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x22, 0x28, 0x0a, 0x04, 0x54, 0x79, 0x70, 0x65,
	0x12, 0x09, 0x0a, 0x05, 0x45, 0x52, 0x52, 0x4f, 0x52, 0x10, 0x00, 0x12, 0x08, 0x0a, 0x04, 0x41,
	0x55, 0x54, 0x48, 0x10, 0x01, 0x12, 0x0b, 0x0a, 0x07, 0x45, 0x58, 0x50, 0x49, 0x52, 0x45, 0x44,
	0x10, 0x02, 0x42, 0x43, 0x5a, 0x41, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d,
	0x2f, 0x64, 0x61, 0x76, 0x65, 0x2f, 0x67, 0x72, 0x6f, 0x75, 0x70, 0x73, 0x68, 0x61, 0x72, 0x65,
	0x2f, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2f, 0x70, 0x62, 0x2f, 0x67, 0x72, 0x6f, 0x75, 0x70,
	0x73, 0x68, 0x61, 0x72, 0x65, 0x2f, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x3b, 0x6d,
	0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_groupshare_messages_error_proto_rawDescOnce sync.Once
	file_groupshare_messages_error_proto_rawDescData = file_groupshare_messages_error_proto_rawDesc
)

func file_groupshare_messages_error_proto_rawDescGZIP() []byte {
	file_groupshare_messages_error_proto_rawDescOnce.Do(func() {
		file_groupshare_messages_error_proto_rawDescData = protoimpl.X.CompressGZIP(file_groupshare_messages_error_proto_rawDescData)
	})
	return file_groupshare_messages_error_proto_rawDescData
}

var file_groupshare_messages_error_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_groupshare_messages_error_proto_msgTypes = make([]protoimpl.MessageInfo, 1)
var file_groupshare_messages_error_proto_goTypes = []interface{}{
	(Error_Type)(0), // 0: messages.Error.Type
	(*Error)(nil),   // 1: messages.Error
}
var file_groupshare_messages_error_proto_depIdxs = []int32{
	0, // 0: messages.Error.type:type_name -> messages.Error.Type
	1, // [1:1] is the sub-list for method output_type
	1, // [1:1] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_groupshare_messages_error_proto_init() }
func file_groupshare_messages_error_proto_init() {
	if File_groupshare_messages_error_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_groupshare_messages_error_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Error); i {
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
			RawDescriptor: file_groupshare_messages_error_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   1,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_groupshare_messages_error_proto_goTypes,
		DependencyIndexes: file_groupshare_messages_error_proto_depIdxs,
		EnumInfos:         file_groupshare_messages_error_proto_enumTypes,
		MessageInfos:      file_groupshare_messages_error_proto_msgTypes,
	}.Build()
	File_groupshare_messages_error_proto = out.File
	file_groupshare_messages_error_proto_rawDesc = nil
	file_groupshare_messages_error_proto_goTypes = nil
	file_groupshare_messages_error_proto_depIdxs = nil
}
