///
//  Generated code. Do not modify.
//  source: groupshare/messages/auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Login_Request$json = const {
  '1': 'Login_Request',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

const Login_Response$json = const {
  '1': 'Login_Response',
  '2': const [
    const {'1': 'time', '3': 1, '4': 1, '5': 9, '10': 'time'},
  ],
};

const Auth_Request$json = const {
  '1': 'Auth_Request',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'time', '3': 3, '4': 1, '5': 9, '10': 'time'},
    const {'1': 'code', '3': 4, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'test', '3': 5, '4': 1, '5': 8, '10': 'test'},
  ],
};

const Auth_Response$json = const {
  '1': 'Auth_Response',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 9, '10': 'hash'},
  ],
};

const Validate_Request$json = const {
  '1': 'Validate_Request',
};

const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'device', '3': 2, '4': 1, '5': 9, '10': 'device'},
    const {'1': 'hash', '3': 5, '4': 1, '5': 9, '10': 'hash'},
  ],
};

