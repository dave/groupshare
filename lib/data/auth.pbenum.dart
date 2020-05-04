///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AuthError_Types extends $pb.ProtobufEnum {
  static const AuthError_Types ERROR = AuthError_Types._(0, 'ERROR');
  static const AuthError_Types EXPIRED = AuthError_Types._(1, 'EXPIRED');

  static const $core.List<AuthError_Types> values = <AuthError_Types> [
    ERROR,
    EXPIRED,
  ];

  static final $core.Map<$core.int, AuthError_Types> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AuthError_Types valueOf($core.int value) => _byValue[value];

  const AuthError_Types._($core.int v, $core.String n) : super(v, n);
}

