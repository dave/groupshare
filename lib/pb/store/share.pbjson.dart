///
//  Generated code. Do not modify.
//  source: store/share.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Share$json = const {
  '1': 'Share',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const NewShareRequest$json = const {
  '1': 'NewShareRequest',
  '2': const [
    const {'1': 'share', '3': 1, '4': 1, '5': 11, '6': '.Share', '10': 'share'},
  ],
};

const NewShareResponse$json = const {
  '1': 'NewShareResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'err', '3': 3, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

const EditShareRequest$json = const {
  '1': 'EditShareRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'changes', '3': 3, '4': 3, '5': 11, '6': '.Change', '10': 'changes'},
  ],
};

const EditShareResponse$json = const {
  '1': 'EditShareResponse',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'err', '3': 2, '4': 1, '5': 11, '6': '.Error', '10': 'err'},
  ],
};

const GetShareRequest$json = const {
  '1': 'GetShareRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const GetShareResponse$json = const {
  '1': 'GetShareResponse',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'share', '3': 2, '4': 1, '5': 11, '6': '.Share', '10': 'share'},
  ],
};

