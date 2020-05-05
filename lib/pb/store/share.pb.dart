///
//  Generated code. Do not modify.
//  source: store/share.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../error.pb.dart' as $0;
import 'change.pb.dart' as $2;

class Share extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share', createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
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

class NewShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewShareRequest', createEmptyInstance: create)
    ..aOM<Share>(1, 'share', subBuilder: Share.create)
    ..hasRequiredFields = false
  ;

  NewShareRequest._() : super();
  factory NewShareRequest() => create();
  factory NewShareRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewShareRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewShareRequest clone() => NewShareRequest()..mergeFromMessage(this);
  NewShareRequest copyWith(void Function(NewShareRequest) updates) => super.copyWith((message) => updates(message as NewShareRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewShareRequest create() => NewShareRequest._();
  NewShareRequest createEmptyInstance() => create();
  static $pb.PbList<NewShareRequest> createRepeated() => $pb.PbList<NewShareRequest>();
  @$core.pragma('dart2js:noInline')
  static NewShareRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewShareRequest>(create);
  static NewShareRequest _defaultInstance;

  @$pb.TagNumber(1)
  Share get share => $_getN(0);
  @$pb.TagNumber(1)
  set share(Share v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasShare() => $_has(0);
  @$pb.TagNumber(1)
  void clearShare() => clearField(1);
  @$pb.TagNumber(1)
  Share ensureShare() => $_ensure(0);
}

class NewShareResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewShareResponse', createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'version')
    ..aOM<$0.Error>(3, 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  NewShareResponse._() : super();
  factory NewShareResponse() => create();
  factory NewShareResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewShareResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewShareResponse clone() => NewShareResponse()..mergeFromMessage(this);
  NewShareResponse copyWith(void Function(NewShareResponse) updates) => super.copyWith((message) => updates(message as NewShareResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewShareResponse create() => NewShareResponse._();
  NewShareResponse createEmptyInstance() => create();
  static $pb.PbList<NewShareResponse> createRepeated() => $pb.PbList<NewShareResponse>();
  @$core.pragma('dart2js:noInline')
  static NewShareResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewShareResponse>(create);
  static NewShareResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $0.Error get err => $_getN(2);
  @$pb.TagNumber(3)
  set err($0.Error v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasErr() => $_has(2);
  @$pb.TagNumber(3)
  void clearErr() => clearField(3);
  @$pb.TagNumber(3)
  $0.Error ensureErr() => $_ensure(2);
}

class EditShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditShareRequest', createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'version')
    ..pc<$2.Change>(3, 'changes', $pb.PbFieldType.PM, subBuilder: $2.Change.create)
    ..hasRequiredFields = false
  ;

  EditShareRequest._() : super();
  factory EditShareRequest() => create();
  factory EditShareRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditShareRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditShareRequest clone() => EditShareRequest()..mergeFromMessage(this);
  EditShareRequest copyWith(void Function(EditShareRequest) updates) => super.copyWith((message) => updates(message as EditShareRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditShareRequest create() => EditShareRequest._();
  EditShareRequest createEmptyInstance() => create();
  static $pb.PbList<EditShareRequest> createRepeated() => $pb.PbList<EditShareRequest>();
  @$core.pragma('dart2js:noInline')
  static EditShareRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditShareRequest>(create);
  static EditShareRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$2.Change> get changes => $_getList(2);
}

class EditShareResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditShareResponse', createEmptyInstance: create)
    ..aOS(1, 'version')
    ..aOM<$0.Error>(2, 'err', subBuilder: $0.Error.create)
    ..hasRequiredFields = false
  ;

  EditShareResponse._() : super();
  factory EditShareResponse() => create();
  factory EditShareResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditShareResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditShareResponse clone() => EditShareResponse()..mergeFromMessage(this);
  EditShareResponse copyWith(void Function(EditShareResponse) updates) => super.copyWith((message) => updates(message as EditShareResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditShareResponse create() => EditShareResponse._();
  EditShareResponse createEmptyInstance() => create();
  static $pb.PbList<EditShareResponse> createRepeated() => $pb.PbList<EditShareResponse>();
  @$core.pragma('dart2js:noInline')
  static EditShareResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditShareResponse>(create);
  static EditShareResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $0.Error get err => $_getN(1);
  @$pb.TagNumber(2)
  set err($0.Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(2)
  void clearErr() => clearField(2);
  @$pb.TagNumber(2)
  $0.Error ensureErr() => $_ensure(1);
}

class GetShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetShareRequest', createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  GetShareRequest._() : super();
  factory GetShareRequest() => create();
  factory GetShareRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetShareRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetShareRequest clone() => GetShareRequest()..mergeFromMessage(this);
  GetShareRequest copyWith(void Function(GetShareRequest) updates) => super.copyWith((message) => updates(message as GetShareRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetShareRequest create() => GetShareRequest._();
  GetShareRequest createEmptyInstance() => create();
  static $pb.PbList<GetShareRequest> createRepeated() => $pb.PbList<GetShareRequest>();
  @$core.pragma('dart2js:noInline')
  static GetShareRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetShareRequest>(create);
  static GetShareRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetShareResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetShareResponse', createEmptyInstance: create)
    ..aOS(1, 'version')
    ..aOM<Share>(2, 'share', subBuilder: Share.create)
    ..hasRequiredFields = false
  ;

  GetShareResponse._() : super();
  factory GetShareResponse() => create();
  factory GetShareResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetShareResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetShareResponse clone() => GetShareResponse()..mergeFromMessage(this);
  GetShareResponse copyWith(void Function(GetShareResponse) updates) => super.copyWith((message) => updates(message as GetShareResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetShareResponse create() => GetShareResponse._();
  GetShareResponse createEmptyInstance() => create();
  static $pb.PbList<GetShareResponse> createRepeated() => $pb.PbList<GetShareResponse>();
  @$core.pragma('dart2js:noInline')
  static GetShareResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetShareResponse>(create);
  static GetShareResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  Share get share => $_getN(1);
  @$pb.TagNumber(2)
  set share(Share v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasShare() => $_has(1);
  @$pb.TagNumber(2)
  void clearShare() => clearField(2);
  @$pb.TagNumber(2)
  Share ensureShare() => $_ensure(1);
}

