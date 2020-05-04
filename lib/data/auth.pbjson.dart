///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AuthRequest$json = const {
  '1': 'AuthRequest',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 9, '10': 'device'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'time', '3': 3, '4': 1, '5': 9, '10': 'time'},
    const {'1': 'code', '3': 4, '4': 1, '5': 9, '10': 'code'},
  ],
};

const AuthResponse$json = const {
  '1': 'AuthResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'err', '3': 2, '4': 1, '5': 11, '6': '.AuthError', '10': 'err'},
  ],
};

const AuthError$json = const {
  '1': 'AuthError',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 8, '10': 'error'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.AuthError.Types', '10': 'type'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
  '4': const [AuthError_Types$json],
};

const AuthError_Types$json = const {
  '1': 'Types',
  '2': const [
    const {'1': 'ERROR', '2': 0},
    const {'1': 'EXPIRED', '2': 1},
  ],
};

