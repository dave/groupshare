///
//  Generated code. Do not modify.
//  source: protod/delta.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Op$json = const {
  '1': 'Op',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.delta.Op.Type', '10': 'type'},
    const {'1': 'location', '3': 2, '4': 3, '5': 11, '6': '.delta.Locator', '10': 'location'},
    const {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'value'},
  ],
  '4': const [Op_Type$json],
};

const Op_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'Edit', '2': 0},
    const {'1': 'Append', '2': 1},
    const {'1': 'Insert', '2': 2},
    const {'1': 'Move', '2': 3},
    const {'1': 'Delete', '2': 4},
  ],
};

const Locator$json = const {
  '1': 'Locator',
  '2': const [
    const {'1': 'field', '3': 1, '4': 1, '5': 11, '6': '.delta.Field', '9': 0, '10': 'field'},
    const {'1': 'index', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'index'},
    const {'1': 'key', '3': 3, '4': 1, '5': 11, '6': '.delta.Key', '9': 0, '10': 'key'},
  ],
  '8': const [
    const {'1': 'v'},
  ],
};

const Key$json = const {
  '1': 'Key',
  '2': const [
    const {'1': 'bool', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'bool'},
    const {'1': 'int32', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'int32'},
    const {'1': 'int64', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'int64'},
    const {'1': 'uint32', '3': 4, '4': 1, '5': 13, '9': 0, '10': 'uint32'},
    const {'1': 'uint64', '3': 5, '4': 1, '5': 4, '9': 0, '10': 'uint64'},
    const {'1': 'string', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'string'},
  ],
  '8': const [
    const {'1': 'v'},
  ],
};

const Field$json = const {
  '1': 'Field',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'number', '3': 2, '4': 1, '5': 5, '10': 'number'},
  ],
};

const Scalar$json = const {
  '1': 'Scalar',
  '2': const [
    const {'1': 'double', '3': 1, '4': 1, '5': 1, '9': 0, '10': 'double'},
    const {'1': 'float', '3': 2, '4': 1, '5': 2, '9': 0, '10': 'float'},
    const {'1': 'int32', '3': 3, '4': 1, '5': 5, '9': 0, '10': 'int32'},
    const {'1': 'int64', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'int64'},
    const {'1': 'uint32', '3': 5, '4': 1, '5': 13, '9': 0, '10': 'uint32'},
    const {'1': 'uint64', '3': 6, '4': 1, '5': 4, '9': 0, '10': 'uint64'},
    const {'1': 'sint32', '3': 7, '4': 1, '5': 17, '9': 0, '10': 'sint32'},
    const {'1': 'sint64', '3': 8, '4': 1, '5': 18, '9': 0, '10': 'sint64'},
    const {'1': 'fixed32', '3': 9, '4': 1, '5': 7, '9': 0, '10': 'fixed32'},
    const {'1': 'fixed64', '3': 10, '4': 1, '5': 6, '9': 0, '10': 'fixed64'},
    const {'1': 'sfixed32', '3': 11, '4': 1, '5': 15, '9': 0, '10': 'sfixed32'},
    const {'1': 'sfixed64', '3': 12, '4': 1, '5': 16, '9': 0, '10': 'sfixed64'},
    const {'1': 'bool', '3': 13, '4': 1, '5': 8, '9': 0, '10': 'bool'},
    const {'1': 'string', '3': 14, '4': 1, '5': 9, '9': 0, '10': 'string'},
    const {'1': 'bytes', '3': 15, '4': 1, '5': 12, '9': 0, '10': 'bytes'},
    const {'1': 'diff', '3': 16, '4': 1, '5': 9, '9': 0, '10': 'diff'},
  ],
  '8': const [
    const {'1': 'v'},
  ],
};

