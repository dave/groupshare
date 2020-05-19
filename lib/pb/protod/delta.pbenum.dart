///
//  Generated code. Do not modify.
//  source: protod/delta.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Op_Type extends $pb.ProtobufEnum {
  static const Op_Type Edit = Op_Type._(0, 'Edit');
  static const Op_Type Append = Op_Type._(1, 'Append');
  static const Op_Type Insert = Op_Type._(2, 'Insert');
  static const Op_Type Move = Op_Type._(3, 'Move');
  static const Op_Type Delete = Op_Type._(4, 'Delete');

  static const $core.List<Op_Type> values = <Op_Type> [
    Edit,
    Append,
    Insert,
    Move,
    Delete,
  ];

  static final $core.Map<$core.int, Op_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Op_Type valueOf($core.int value) => _byValue[value];

  const Op_Type._($core.int v, $core.String n) : super(v, n);
}

