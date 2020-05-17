///
//  Generated code. Do not modify.
//  source: groupshare/messages/token.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'device', '3': 2, '4': 1, '5': 9, '10': 'device'},
    const {'1': 'hash', '3': 5, '4': 1, '5': 9, '10': 'hash'},
  ],
  '3': const [Token_Validate$json],
};

const Token_Validate$json = const {
  '1': 'Validate',
  '3': const [Token_Validate_Request$json, Token_Validate_Response$json],
};

const Token_Validate_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.messages.Token', '10': 'token'},
  ],
};

const Token_Validate_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'err', '3': 3, '4': 1, '5': 11, '6': '.messages.Error', '10': 'err'},
  ],
};

