///
//  Generated code. Do not modify.
//  source: groupshare/messages/share.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'token.pb.dart' as $2;
import 'error.pb.dart' as $0;
import '../data/share.pb.dart' as $3;
import '../../delta/delta.pb.dart' as $4;

class Share_List_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.List.Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOM<$2.Token>(1, 'token', subBuilder: $2.Token.create)
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

  @$pb.TagNumber(1)
  $2.Token get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.Token v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.Token ensureToken() => $_ensure(0);
}

class Share_List_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.List.Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..pPS(2, 'shares')
    ..aOM<$0.Error>(3, 'err', subBuilder: $0.Error.create)
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

  @$pb.TagNumber(2)
  $core.List<$core.String> get shares => $_getList(0);

  @$pb.TagNumber(3)
  $0.Error get err => $_getN(1);
  @$pb.TagNumber(3)
  set err($0.Error v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(3)
  void clearErr() => clearField(3);
  @$pb.TagNumber(3)
  $0.Error ensureErr() => $_ensure(1);
}

class Share_List extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.List', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Share_List._() : super();
  factory Share_List() => create();
  factory Share_List.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_List.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_List clone() => Share_List()..mergeFromMessage(this);
  Share_List copyWith(void Function(Share_List) updates) => super.copyWith((message) => updates(message as Share_List));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_List create() => Share_List._();
  Share_List createEmptyInstance() => create();
  static $pb.PbList<Share_List> createRepeated() => $pb.PbList<Share_List>();
  @$core.pragma('dart2js:noInline')
  static Share_List getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_List>(create);
  static Share_List _defaultInstance;
}

class Share_Get_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.Get.Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOM<$2.Token>(1, 'token', subBuilder: $2.Token.create)
    ..aOS(2, 'id')
    ..hasRequiredFields = false
  ;

  Share_Get_Request._() : super();
  factory Share_Get_Request() => create();
  factory Share_Get_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Get_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Get_Request clone() => Share_Get_Request()..mergeFromMessage(this);
  Share_Get_Request copyWith(void Function(Share_Get_Request) updates) => super.copyWith((message) => updates(message as Share_Get_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Get_Request create() => Share_Get_Request._();
  Share_Get_Request createEmptyInstance() => create();
  static $pb.PbList<Share_Get_Request> createRepeated() => $pb.PbList<Share_Get_Request>();
  @$core.pragma('dart2js:noInline')
  static Share_Get_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Get_Request>(create);
  static Share_Get_Request _defaultInstance;

  @$pb.TagNumber(1)
  $2.Token get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.Token v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.Token ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class Share_Get_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.Get.Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aInt64(2, 'state')
    ..aOM<$3.Share>(3, 'share', subBuilder: $3.Share.create)
    ..aOM<$0.Error>(4, 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  Share_Get_Response._() : super();
  factory Share_Get_Response() => create();
  factory Share_Get_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Get_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Get_Response clone() => Share_Get_Response()..mergeFromMessage(this);
  Share_Get_Response copyWith(void Function(Share_Get_Response) updates) => super.copyWith((message) => updates(message as Share_Get_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Get_Response create() => Share_Get_Response._();
  Share_Get_Response createEmptyInstance() => create();
  static $pb.PbList<Share_Get_Response> createRepeated() => $pb.PbList<Share_Get_Response>();
  @$core.pragma('dart2js:noInline')
  static Share_Get_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Get_Response>(create);
  static Share_Get_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get state => $_getI64(1);
  @$pb.TagNumber(2)
  set state($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $3.Share get share => $_getN(2);
  @$pb.TagNumber(3)
  set share($3.Share v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasShare() => $_has(2);
  @$pb.TagNumber(3)
  void clearShare() => clearField(3);
  @$pb.TagNumber(3)
  $3.Share ensureShare() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Error get err => $_getN(3);
  @$pb.TagNumber(4)
  set err($0.Error v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasErr() => $_has(3);
  @$pb.TagNumber(4)
  void clearErr() => clearField(4);
  @$pb.TagNumber(4)
  $0.Error ensureErr() => $_ensure(3);
}

class Share_Get extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.Get', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Share_Get._() : super();
  factory Share_Get() => create();
  factory Share_Get.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Get.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Get clone() => Share_Get()..mergeFromMessage(this);
  Share_Get copyWith(void Function(Share_Get) updates) => super.copyWith((message) => updates(message as Share_Get));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Get create() => Share_Get._();
  Share_Get createEmptyInstance() => create();
  static $pb.PbList<Share_Get> createRepeated() => $pb.PbList<Share_Get>();
  @$core.pragma('dart2js:noInline')
  static Share_Get getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Get>(create);
  static Share_Get _defaultInstance;
}

class Share_Add_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.Add.Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOM<$2.Token>(1, 'token', subBuilder: $2.Token.create)
    ..aOS(2, 'request')
    ..aOM<$3.Share>(3, 'share', subBuilder: $3.Share.create)
    ..hasRequiredFields = false
  ;

  Share_Add_Request._() : super();
  factory Share_Add_Request() => create();
  factory Share_Add_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Add_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Add_Request clone() => Share_Add_Request()..mergeFromMessage(this);
  Share_Add_Request copyWith(void Function(Share_Add_Request) updates) => super.copyWith((message) => updates(message as Share_Add_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Add_Request create() => Share_Add_Request._();
  Share_Add_Request createEmptyInstance() => create();
  static $pb.PbList<Share_Add_Request> createRepeated() => $pb.PbList<Share_Add_Request>();
  @$core.pragma('dart2js:noInline')
  static Share_Add_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Add_Request>(create);
  static Share_Add_Request _defaultInstance;

  @$pb.TagNumber(1)
  $2.Token get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.Token v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.Token ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get request => $_getSZ(1);
  @$pb.TagNumber(2)
  set request($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);

  @$pb.TagNumber(3)
  $3.Share get share => $_getN(2);
  @$pb.TagNumber(3)
  set share($3.Share v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasShare() => $_has(2);
  @$pb.TagNumber(3)
  void clearShare() => clearField(3);
  @$pb.TagNumber(3)
  $3.Share ensureShare() => $_ensure(2);
}

class Share_Add_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.Add.Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOM<$0.Error>(2, 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  Share_Add_Response._() : super();
  factory Share_Add_Response() => create();
  factory Share_Add_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Add_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Add_Response clone() => Share_Add_Response()..mergeFromMessage(this);
  Share_Add_Response copyWith(void Function(Share_Add_Response) updates) => super.copyWith((message) => updates(message as Share_Add_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Add_Response create() => Share_Add_Response._();
  Share_Add_Response createEmptyInstance() => create();
  static $pb.PbList<Share_Add_Response> createRepeated() => $pb.PbList<Share_Add_Response>();
  @$core.pragma('dart2js:noInline')
  static Share_Add_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Add_Response>(create);
  static Share_Add_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.Error get err => $_getN(1);
  @$pb.TagNumber(2)
  set err($0.Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(2)
  void clearErr() => clearField(2);
  @$pb.TagNumber(2)
  $0.Error ensureErr() => $_ensure(1);
}

class Share_Add extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.Add', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Share_Add._() : super();
  factory Share_Add() => create();
  factory Share_Add.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Add.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Add clone() => Share_Add()..mergeFromMessage(this);
  Share_Add copyWith(void Function(Share_Add) updates) => super.copyWith((message) => updates(message as Share_Add));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Add create() => Share_Add._();
  Share_Add createEmptyInstance() => create();
  static $pb.PbList<Share_Add> createRepeated() => $pb.PbList<Share_Add>();
  @$core.pragma('dart2js:noInline')
  static Share_Add getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Add>(create);
  static Share_Add _defaultInstance;
}

class Share_Edit_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.Edit.Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOM<$2.Token>(1, 'token', subBuilder: $2.Token.create)
    ..aOS(2, 'id')
    ..aOS(3, 'request')
    ..aInt64(4, 'state')
    ..aOM<$4.Op>(5, 'op', subBuilder: $4.Op.create)
    ..hasRequiredFields = false
  ;

  Share_Edit_Request._() : super();
  factory Share_Edit_Request() => create();
  factory Share_Edit_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Edit_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Edit_Request clone() => Share_Edit_Request()..mergeFromMessage(this);
  Share_Edit_Request copyWith(void Function(Share_Edit_Request) updates) => super.copyWith((message) => updates(message as Share_Edit_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Edit_Request create() => Share_Edit_Request._();
  Share_Edit_Request createEmptyInstance() => create();
  static $pb.PbList<Share_Edit_Request> createRepeated() => $pb.PbList<Share_Edit_Request>();
  @$core.pragma('dart2js:noInline')
  static Share_Edit_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Edit_Request>(create);
  static Share_Edit_Request _defaultInstance;

  @$pb.TagNumber(1)
  $2.Token get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($2.Token v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  $2.Token ensureToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get request => $_getSZ(2);
  @$pb.TagNumber(3)
  set request($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequest() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get state => $_getI64(3);
  @$pb.TagNumber(4)
  set state($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => clearField(4);

  @$pb.TagNumber(5)
  $4.Op get op => $_getN(4);
  @$pb.TagNumber(5)
  set op($4.Op v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOp() => $_has(4);
  @$pb.TagNumber(5)
  void clearOp() => clearField(5);
  @$pb.TagNumber(5)
  $4.Op ensureOp() => $_ensure(4);
}

class Share_Edit_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.Edit.Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aInt64(1, 'state')
    ..aOM<$4.Op>(2, 'op', subBuilder: $4.Op.create)
    ..aOM<$0.Error>(3, 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  Share_Edit_Response._() : super();
  factory Share_Edit_Response() => create();
  factory Share_Edit_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Edit_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Edit_Response clone() => Share_Edit_Response()..mergeFromMessage(this);
  Share_Edit_Response copyWith(void Function(Share_Edit_Response) updates) => super.copyWith((message) => updates(message as Share_Edit_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Edit_Response create() => Share_Edit_Response._();
  Share_Edit_Response createEmptyInstance() => create();
  static $pb.PbList<Share_Edit_Response> createRepeated() => $pb.PbList<Share_Edit_Response>();
  @$core.pragma('dart2js:noInline')
  static Share_Edit_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Edit_Response>(create);
  static Share_Edit_Response _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get state => $_getI64(0);
  @$pb.TagNumber(1)
  set state($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $4.Op get op => $_getN(1);
  @$pb.TagNumber(2)
  set op($4.Op v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOp() => $_has(1);
  @$pb.TagNumber(2)
  void clearOp() => clearField(2);
  @$pb.TagNumber(2)
  $4.Op ensureOp() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Error get err => $_getN(2);
  @$pb.TagNumber(3)
  set err($0.Error v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasErr() => $_has(2);
  @$pb.TagNumber(3)
  void clearErr() => clearField(3);
  @$pb.TagNumber(3)
  $0.Error ensureErr() => $_ensure(2);
}

class Share_Edit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share.Edit', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Share_Edit._() : super();
  factory Share_Edit() => create();
  factory Share_Edit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_Edit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_Edit clone() => Share_Edit()..mergeFromMessage(this);
  Share_Edit copyWith(void Function(Share_Edit) updates) => super.copyWith((message) => updates(message as Share_Edit));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_Edit create() => Share_Edit._();
  Share_Edit createEmptyInstance() => create();
  static $pb.PbList<Share_Edit> createRepeated() => $pb.PbList<Share_Edit>();
  @$core.pragma('dart2js:noInline')
  static Share_Edit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_Edit>(create);
  static Share_Edit _defaultInstance;
}

class Share extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Share._() : super();
  factory Share() => create();
  factory Share.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share clone() => Share()..mergeFromMessage(this);
  Share copyWith(void Function(Share) updates) => super.copyWith((message) => updates(message as Share));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share create() => Share._();
  Share createEmptyInstance() => create();
  static $pb.PbList<Share> createRepeated() => $pb.PbList<Share>();
  @$core.pragma('dart2js:noInline')
  static Share getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share>(create);
  static Share _defaultInstance;
}

