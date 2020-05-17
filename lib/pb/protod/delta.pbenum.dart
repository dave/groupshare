///
//  Generated code. Do not modify.
//  source: protod/delta.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Delta_Type extends $pb.ProtobufEnum {
  static const Delta_Type EditValue = Delta_Type._(0, 'EditValue');
  static const Delta_Type DeleteFromList = Delta_Type._(1, 'DeleteFromList');
  static const Delta_Type AddToList = Delta_Type._(2, 'AddToList');
  static const Delta_Type MoveInList = Delta_Type._(3, 'MoveInList');

  static const $core.List<Delta_Type> values = <Delta_Type> [
    EditValue,
    DeleteFromList,
    AddToList,
    MoveInList,
  ];

  static final $core.Map<$core.int, Delta_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Delta_Type valueOf($core.int value) => _byValue[value];

  const Delta_Type._($core.int v, $core.String n) : super(v, n);
}

