///
//  Generated code. Do not modify.
//  source: authpb/auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../error.pb.dart' as $0;

class Auth_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Auth.Request', package: const $pb.PackageName('authpb'), createEmptyInstance: create)
    ..aOS(1, 'device')
    ..aOS(2, 'email')
    ..aOS(3, 'time')
    ..aOS(4, 'code')
    ..hasRequiredFields = false
  ;

  Auth_Request._() : super();
  factory Auth_Request() => create();
  factory Auth_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auth_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Auth_Request clone() => Auth_Request()..mergeFromMessage(this);
  Auth_Request copyWith(void Function(Auth_Request) updates) => super.copyWith((message) => updates(message as Auth_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Auth_Request create() => Auth_Request._();
  Auth_Request createEmptyInstance() => create();
  static $pb.PbList<Auth_Request> createRepeated() => $pb.PbList<Auth_Request>();
  @$core.pragma('dart2js:noInline')
  static Auth_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth_Request>(create);
  static Auth_Request _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get device => $_getSZ(0);
  @$pb.TagNumber(1)
  set device($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevice() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get time => $_getSZ(2);
  @$pb.TagNumber(3)
  set time($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get code => $_getSZ(3);
  @$pb.TagNumber(4)
  set code($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCode() => clearField(4);
}

class Auth_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Auth.Response', package: const $pb.PackageName('authpb'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..aOM<$0.Error>(2, 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  Auth_Response._() : super();
  factory Auth_Response() => create();
  factory Auth_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auth_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Auth_Response clone() => Auth_Response()..mergeFromMessage(this);
  Auth_Response copyWith(void Function(Auth_Response) updates) => super.copyWith((message) => updates(message as Auth_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Auth_Response create() => Auth_Response._();
  Auth_Response createEmptyInstance() => create();
  static $pb.PbList<Auth_Response> createRepeated() => $pb.PbList<Auth_Response>();
  @$core.pragma('dart2js:noInline')
  static Auth_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth_Response>(create);
  static Auth_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

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

class Auth extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Auth', package: const $pb.PackageName('authpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Auth._() : super();
  factory Auth() => create();
  factory Auth.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auth.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Auth clone() => Auth()..mergeFromMessage(this);
  Auth copyWith(void Function(Auth) updates) => super.copyWith((message) => updates(message as Auth));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Auth create() => Auth._();
  Auth createEmptyInstance() => create();
  static $pb.PbList<Auth> createRepeated() => $pb.PbList<Auth>();
  @$core.pragma('dart2js:noInline')
  static Auth getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth>(create);
  static Auth _defaultInstance;
}

