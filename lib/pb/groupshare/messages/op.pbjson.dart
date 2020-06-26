///
//  Generated code. Do not modify.
//  source: groupshare/messages/op.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const State$json = const {
  '1': 'State',
  '3': const [State_Request$json, State_Response$json, State_Item$json],
};

const State_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'unique', '3': 1, '4': 1, '5': 9, '10': 'unique'},
    const {'1': 'state', '3': 2, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'op', '3': 3, '4': 1, '5': 11, '6': '.delta.Op', '10': 'op'},
  ],
};

const State_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'unique', '3': 1, '4': 1, '5': 9, '10': 'unique'},
    const {'1': 'state', '3': 2, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'op', '3': 3, '4': 1, '5': 11, '6': '.delta.Op', '10': 'op'},
  ],
};

const State_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'state', '3': 3, '4': 1, '5': 3, '10': 'state'},
    const {'1': 'unique', '3': 5, '4': 1, '5': 9, '10': 'unique'},
    const {'1': 'op2x', '3': 6, '4': 1, '5': 11, '6': '.delta.Op', '10': 'op2x'},
    const {'1': 'op1x', '3': 7, '4': 1, '5': 11, '6': '.delta.Op', '10': 'op1x'},
  ],
};

