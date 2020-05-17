///
//  Generated code. Do not modify.
//  source: groupshare/data/foo/foo.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Foo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Foo', package: const $pb.PackageName('foo'), createEmptyInstance: create)
    ..aOS(1, 'bar')
    ..hasRequiredFields = false
  ;

  Foo._() : super();
  factory Foo() => create();
  factory Foo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Foo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Foo clone() => Foo()..mergeFromMessage(this);
  Foo copyWith(void Function(Foo) updates) => super.copyWith((message) => updates(message as Foo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Foo create() => Foo._();
  Foo createEmptyInstance() => create();
  static $pb.PbList<Foo> createRepeated() => $pb.PbList<Foo>();
  @$core.pragma('dart2js:noInline')
  static Foo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Foo>(create);
  static Foo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bar => $_getSZ(0);
  @$pb.TagNumber(1)
  set bar($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBar() => $_has(0);
  @$pb.TagNumber(1)
  void clearBar() => clearField(1);
}

