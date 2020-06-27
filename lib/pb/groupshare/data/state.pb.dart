///
//  Generated code. Do not modify.
//  source: groupshare/data/state.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class State extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('State', package: const $pb.PackageName('data'), createEmptyInstance: create)
    ..aOS(1, 'user')
    ..aOS(2, 'type')
    ..aOS(3, 'id')
    ..aInt64(4, 'state')
    ..aInt64(5, 'previous')
    ..aOS(6, 'unique')
    ..a<$core.List<$core.int>>(7, 'op2x', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(8, 'op1x', $pb.PbFieldType.OY)
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

  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(3)
  set id($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get state => $_getI64(3);
  @$pb.TagNumber(4)
  set state($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get previous => $_getI64(4);
  @$pb.TagNumber(5)
  set previous($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrevious() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrevious() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get unique => $_getSZ(5);
  @$pb.TagNumber(6)
  set unique($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUnique() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnique() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get op2x => $_getN(6);
  @$pb.TagNumber(7)
  set op2x($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOp2x() => $_has(6);
  @$pb.TagNumber(7)
  void clearOp2x() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get op1x => $_getN(7);
  @$pb.TagNumber(8)
  set op1x($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOp1x() => $_has(7);
  @$pb.TagNumber(8)
  void clearOp1x() => clearField(8);
}

