///
//  Generated code. Do not modify.
//  source: messages/share.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Share_List_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share_List_Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Share_List_Request._() : super();
  factory Share_List_Request() => create();
  factory Share_List_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_List_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_List_Request clone() => Share_List_Request()..mergeFromMessage(this);
  Share_List_Request copyWith(void Function(Share_List_Request) updates) => super.copyWith((message) => updates(message as Share_List_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_List_Request create() => Share_List_Request._();
  Share_List_Request createEmptyInstance() => create();
  static $pb.PbList<Share_List_Request> createRepeated() => $pb.PbList<Share_List_Request>();
  @$core.pragma('dart2js:noInline')
  static Share_List_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_List_Request>(create);
  static Share_List_Request _defaultInstance;
}

class Share_List_Response_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share_List_Response.Item', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  Share_List_Response_Item._() : super();
  factory Share_List_Response_Item() => create();
  factory Share_List_Response_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_List_Response_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_List_Response_Item clone() => Share_List_Response_Item()..mergeFromMessage(this);
  Share_List_Response_Item copyWith(void Function(Share_List_Response_Item) updates) => super.copyWith((message) => updates(message as Share_List_Response_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_List_Response_Item create() => Share_List_Response_Item._();
  Share_List_Response_Item createEmptyInstance() => create();
  static $pb.PbList<Share_List_Response_Item> createRepeated() => $pb.PbList<Share_List_Response_Item>();
  @$core.pragma('dart2js:noInline')
  static Share_List_Response_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_List_Response_Item>(create);
  static Share_List_Response_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class Share_List_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share_List_Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..pc<Share_List_Response_Item>(1, 'items', $pb.PbFieldType.PM, subBuilder: Share_List_Response_Item.create)
    ..hasRequiredFields = false
  ;

  Share_List_Response._() : super();
  factory Share_List_Response() => create();
  factory Share_List_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_List_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_List_Response clone() => Share_List_Response()..mergeFromMessage(this);
  Share_List_Response copyWith(void Function(Share_List_Response) updates) => super.copyWith((message) => updates(message as Share_List_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_List_Response create() => Share_List_Response._();
  Share_List_Response createEmptyInstance() => create();
  static $pb.PbList<Share_List_Response> createRepeated() => $pb.PbList<Share_List_Response>();
  @$core.pragma('dart2js:noInline')
  static Share_List_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_List_Response>(create);
  static Share_List_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Share_List_Response_Item> get items => $_getList(0);
}

class Share_Remove_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share_Remove_Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  Share_Remove_Request._() : super();
  factory Share_Remove_Request() => create();
  factory Share_Remove_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Remove_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Remove_Request clone() => Share_Remove_Request()..mergeFromMessage(this);
  Share_Remove_Request copyWith(void Function(Share_Remove_Request) updates) => super.copyWith((message) => updates(message as Share_Remove_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Remove_Request create() => Share_Remove_Request._();
  Share_Remove_Request createEmptyInstance() => create();
  static $pb.PbList<Share_Remove_Request> createRepeated() => $pb.PbList<Share_Remove_Request>();
  @$core.pragma('dart2js:noInline')
  static Share_Remove_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Remove_Request>(create);
  static Share_Remove_Request _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class Share_Delete_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share_Delete_Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  Share_Delete_Request._() : super();
  factory Share_Delete_Request() => create();
  factory Share_Delete_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Delete_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Delete_Request clone() => Share_Delete_Request()..mergeFromMessage(this);
  Share_Delete_Request copyWith(void Function(Share_Delete_Request) updates) => super.copyWith((message) => updates(message as Share_Delete_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Delete_Request create() => Share_Delete_Request._();
  Share_Delete_Request createEmptyInstance() => create();
  static $pb.PbList<Share_Delete_Request> createRepeated() => $pb.PbList<Share_Delete_Request>();
  @$core.pragma('dart2js:noInline')
  static Share_Delete_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Delete_Request>(create);
  static Share_Delete_Request _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class Share_Delete_Task extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share_Delete_Task', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  Share_Delete_Task._() : super();
  factory Share_Delete_Task() => create();
  factory Share_Delete_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Delete_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Delete_Task clone() => Share_Delete_Task()..mergeFromMessage(this);
  Share_Delete_Task copyWith(void Function(Share_Delete_Task) updates) => super.copyWith((message) => updates(message as Share_Delete_Task));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Delete_Task create() => Share_Delete_Task._();
  Share_Delete_Task createEmptyInstance() => create();
  static $pb.PbList<Share_Delete_Task> createRepeated() => $pb.PbList<Share_Delete_Task>();
  @$core.pragma('dart2js:noInline')
  static Share_Delete_Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Delete_Task>(create);
  static Share_Delete_Task _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

