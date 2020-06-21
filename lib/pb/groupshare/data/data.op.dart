import 'package:protod/delta.dart' as delta;
import 'package:protod/delta.pb.dart' as delta;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:groupshare/pb/groupshare/data/foo/foo.op.dart' as groupshare_data_foo_foo;
import 'package:groupshare/pb/groupshare/data/share.pb.dart' as pb;

Op_root_type Op() {
  return Op_root_type();
}

class Op_root_type {
  Op_root_type();
  Share_type Share() {
    return Share_type([]);
  }
}

class Share_type extends delta.Location {
  Share_type(List<delta.Locator> location) : super(location);
  delta.String_scalar Id() {
    return delta.String_scalar(delta.copyAndAppendField(location, "id", 1));
  }
  delta.String_scalar Name() {
    return delta.String_scalar(delta.copyAndAppendField(location, "name", 2));
  }
  groupshare_data_foo_foo.Foo_type Foo() {
    return groupshare_data_foo_foo.Foo_type(delta.copyAndAppendField(location, "foo", 3));
  }
  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(pb.Share value) {
    return delta.set(location, value);
  }

}

class Share_type_list extends delta.Location {
  Share_type_list(List<delta.Locator> location) : super(location);
  Share_type Index(int i) {
    return Share_type(delta.copyAndAppendIndex(location, fixnum.Int64(i)));
  }
  delta.Op Insert(int index, pb.Share value) {
    return delta.insert(delta.copyAndAppendIndex(location, fixnum.Int64(index)), value);
  }

  delta.Op Move(int from, int to) {
    return delta.moveList(delta.copyAndAppendIndex(location, fixnum.Int64(from)), fixnum.Int64(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(List<pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_bool_map extends delta.Location {
  Share_type_bool_map(List<delta.Locator> location) : super(location);
  Share_type Key(bool key) {
    return Share_type(delta.copyAndAppendKeyBool(location, key));
  }
  delta.Op Rename(bool from, bool to) {
    return delta.moveMap(delta.copyAndAppendKeyBool(location, from), delta.keyBool(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<bool, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_int32_map extends delta.Location {
  Share_type_int32_map(List<delta.Locator> location) : super(location);
  Share_type Key(int key) {
    return Share_type(delta.copyAndAppendKeyInt32(location, key));
  }
  delta.Op Rename(int from, int to) {
    return delta.moveMap(delta.copyAndAppendKeyInt32(location, from), delta.keyInt32(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<int, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_int64_map extends delta.Location {
  Share_type_int64_map(List<delta.Locator> location) : super(location);
  Share_type Key(int key) {
    return Share_type(delta.copyAndAppendKeyInt64(location, fixnum.Int64(key)));
  }
  delta.Op Rename(int from, int to) {
    return delta.moveMap(delta.copyAndAppendKeyInt64(location, fixnum.Int64(from)), delta.keyInt64(fixnum.Int64(to)));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<fixnum.Int64, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_uint32_map extends delta.Location {
  Share_type_uint32_map(List<delta.Locator> location) : super(location);
  Share_type Key(int key) {
    return Share_type(delta.copyAndAppendKeyUint32(location, key));
  }
  delta.Op Rename(int from, int to) {
    return delta.moveMap(delta.copyAndAppendKeyUint32(location, from), delta.keyUint32(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<int, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_uint64_map extends delta.Location {
  Share_type_uint64_map(List<delta.Locator> location) : super(location);
  Share_type Key(int key) {
    return Share_type(delta.copyAndAppendKeyUint64(location, fixnum.Int64(key)));
  }
  delta.Op Rename(int from, int to) {
    return delta.moveMap(delta.copyAndAppendKeyUint64(location, fixnum.Int64(from)), delta.keyUint64(fixnum.Int64(to)));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<fixnum.Int64, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_string_map extends delta.Location {
  Share_type_string_map(List<delta.Locator> location) : super(location);
  Share_type Key(String key) {
    return Share_type(delta.copyAndAppendKeyString(location, key));
  }
  delta.Op Rename(String from, String to) {
    return delta.moveMap(delta.copyAndAppendKeyString(location, from), delta.keyString(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<String, pb.Share> value) {
    return delta.set(location, value);
  }

}

