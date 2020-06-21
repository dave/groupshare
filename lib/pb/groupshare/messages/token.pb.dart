///
//  Generated code. Do not modify.
//  source: groupshare/messages/token.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'error.pb.dart' as $0;

class Token_Validate_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Token.Validate.Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOM<Token>(1, 'token', subBuilder: Token.create)
    ..hasRequiredFields = false
  ;

  Token_Validate_Request._() : super();
  factory Token_Validate_Request() => create();
  factory Token_Validate_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token_Validate_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Token_Validate_Request clone() => Token_Validate_Request()..mergeFromMessage(this);
  Token_Validate_Request copyWith(void Function(Token_Validate_Request) updates) => super.copyWith((message) => updates(message as Token_Validate_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token_Validate_Request create() => Token_Validate_Request._();
  Token_Validate_Request createEmptyInstance() => create();
  static $pb.PbList<Token_Validate_Request> createRepeated() => $pb.PbList<Token_Validate_Request>();
  @$core.pragma('dart2js:noInline')
  static Token_Validate_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token_Validate_Request>(create);
  static Token_Validate_Request _defaultInstance;

  @$pb.TagNumber(1)
  Token get token => $_getN(0);
  @$pb.TagNumber(1)
  set token(Token v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
  @$pb.TagNumber(1)
  Token ensureToken() => $_ensure(0);
}

class Token_Validate_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Token.Validate.Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOM<$0.Error>(3, 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  Token_Validate_Response._() : super();
  factory Token_Validate_Response() => create();
  factory Token_Validate_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token_Validate_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Token_Validate_Response clone() => Token_Validate_Response()..mergeFromMessage(this);
  Token_Validate_Response copyWith(void Function(Token_Validate_Response) updates) => super.copyWith((message) => updates(message as Token_Validate_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token_Validate_Response create() => Token_Validate_Response._();
  Token_Validate_Response createEmptyInstance() => create();
  static $pb.PbList<Token_Validate_Response> createRepeated() => $pb.PbList<Token_Validate_Response>();
  @$core.pragma('dart2js:noInline')
  static Token_Validate_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token_Validate_Response>(create);
  static Token_Validate_Response _defaultInstance;

  @$pb.TagNumber(3)
  $0.Error get err => $_getN(0);
  @$pb.TagNumber(3)
  set err($0.Error v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(3)
  void clearErr() => clearField(3);
  @$pb.TagNumber(3)
  $0.Error ensureErr() => $_ensure(0);
}

class Token_Validate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Token.Validate', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Token_Validate._() : super();
  factory Token_Validate() => create();
  factory Token_Validate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token_Validate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Token_Validate clone() => Token_Validate()..mergeFromMessage(this);
  Token_Validate copyWith(void Function(Token_Validate) updates) => super.copyWith((message) => updates(message as Token_Validate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token_Validate create() => Token_Validate._();
  Token_Validate createEmptyInstance() => create();
  static $pb.PbList<Token_Validate> createRepeated() => $pb.PbList<Token_Validate>();
  @$core.pragma('dart2js:noInline')
  static Token_Validate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token_Validate>(create);
  static Token_Validate _defaultInstance;
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

