import 'package:protobuf/protobuf.dart';
import 'package:groupshare/pb/data/share.pb.dart' as data_share;
import 'package:groupshare/pb/data/foo/foo.pb.dart' as data_foo_foo;

final types = TypeRegistry([
  data_foo_foo.Foo(),
  data_share.Share(),
]);

