import 'package:protobuf/protobuf.dart' as protobuf;
import 'package:data/data/share.pb.dart' as pkg_data_data_data;
import 'package:data/data/user.pb.dart' as pkg_data_data_data;

final types = protobuf.TypeRegistry([
  pkg_data_data_data.Share(),
  pkg_data_data_data.User(),
  pkg_data_data_data.User_Share(),
]);

