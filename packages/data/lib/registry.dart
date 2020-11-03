import 'package:protobuf/protobuf.dart' as protobuf;
import 'package:api/api/proto/error.pb.dart' as api_proto_api;
import 'package:auth/auth/proto/auth.pb.dart' as auth_proto_messages;
import 'package:data/data/proto/share.pb.dart' as data_proto_data;
import 'package:data/data/proto/user.pb.dart' as data_proto_data;
import 'package:data/data/proto/snapshot.pb.dart' as data_proto_wrappers;
import 'package:data/data/proto/state.pb.dart' as data_proto_wrappers;
import 'package:main/main/proto/share.pb.dart' as main_proto_main;

final types = protobuf.TypeRegistry([
  data_proto_data.Share(),
  data_proto_data.User(),
  data_proto_data.User_Share(),
]);

