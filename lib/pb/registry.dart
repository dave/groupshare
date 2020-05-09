import 'package:protobuf/protobuf.dart';
import 'package:groupshare/pb/data/foo/foo.pb.dart' as data_foo_foo;
import 'package:groupshare/pb/data/share.pb.dart' as data_share;

final types = TypeRegistry([
  data_foo_foo.Foo(),
  data_share.Share(),
]);

