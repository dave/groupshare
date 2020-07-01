import 'package:protod/delta/delta.dart' as delta;
import 'package:protod/delta/delta.pb.dart' as delta;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:groupshare/pb/groupshare/data/foo/foo.pb.dart' as pb;

Op_root_type Op() {
  return Op_root_type();
}

class Op_root_type {
  Op_root_type();
  Foo_type Foo() {
    return Foo_type([]);
  }
}

class Foo_type extends delta.Location {
  Foo_type(List<delta.Locator> location) : super(location);
  delta.String_scalar Bar() {
    return delta.String_scalar(delta.copyAndAppendField(location, "bar", 1));
  }
  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(pb.Foo value) {
    return delta.set(location, value);
  }

}

class Foo_type_list extends delta.Location {
  Foo_type_list(List<delta.Locator> location) : super(location);
  Foo_type Index(int i) {
    return Foo_type(delta.copyAndAppendIndex(location, fixnum.Int64(i)));
  }
  delta.Op Insert(int index, pb.Foo value) {
    return delta.insert(delta.copyAndAppendIndex(location, fixnum.Int64(index)), value);
  }

  delta.Op Move(int from, int to) {
    return delta.move(delta.copyAndAppendIndex(location, fixnum.Int64(from)), fixnum.Int64(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(List<pb.Foo> value) {
    return delta.set(location, value);
  }

}

class Foo_type_bool_map extends delta.Location {
  Foo_type_bool_map(List<delta.Locator> location) : super(location);
  Foo_type Key(bool key) {
    return Foo_type(delta.copyAndAppendKeyBool(location, key));
  }
  delta.Op Rename(bool from, bool to) {
    return delta.rename(delta.copyAndAppendKeyBool(location, from), delta.keyBool(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<bool, pb.Foo> value) {
    return delta.set(location, value);
  }

}

class Foo_type_int32_map extends delta.Location {
  Foo_type_int32_map(List<delta.Locator> location) : super(location);
  Foo_type Key(int key) {
    return Foo_type(delta.copyAndAppendKeyInt32(location, key));
  }
  delta.Op Rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyInt32(location, from), delta.keyInt32(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<int, pb.Foo> value) {
    return delta.set(location, value);
  }

}

class Foo_type_int64_map extends delta.Location {
  Foo_type_int64_map(List<delta.Locator> location) : super(location);
  Foo_type Key(int key) {
    return Foo_type(delta.copyAndAppendKeyInt64(location, fixnum.Int64(key)));
  }
  delta.Op Rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyInt64(location, fixnum.Int64(from)), delta.keyInt64(fixnum.Int64(to)));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<fixnum.Int64, pb.Foo> value) {
    return delta.set(location, value);
  }

}

class Foo_type_uint32_map extends delta.Location {
  Foo_type_uint32_map(List<delta.Locator> location) : super(location);
  Foo_type Key(int key) {
    return Foo_type(delta.copyAndAppendKeyUint32(location, key));
  }
  delta.Op Rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyUint32(location, from), delta.keyUint32(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<int, pb.Foo> value) {
    return delta.set(location, value);
  }

}

class Foo_type_uint64_map extends delta.Location {
  Foo_type_uint64_map(List<delta.Locator> location) : super(location);
  Foo_type Key(int key) {
    return Foo_type(delta.copyAndAppendKeyUint64(location, fixnum.Int64(key)));
  }
  delta.Op Rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyUint64(location, fixnum.Int64(from)), delta.keyUint64(fixnum.Int64(to)));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<fixnum.Int64, pb.Foo> value) {
    return delta.set(location, value);
  }

}

class Foo_type_string_map extends delta.Location {
  Foo_type_string_map(List<delta.Locator> location) : super(location);
  Foo_type Key(String key) {
    return Foo_type(delta.copyAndAppendKeyString(location, key));
  }
  delta.Op Rename(String from, String to) {
    return delta.rename(delta.copyAndAppendKeyString(location, from), delta.keyString(to));
  }

  delta.Op Delete() {
    return delta.delete(location);
  }

  delta.Op Set(Map<String, pb.Foo> value) {
    return delta.set(location, value);
  }

}

