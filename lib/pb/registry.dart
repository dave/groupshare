import 'package:protobuf/protobuf.dart' as protobuf;
import 'package:groupshare/pb/groupshare/data/share.pb.dart' as groupshare_data_data;
import 'package:groupshare/pb/groupshare/data/user.pb.dart' as groupshare_data_data;

final types = protobuf.TypeRegistry([
  groupshare_data_data.Share(),
  groupshare_data_data.User(),
  groupshare_data_data.User_AvailableShare(),
]);

