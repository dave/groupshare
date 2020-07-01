///
//  Generated code. Do not modify.
//  source: groupshare/data/share.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'foo/foo.pb.dart' as $1;

class Share extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share', package: const $pb.PackageName('data'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOM<$1.Foo>(2, 'foo', subBuilder: $1.Foo.create)
    ..hasRequiredFields = false
  ;

  Share._() : super();
  factory Share() => create();
  factory Share.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share clone() => Share()..mergeFromMessage(this);
  Share copyWith(void Function(Share) updates) => super.copyWith((message) => updates(message as Share));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share create() => Share._();
  Share createEmptyInstance() => create();
  static $pb.PbList<Share> createRepeated() => $pb.PbList<Share>();
  @$core.pragma('dart2js:noInline')
  static Share getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share>(create);
  static Share _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $1.Foo get foo => $_getN(1);
  @$pb.TagNumber(2)
  set foo($1.Foo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFoo() => $_has(1);
  @$pb.TagNumber(2)
  void clearFoo() => clearField(2);
  @$pb.TagNumber(2)
  $1.Foo ensureFoo() => $_ensure(1);
}

