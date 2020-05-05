///
//  Generated code. Do not modify.
//  source: store/change.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/any.pb.dart' as $1;

import 'change.pbenum.dart';

export 'change.pbenum.dart';

class Change extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Change', createEmptyInstance: create)
    ..e<Change_Type>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: Change_Type.EditValue, valueOf: Change_Type.valueOf, enumValues: Change_Type.values)
    ..pc<$1.Any>(2, 'location', $pb.PbFieldType.PM, subBuilder: $1.Any.create)
    ..aOM<$1.Any>(3, 'value', subBuilder: $1.Any.create)
    ..hasRequiredFields = false
  ;

  Change._() : super();
  factory Change() => create();
  factory Change.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Change.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Change clone() => Change()..mergeFromMessage(this);
  Change copyWith(void Function(Change) updates) => super.copyWith((message) => updates(message as Change));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Change create() => Change._();
  Change createEmptyInstance() => create();
  static $pb.PbList<Change> createRepeated() => $pb.PbList<Change>();
  @$core.pragma('dart2js:noInline')
  static Change getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Change>(create);
  static Change _defaultInstance;

  @$pb.TagNumber(1)
  Change_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Change_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$1.Any> get location => $_getList(1);

  @$pb.TagNumber(3)
  $1.Any get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($1.Any v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  $1.Any ensureValue() => $_ensure(2);
}

