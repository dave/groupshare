///
//  Generated code. Do not modify.
//  source: groupshare/messages/login.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'error.pb.dart' as $3;

class Login_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Login.Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'device')
    ..aOS(2, 'email')
    ..hasRequiredFields = false
  ;

  Login_Request._() : super();
  factory Login_Request() => create();
  factory Login_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Login_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Login_Request clone() => Login_Request()..mergeFromMessage(this);
  Login_Request copyWith(void Function(Login_Request) updates) => super.copyWith((message) => updates(message as Login_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Login_Request create() => Login_Request._();
  Login_Request createEmptyInstance() => create();
  static $pb.PbList<Login_Request> createRepeated() => $pb.PbList<Login_Request>();
  @$core.pragma('dart2js:noInline')
  static Login_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Login_Request>(create);
  static Login_Request _defaultInstance;

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
}

class Login_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Login.Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'time')
    ..aOM<$3.Error>(2, 'err', subBuilder: $3.Error.create)
    ..hasRequiredFields = false
  ;

  Login_Response._() : super();
  factory Login_Response() => create();
  factory Login_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Login_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Login_Response clone() => Login_Response()..mergeFromMessage(this);
  Login_Response copyWith(void Function(Login_Response) updates) => super.copyWith((message) => updates(message as Login_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Login_Response create() => Login_Response._();
  Login_Response createEmptyInstance() => create();
  static $pb.PbList<Login_Response> createRepeated() => $pb.PbList<Login_Response>();
  @$core.pragma('dart2js:noInline')
  static Login_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Login_Response>(create);
  static Login_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get time => $_getSZ(0);
  @$pb.TagNumber(1)
  set time($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);

  @$pb.TagNumber(2)
  $3.Error get err => $_getN(1);
  @$pb.TagNumber(2)
  set err($3.Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(2)
  void clearErr() => clearField(2);
  @$pb.TagNumber(2)
  $3.Error ensureErr() => $_ensure(1);
}

class Login extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Login', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Login._() : super();
  factory Login() => create();
  factory Login.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Login.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Login clone() => Login()..mergeFromMessage(this);
  Login copyWith(void Function(Login) updates) => super.copyWith((message) => updates(message as Login));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Login create() => Login._();
  Login createEmptyInstance() => create();
  static $pb.PbList<Login> createRepeated() => $pb.PbList<Login>();
  @$core.pragma('dart2js:noInline')
  static Login getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Login>(create);
  static Login _defaultInstance;
}

