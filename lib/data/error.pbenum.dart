///
//  Generated code. Do not modify.
//  source: error.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Error_Types extends $pb.ProtobufEnum {
  static const Error_Types ERROR = Error_Types._(0, 'ERROR');
  static const Error_Types AUTH_EXPIRED = Error_Types._(1, 'AUTH_EXPIRED');
  static const Error_Types AUTH_ERROR = Error_Types._(2, 'AUTH_ERROR');

  static const $core.List<Error_Types> values = <Error_Types> [
    ERROR,
    AUTH_EXPIRED,
    AUTH_ERROR,
  ];

  static final $core.Map<$core.int, Error_Types> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Error_Types valueOf($core.int value) => _byValue[value];

  const Error_Types._($core.int v, $core.String n) : super(v, n);
}

