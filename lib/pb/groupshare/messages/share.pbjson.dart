///
//  Generated code. Do not modify.
//  source: groupshare/messages/share.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Share$json = const {
  '1': 'Share',
  '3': const [Share_List$json, Share_Get$json, Share_Add$json, Share_Edit$json],
};

const Share_List$json = const {
  '1': 'List',
  '3': const [Share_List_Request$json, Share_List_Response$json],
};

const Share_List_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.messages.Token', '10': 'token'},
  ],
};

const Share_List_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'shares', '3': 2, '4': 3, '5': 9, '10': 'shares'},
    const {'1': 'err', '3': 3, '4': 1, '5': 11, '6': '.messages.Error', '10': 'err'},
  ],
};

const Share_Get$json = const {
  '1': 'Get',
  '3': const [Share_Get_Request$json, Share_Get_Response$json],
};

const Share_Get_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.messages.Token', '10': 'token'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

const Share_Get_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'share', '3': 2, '4': 1, '5': 11, '6': '.data.Share', '10': 'share'},
    const {'1': 'err', '3': 3, '4': 1, '5': 11, '6': '.messages.Error', '10': 'err'},
  ],
};

const Share_Add$json = const {
  '1': 'Add',
  '3': const [Share_Add_Request$json, Share_Add_Response$json],
};

const Share_Add_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.messages.Token', '10': 'token'},
    const {'1': 'share', '3': 2, '4': 1, '5': 11, '6': '.data.Share', '10': 'share'},
  ],
};

const Share_Add_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'err', '3': 3, '4': 1, '5': 11, '6': '.messages.Error', '10': 'err'},
  ],
};

const Share_Edit$json = const {
  '1': 'Edit',
  '3': const [Share_Edit_Request$json, Share_Edit_Response$json],
};

const Share_Edit_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 11, '6': '.messages.Token', '10': 'token'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'ops', '3': 4, '4': 3, '5': 11, '6': '.delta.Op', '10': 'ops'},
  ],
};

const Share_Edit_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'ops', '3': 2, '4': 3, '5': 11, '6': '.delta.Op', '10': 'ops'},
    const {'1': 'err', '3': 3, '4': 1, '5': 11, '6': '.messages.Error', '10': 'err'},
  ],
};
