import 'package:protobuf/protobuf.dart' as protobuf;
import 'package:groupshare/pb/groupshare/data/share.pb.dart' as groupshare_data_data;

final types = protobuf.TypeRegistry([
  groupshare_data_data.Share(),
]);

