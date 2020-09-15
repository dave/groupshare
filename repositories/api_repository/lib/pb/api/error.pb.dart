///
//  Generated code. Do not modify.
//  source: api/error.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Error extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Error', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..aOS(1, 'message')
    ..aOS(2, 'debug')
    ..aOB(3, 'busy')
    ..aOB(4, 'retry')
    ..aOB(5, 'stop')
    ..aOB(6, 'auth')
    ..aOB(7, 'expired')
    ..hasRequiredFields = false
  ;

  Error._() : super();
  factory Error() => create();
  factory Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Error clone() => Error()..mergeFromMessage(this);
  Error copyWith(void Function(Error) updates) => super.copyWith((message) => updates(message as Error));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get debug => $_getSZ(1);
  @$pb.TagNumber(2)
  set debug($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDebug() => $_has(1);
  @$pb.TagNumber(2)
  void clearDebug() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get busy => $_getBF(2);
  @$pb.TagNumber(3)
  set busy($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBusy() => $_has(2);
  @$pb.TagNumber(3)
  void clearBusy() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get retry => $_getBF(3);
  @$pb.TagNumber(4)
  set retry($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRetry() => $_has(3);
  @$pb.TagNumber(4)
  void clearRetry() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get stop => $_getBF(4);
  @$pb.TagNumber(5)
  set stop($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStop() => $_has(4);
  @$pb.TagNumber(5)
  void clearStop() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get auth => $_getBF(5);
  @$pb.TagNumber(6)
  set auth($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAuth() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuth() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get expired => $_getBF(6);
  @$pb.TagNumber(7)
  set expired($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpired() => $_has(6);
  @$pb.TagNumber(7)
  void clearExpired() => clearField(7);
}

