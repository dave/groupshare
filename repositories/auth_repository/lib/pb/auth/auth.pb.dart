///
//  Generated code. Do not modify.
//  source: auth/auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Login_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Login_Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Login_Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'time')
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
}

class Code_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Code_Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'device')
    ..aOS(2, 'email')
    ..aOS(3, 'time')
    ..aOS(4, 'code')
    ..aOB(5, 'test')
    ..hasRequiredFields = false
  ;

  Code_Request._() : super();
  factory Code_Request() => create();
  factory Code_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Code_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Code_Request clone() => Code_Request()..mergeFromMessage(this);
  Code_Request copyWith(void Function(Code_Request) updates) => super.copyWith((message) => updates(message as Code_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Code_Request create() => Code_Request._();
  Code_Request createEmptyInstance() => create();
  static $pb.PbList<Code_Request> createRepeated() => $pb.PbList<Code_Request>();
  @$core.pragma('dart2js:noInline')
  static Code_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Code_Request>(create);
  static Code_Request _defaultInstance;

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

  @$pb.TagNumber(5)
  $core.bool get test => $_getBF(4);
  @$pb.TagNumber(5)
  set test($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTest() => $_has(4);
  @$pb.TagNumber(5)
  void clearTest() => clearField(5);
}

class Code_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Code_Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'hash')
    ..hasRequiredFields = false
  ;

  Code_Response._() : super();
  factory Code_Response() => create();
  factory Code_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Code_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Code_Response clone() => Code_Response()..mergeFromMessage(this);
  Code_Response copyWith(void Function(Code_Response) updates) => super.copyWith((message) => updates(message as Code_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Code_Response create() => Code_Response._();
  Code_Response createEmptyInstance() => create();
  static $pb.PbList<Code_Response> createRepeated() => $pb.PbList<Code_Response>();
  @$core.pragma('dart2js:noInline')
  static Code_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Code_Response>(create);
  static Code_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get hash => $_getSZ(1);
  @$pb.TagNumber(2)
  set hash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);
}

class Validate_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Validate_Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Validate_Request._() : super();
  factory Validate_Request() => create();
  factory Validate_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Validate_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Validate_Request clone() => Validate_Request()..mergeFromMessage(this);
  Validate_Request copyWith(void Function(Validate_Request) updates) => super.copyWith((message) => updates(message as Validate_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Validate_Request create() => Validate_Request._();
  Validate_Request createEmptyInstance() => create();
  static $pb.PbList<Validate_Request> createRepeated() => $pb.PbList<Validate_Request>();
  @$core.pragma('dart2js:noInline')
  static Validate_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Validate_Request>(create);
  static Validate_Request _defaultInstance;
}

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Token', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'device')
    ..aOS(5, 'hash')
    ..hasRequiredFields = false
  ;

  Token._() : super();
  factory Token() => create();
  factory Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Token clone() => Token()..mergeFromMessage(this);
  Token copyWith(void Function(Token) updates) => super.copyWith((message) => updates(message as Token));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token create() => Token._();
  Token createEmptyInstance() => create();
  static $pb.PbList<Token> createRepeated() => $pb.PbList<Token>();
  @$core.pragma('dart2js:noInline')
  static Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token>(create);
  static Token _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get device => $_getSZ(1);
  @$pb.TagNumber(2)
  set device($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevice() => clearField(2);

  @$pb.TagNumber(5)
  $core.String get hash => $_getSZ(2);
  @$pb.TagNumber(5)
  set hash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasHash() => $_has(2);
  @$pb.TagNumber(5)
  void clearHash() => clearField(5);
}

