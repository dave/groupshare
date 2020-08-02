///
//  Generated code. Do not modify.
//  source: groupshare/messages/share.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Share_List_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share_List_Request', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Share_List_Request._() : super();
  factory Share_List_Request() => create();
  factory Share_List_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_List_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_List_Request clone() => Share_List_Request()..mergeFromMessage(this);
  Share_List_Request copyWith(void Function(Share_List_Request) updates) => super.copyWith((message) => updates(message as Share_List_Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_List_Request create() => Share_List_Request._();
  Share_List_Request createEmptyInstance() => create();
  static $pb.PbList<Share_List_Request> createRepeated() => $pb.PbList<Share_List_Request>();
  @$core.pragma('dart2js:noInline')
  static Share_List_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_List_Request>(create);
  static Share_List_Request _defaultInstance;
}

class Share_List_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Share_List_Response', package: const $pb.PackageName('messages'), createEmptyInstance: create)
    ..pPS(1, 'shares')
    ..m<$core.String, $core.String>(2, 'names', entryClassName: 'Share_List_Response.NamesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('messages'))
    ..hasRequiredFields = false
  ;

  Share_List_Response._() : super();
  factory Share_List_Response() => create();
  factory Share_List_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share_List_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Share_List_Response clone() => Share_List_Response()..mergeFromMessage(this);
  Share_List_Response copyWith(void Function(Share_List_Response) updates) => super.copyWith((message) => updates(message as Share_List_Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Share_List_Response create() => Share_List_Response._();
  Share_List_Response createEmptyInstance() => create();
  static $pb.PbList<Share_List_Response> createRepeated() => $pb.PbList<Share_List_Response>();
  @$core.pragma('dart2js:noInline')
  static Share_List_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share_List_Response>(create);
  static Share_List_Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get shares => $_getList(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get names => $_getMap(1);
}

