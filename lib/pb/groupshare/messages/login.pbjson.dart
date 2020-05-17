///
//  Generated code. Do not modify.
//  source: groupshare/messages/login.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Login$json = const {
  '1': 'Login',
  '3': const [Login_Request$json, Login_Response$json],
};

const Login_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

const Login_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'time', '3': 1, '4': 1, '5': 9, '10': 'time'},
    const {'1': 'err', '3': 2, '4': 1, '5': 11, '6': '.messages.Error', '10': 'err'},
  ],
};

