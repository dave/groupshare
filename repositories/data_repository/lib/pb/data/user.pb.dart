///
//  Generated code. Do not modify.
//  source: data/user.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class User_Share extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User.Share', package: const $pb.PackageName('data'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  User_Share._() : super();
  factory User_Share() => create();
  factory User_Share.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User_Share.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User_Share clone() => User_Share()..mergeFromMessage(this);
  User_Share copyWith(void Function(User_Share) updates) => super.copyWith((message) => updates(message as User_Share));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User_Share create() => User_Share._();
  User_Share createEmptyInstance() => create();
  static $pb.PbList<User_Share> createRepeated() => $pb.PbList<User_Share>();
  @$core.pragma('dart2js:noInline')
  static User_Share getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User_Share>(create);
  static User_Share _defaultInstance;

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
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User', package: const $pb.PackageName('data'), createEmptyInstance: create)
    ..pc<User_Share>(1, 'favourites', $pb.PbFieldType.PM, subBuilder: User_Share.create)
    ..pc<User_Share>(2, 'available', $pb.PbFieldType.PM, subBuilder: User_Share.create)
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
  $core.List<User_Share> get favourites => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<User_Share> get available => $_getList(1);
}

