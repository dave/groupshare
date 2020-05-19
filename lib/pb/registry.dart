import 'package:protobuf/protobuf.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart' as groupshare_data_share;
import 'package:groupshare/pb/groupshare/data/foo/foo.pb.dart' as groupshare_data_foo_foo;

final types = TypeRegistry([
  groupshare_data_foo_foo.Foo(),
  groupshare_data_share.Share(),
]);

