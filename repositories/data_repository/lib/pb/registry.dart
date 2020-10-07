import 'package:protobuf/protobuf.dart' as protobuf;
import 'package:data_repository/pb/data/share.pb.dart' as data_data;
import 'package:data_repository/pb/data/user.pb.dart' as data_data;

final types = protobuf.TypeRegistry([
  data_data.Share(),
  data_data.User(),
  data_data.User_Share(),
]);

