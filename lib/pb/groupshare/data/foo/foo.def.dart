import 'package:protod/delta.dart' as delta;
import 'package:protod/delta.pb.dart' as pb;
import 'package:fixnum/fixnum.dart' as fixnum;

Foo_type FooDef() {
  return Foo_type([]);
}

class Foo_type extends delta.Location {
  Foo_type(List<pb.Locator> location) : super(location);
  delta.String_scalar Bar() {
    return delta.String_scalar([...location]..add(pb.Locator()..field_1 = (pb.Field()..name = "bar"..number = 1)));
  }
}

class Foo_type_repeated extends delta.Location {
  Foo_type_repeated(List<pb.Locator> location) : super(location);
  Foo_type Index(int i) {
    return Foo_type([...location]..add(pb.Locator()..index = fixnum.Int64(i)));
  }
  Foo_type Index64(fixnum.Int64 i) {
    return Foo_type([...location]..add(pb.Locator()..index = i));
  }
}

class Foo_type_bool_map extends delta.Location {
  Foo_type_bool_map(List<pb.Locator> location) : super(location);
  Foo_type Key(bool k) {
    return Foo_type([...location]..add(pb.Locator()..key = (pb.Key()..bool_1 = k)));
  }
}

class Foo_type_int32_map extends delta.Location {
  Foo_type_int32_map(List<pb.Locator> location) : super(location);
  Foo_type Key(int k) {
    return Foo_type([...location]..add(pb.Locator()..key = (pb.Key()..int32 = k)));
  }
}

class Foo_type_int64_map extends delta.Location {
  Foo_type_int64_map(List<pb.Locator> location) : super(location);
  Foo_type Key(int k) {
    return Foo_type([...location]..add(pb.Locator()..key = (pb.Key()..int64 = fixnum.Int64(k))));
  }
  Foo_type Key64(fixnum.Int64 k) {
    return Foo_type([...location]..add(pb.Locator()..key = (pb.Key()..int64 = k)));
  }
}

class Foo_type_uint32_map extends delta.Location {
  Foo_type_uint32_map(List<pb.Locator> location) : super(location);
  Foo_type Key(int k) {
    return Foo_type([...location]..add(pb.Locator()..key = (pb.Key()..uint32 = k)));
  }
}

class Foo_type_uint64_map extends delta.Location {
  Foo_type_uint64_map(List<pb.Locator> location) : super(location);
  Foo_type Key(int k) {
    return Foo_type([...location]..add(pb.Locator()..key = (pb.Key()..uint64 = fixnum.Int64(k))));
  }
  Foo_type Key64(fixnum.Int64 k) {
    return Foo_type([...location]..add(pb.Locator()..key = (pb.Key()..uint64 = k)));
  }
}

class Foo_type_string_map extends delta.Location {
  Foo_type_string_map(List<pb.Locator> location) : super(location);
  Foo_type Key(String k) {
    return Foo_type([...location]..add(pb.Locator()..key = (pb.Key()..string = k)));
  }
}

