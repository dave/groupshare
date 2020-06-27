///
//  Generated code. Do not modify.
//  source: groupshare/messages/state.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class State_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('State.Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'unique')
    ..aInt64(2, 'state')
    ..a<$core.List<$core.int>>(3, 'op', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  State_Request._() : super();
  factory State_Request() => create();
  factory State_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory State_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  State_Request clone() => State_Request()..mergeFromMessage(this);
  State_Request copyWith(void Function(State_Request) updates) => super.copyWith((message) => updates(message as State_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static State_Request create() => State_Request._();
  State_Request createEmptyInstance() => create();
  static $pb.PbList<State_Request> createRepeated() => $pb.PbList<State_Request>();
  @$core.pragma('dart2js:noInline')
  static State_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<State_Request>(create);
  static State_Request _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unique => $_getSZ(0);
  @$pb.TagNumber(1)
  set unique($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnique() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnique() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get state => $_getI64(1);
  @$pb.TagNumber(2)
  set state($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get op => $_getN(2);
  @$pb.TagNumber(3)
  set op($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOp() => $_has(2);
  @$pb.TagNumber(3)
  void clearOp() => clearField(3);
}

class State_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('State.Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'unique')
    ..aInt64(2, 'state')
    ..a<$core.List<$core.int>>(3, 'op', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  State_Response._() : super();
  factory State_Response() => create();
  factory State_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory State_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  State_Response clone() => State_Response()..mergeFromMessage(this);
  State_Response copyWith(void Function(State_Response) updates) => super.copyWith((message) => updates(message as State_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static State_Response create() => State_Response._();
  State_Response createEmptyInstance() => create();
  static $pb.PbList<State_Response> createRepeated() => $pb.PbList<State_Response>();
  @$core.pragma('dart2js:noInline')
  static State_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<State_Response>(create);
  static State_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unique => $_getSZ(0);
  @$pb.TagNumber(1)
  set unique($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnique() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnique() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get state => $_getI64(1);
  @$pb.TagNumber(2)
  set state($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get op => $_getN(2);
  @$pb.TagNumber(3)
  set op($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOp() => $_has(2);
  @$pb.TagNumber(3)
  void clearOp() => clearField(3);
}

class State extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('State', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  State._() : super();
  factory State() => create();
  factory State.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory State.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  State clone() => State()..mergeFromMessage(this);
  State copyWith(void Function(State) updates) => super.copyWith((message) => updates(message as State));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static State create() => State._();
  State createEmptyInstance() => create();
  static $pb.PbList<State> createRepeated() => $pb.PbList<State>();
  @$core.pragma('dart2js:noInline')
  static State getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<State>(create);
  static State _defaultInstance;
}

