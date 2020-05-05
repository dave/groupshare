///
//  Generated code. Do not modify.
//  source: auth/token.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../error.pb.dart' as $0;

class Token_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Token.Request', createEmptyInstance: create)
    ..aOS(1, 'device')
    ..aOS(2, 'email')
    ..aOS(3, 'time')
    ..aOS(4, 'token')
    ..hasRequiredFields = false
  ;

  Token_Request._() : super();
  factory Token_Request() => create();
  factory Token_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Token_Request clone() => Token_Request()..mergeFromMessage(this);
  Token_Request copyWith(void Function(Token_Request) updates) => super.copyWith((message) => updates(message as Token_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token_Request create() => Token_Request._();
  Token_Request createEmptyInstance() => create();
  static $pb.PbList<Token_Request> createRepeated() => $pb.PbList<Token_Request>();
  @$core.pragma('dart2js:noInline')
  static Token_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token_Request>(create);
  static Token_Request _defaultInstance;

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
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);
}

class Token_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Token.Response', createEmptyInstance: create)
    ..aOB(1, 'ok')
    ..aOM<$0.Error>(2, 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  Token_Response._() : super();
  factory Token_Response() => create();
  factory Token_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Token_Response clone() => Token_Response()..mergeFromMessage(this);
  Token_Response copyWith(void Function(Token_Response) updates) => super.copyWith((message) => updates(message as Token_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token_Response create() => Token_Response._();
  Token_Response createEmptyInstance() => create();
  static $pb.PbList<Token_Response> createRepeated() => $pb.PbList<Token_Response>();
  @$core.pragma('dart2js:noInline')
  static Token_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token_Response>(create);
  static Token_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

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

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Token', createEmptyInstance: create)
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
}

