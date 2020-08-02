///
//  Generated code. Do not modify.
//  source: groupshare/data/snapshot.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:protod/pserver/pserver.pb.dart' as $0;

class Snapshot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Snapshot', package: const $pb.PackageName('data'), createEmptyInstance: create)
    ..aOM<$0.Snapshot>(1, 'value', subBuilder: $0.Snapshot.create)
    ..aOS(2, 'user')
    ..hasRequiredFields = false
  ;

  Snapshot._() : super();
  factory Snapshot() => create();
  factory Snapshot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Snapshot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Snapshot clone() => Snapshot()..mergeFromMessage(this);
  Snapshot copyWith(void Function(Snapshot) updates) => super.copyWith((message) => updates(message as Snapshot));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Snapshot create() => Snapshot._();
  Snapshot createEmptyInstance() => create();
  static $pb.PbList<Snapshot> createRepeated() => $pb.PbList<Snapshot>();
  @$core.pragma('dart2js:noInline')
  static Snapshot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Snapshot>(create);
  static Snapshot _defaultInstance;

  @$pb.TagNumber(1)
  $0.Snapshot get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($0.Snapshot v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  $0.Snapshot ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
}

class ShareSnapshot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShareSnapshot', package: const $pb.PackageName('data'), createEmptyInstance: create)
    ..aOM<$0.Snapshot>(1, 'value', subBuilder: $0.Snapshot.create)
    ..aOS(2, 'user')
    ..aOS(3, 'name')
    ..hasRequiredFields = false
  ;

  ShareSnapshot._() : super();
  factory ShareSnapshot() => create();
  factory ShareSnapshot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShareSnapshot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShareSnapshot clone() => ShareSnapshot()..mergeFromMessage(this);
  ShareSnapshot copyWith(void Function(ShareSnapshot) updates) => super.copyWith((message) => updates(message as ShareSnapshot));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShareSnapshot create() => ShareSnapshot._();
  ShareSnapshot createEmptyInstance() => create();
  static $pb.PbList<ShareSnapshot> createRepeated() => $pb.PbList<ShareSnapshot>();
  @$core.pragma('dart2js:noInline')
  static ShareSnapshot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShareSnapshot>(create);
  static ShareSnapshot _defaultInstance;

  @$pb.TagNumber(1)
  $0.Snapshot get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($0.Snapshot v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  $0.Snapshot ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

