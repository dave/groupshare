///
//  Generated code. Do not modify.
//  source: data/user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class User_AvailableShare extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User.AvailableShare', package: const $pb.PackageName('data'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..aOB(3, 'new')
    ..hasRequiredFields = false
  ;

  User_AvailableShare._() : super();
  factory User_AvailableShare() => create();
  factory User_AvailableShare.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_AvailableShare.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User_AvailableShare clone() => User_AvailableShare()..mergeFromMessage(this);
  User_AvailableShare copyWith(void Function(User_AvailableShare) updates) => super.copyWith((message) => updates(message as User_AvailableShare));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User_AvailableShare create() => User_AvailableShare._();
  User_AvailableShare createEmptyInstance() => create();
  static $pb.PbList<User_AvailableShare> createRepeated() => $pb.PbList<User_AvailableShare>();
  @$core.pragma('dart2js:noInline')
  static User_AvailableShare getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_AvailableShare>(create);
  static User_AvailableShare _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get new_3 => $_getBF(2);
  @$pb.TagNumber(3)
  set new_3($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNew_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearNew_3() => clearField(3);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User', package: const $pb.PackageName('data'), createEmptyInstance: create)
    ..pc<User_AvailableShare>(1, 'shares', $pb.PbFieldType.PM, subBuilder: User_AvailableShare.create)
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User() => create();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User clone() => User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User_AvailableShare> get shares => $_getList(0);
}

