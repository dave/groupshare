///
//  Generated code. Do not modify.
//  source: store/change.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Change_Type extends $pb.ProtobufEnum {
  static const Change_Type EditValue = Change_Type._(0, 'EditValue');
  static const Change_Type DeleteFromList = Change_Type._(1, 'DeleteFromList');
  static const Change_Type AddToList = Change_Type._(2, 'AddToList');
  static const Change_Type MoveInList = Change_Type._(3, 'MoveInList');

  static const $core.List<Change_Type> values = <Change_Type> [
    EditValue,
    DeleteFromList,
    AddToList,
    MoveInList,
  ];

  static final $core.Map<$core.int, Change_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Change_Type valueOf($core.int value) => _byValue[value];

  const Change_Type._($core.int v, $core.String n) : super(v, n);
}

