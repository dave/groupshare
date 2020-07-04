///
//  Generated code. Do not modify.
//  source: groupshare/data/bar.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Bar extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Bar', package: const $pb.PackageName('data'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  Bar._() : super();
  factory Bar() => create();
  factory Bar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Bar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Bar clone() => Bar()..mergeFromMessage(this);
  Bar copyWith(void Function(Bar) updates) => super.copyWith((message) => updates(message as Bar));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Bar create() => Bar._();
  Bar createEmptyInstance() => create();
  static $pb.PbList<Bar> createRepeated() => $pb.PbList<Bar>();
  @$core.pragma('dart2js:noInline')
  static Bar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Bar>(create);
  static Bar _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

