import 'package:protobuf/protobuf.dart' as protobuf;
import 'package:groupshare/pb/groupshare/data/bar.pb.dart' as groupshare_data_data;
import 'package:groupshare/pb/groupshare/data/share.pb.dart' as groupshare_data_data;
import 'package:groupshare/pb/groupshare/data/foo/foo.pb.dart' as groupshare_data_foo_foo;

final types = protobuf.TypeRegistry([
  groupshare_data_data.Bar(),
  groupshare_data_data.Share(),
  groupshare_data_foo_foo.Foo(),
]);

