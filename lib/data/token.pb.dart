///
//  Generated code. Do not modify.
//  source: token.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenRequest', createEmptyInstance: create)
    ..aOS(1, 'device')
    ..aOS(2, 'email')
    ..aOS(3, 'time')
    ..aOS(4, 'token')
    ..hasRequiredFields = false
  ;

  TokenRequest._() : super();
  factory TokenRequest() => create();
  factory TokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenRequest clone() => TokenRequest()..mergeFromMessage(this);
  TokenRequest copyWith(void Function(TokenRequest) updates) => super.copyWith((message) => updates(message as TokenRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenRequest create() => TokenRequest._();
  TokenRequest createEmptyInstance() => create();
  static $pb.PbList<TokenRequest> createRepeated() => $pb.PbList<TokenRequest>();
  @$core.pragma('dart2js:noInline')
  static TokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenRequest>(create);
  static TokenRequest _defaultInstance;

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

class TokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenResponse', createEmptyInstance: create)
    ..aOB(1, 'ok')
    ..aOM<TokenError>(2, 'err', subBuilder: TokenError.create)
    ..hasRequiredFields = false
  ;

  TokenResponse._() : super();
  factory TokenResponse() => create();
  factory TokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenResponse clone() => TokenResponse()..mergeFromMessage(this);
  TokenResponse copyWith(void Function(TokenResponse) updates) => super.copyWith((message) => updates(message as TokenResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenResponse create() => TokenResponse._();
  TokenResponse createEmptyInstance() => create();
  static $pb.PbList<TokenResponse> createRepeated() => $pb.PbList<TokenResponse>();
  @$core.pragma('dart2js:noInline')
  static TokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenResponse>(create);
  static TokenResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

  @$pb.TagNumber(2)
  TokenError get err => $_getN(1);
  @$pb.TagNumber(2)
  set err(TokenError v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(2)
  void clearErr() => clearField(2);
  @$pb.TagNumber(2)
  TokenError ensureErr() => $_ensure(1);
}

class TokenError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenError', createEmptyInstance: create)
    ..aOB(1, 'error')
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  TokenError._() : super();
  factory TokenError() => create();
  factory TokenError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenError clone() => TokenError()..mergeFromMessage(this);
  TokenError copyWith(void Function(TokenError) updates) => super.copyWith((message) => updates(message as TokenError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenError create() => TokenError._();
  TokenError createEmptyInstance() => create();
  static $pb.PbList<TokenError> createRepeated() => $pb.PbList<TokenError>();
  @$core.pragma('dart2js:noInline')
  static TokenError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenError>(create);
  static TokenError _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get error => $_getBF(0);
  @$pb.TagNumber(1)
  set error($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

