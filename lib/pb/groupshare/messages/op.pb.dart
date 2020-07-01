///
//  Generated code. Do not modify.
//  source: groupshare/messages/op.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protod/delta/delta.pb.dart' as $0;

class State_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('State.Request',
      package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'unique')
    ..aOS(2, 'state')
    ..aOM<$0.Op>(3, 'op', subBuilder: $0.Op.create)
    ..hasRequiredFields = false;

  State_Request._() : super();
  factory State_Request() => create();
  factory State_Request.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory State_Request.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  State_Request clone() => State_Request()..mergeFromMessage(this);
  State_Request copyWith(void Function(State_Request) updates) =>
      super.copyWith((message) => updates(message as State_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static State_Request create() => State_Request._();
  State_Request createEmptyInstance() => create();
  static $pb.PbList<State_Request> createRepeated() =>
      $pb.PbList<State_Request>();
  @$core.pragma('dart2js:noInline')
  static State_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<State_Request>(create);
  static State_Request _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unique => $_getSZ(0);
  @$pb.TagNumber(1)
  set unique($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUnique() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnique() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get state => $_getSZ(1);
  @$pb.TagNumber(2)
  set state($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $0.Op get op => $_getN(2);
  @$pb.TagNumber(3)
  set op($0.Op v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOp() => $_has(2);
  @$pb.TagNumber(3)
  void clearOp() => clearField(3);
  @$pb.TagNumber(3)
  $0.Op ensureOp() => $_ensure(2);
}

class State_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('State.Response',
      package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'unique')
    ..aOS(2, 'state')
    ..aOM<$0.Op>(3, 'op', subBuilder: $0.Op.create)
    ..hasRequiredFields = false;

  State_Response._() : super();
  factory State_Response() => create();
  factory State_Response.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory State_Response.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  State_Response clone() => State_Response()..mergeFromMessage(this);
  State_Response copyWith(void Function(State_Response) updates) =>
      super.copyWith((message) => updates(message as State_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static State_Response create() => State_Response._();
  State_Response createEmptyInstance() => create();
  static $pb.PbList<State_Response> createRepeated() =>
      $pb.PbList<State_Response>();
  @$core.pragma('dart2js:noInline')
  static State_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<State_Response>(create);
  static State_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unique => $_getSZ(0);
  @$pb.TagNumber(1)
  set unique($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUnique() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnique() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get state => $_getSZ(1);
  @$pb.TagNumber(2)
  set state($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $0.Op get op => $_getN(2);
  @$pb.TagNumber(3)
  set op($0.Op v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOp() => $_has(2);
  @$pb.TagNumber(3)
  void clearOp() => clearField(3);
  @$pb.TagNumber(3)
  $0.Op ensureOp() => $_ensure(2);
}

class State_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('State.Item',
      package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..aOS(2, 'id')
    ..aInt64(3, 'state')
    ..aOS(5, 'unique')
    ..aOM<$0.Op>(6, 'op2x', subBuilder: $0.Op.create)
    ..aOM<$0.Op>(7, 'op1x', subBuilder: $0.Op.create)
    ..hasRequiredFields = false;

  State_Item._() : super();
  factory State_Item() => create();
  factory State_Item.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory State_Item.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  State_Item clone() => State_Item()..mergeFromMessage(this);
  State_Item copyWith(void Function(State_Item) updates) =>
      super.copyWith((message) => updates(message as State_Item));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static State_Item create() => State_Item._();
  State_Item createEmptyInstance() => create();
  static $pb.PbList<State_Item> createRepeated() => $pb.PbList<State_Item>();
  @$core.pragma('dart2js:noInline')
  static State_Item getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<State_Item>(create);
  static State_Item _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get state => $_getI64(2);
  @$pb.TagNumber(3)
  set state($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(5)
  $core.String get unique => $_getSZ(3);
  @$pb.TagNumber(5)
  set unique($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasUnique() => $_has(3);
  @$pb.TagNumber(5)
  void clearUnique() => clearField(5);

  @$pb.TagNumber(6)
  $0.Op get op2x => $_getN(4);
  @$pb.TagNumber(6)
  set op2x($0.Op v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOp2x() => $_has(4);
  @$pb.TagNumber(6)
  void clearOp2x() => clearField(6);
  @$pb.TagNumber(6)
  $0.Op ensureOp2x() => $_ensure(4);

  @$pb.TagNumber(7)
  $0.Op get op1x => $_getN(5);
  @$pb.TagNumber(7)
  set op1x($0.Op v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasOp1x() => $_has(5);
  @$pb.TagNumber(7)
  void clearOp1x() => clearField(7);
  @$pb.TagNumber(7)
  $0.Op ensureOp1x() => $_ensure(5);
}

class State extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('State',
      package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  State._() : super();
  factory State() => create();
  factory State.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory State.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  State clone() => State()..mergeFromMessage(this);
  State copyWith(void Function(State) updates) =>
      super.copyWith((message) => updates(message as State));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static State create() => State._();
  State createEmptyInstance() => create();
  static $pb.PbList<State> createRepeated() => $pb.PbList<State>();
  @$core.pragma('dart2js:noInline')
  static State getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<State>(create);
  static State _defaultInstance;
}
