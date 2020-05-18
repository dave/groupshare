import 'package:protod/delta.dart' as delta;
import 'package:protod/delta.pb.dart' as pb;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:groupshare/pb/groupshare/data/foo/foo.def.dart' as groupshare_data_foo_foo;

Share_type ShareDef() {
  return Share_type([]);
}

class Share_type extends delta.Location {
  Share_type(List<pb.Locator> location) : super(location);
  delta.String_scalar Id() {
    return delta.String_scalar([...location]..add(pb.Locator()..field_1 = (pb.Field()..name = "id"..number = 1)));
  }
  delta.String_scalar Name() {
    return delta.String_scalar([...location]..add(pb.Locator()..field_1 = (pb.Field()..name = "name"..number = 2)));
  }
  groupshare_data_foo_foo.Foo_type Foo() {
    return groupshare_data_foo_foo.Foo_type([...location]..add(pb.Locator()..field_1 = (pb.Field()..name = "foo"..number = 3)));
  }
}

class Share_type_repeated extends delta.Location {
  Share_type_repeated(List<pb.Locator> location) : super(location);
  Share_type Index(int i) {
    return Share_type([...location]..add(pb.Locator()..index = fixnum.Int64(i)));
  }
  Share_type Index64(fixnum.Int64 i) {
    return Share_type([...location]..add(pb.Locator()..index = i));
  }
}

class Share_type_bool_map extends delta.Location {
  Share_type_bool_map(List<pb.Locator> location) : super(location);
  Share_type Key(bool k) {
    return Share_type([...location]..add(pb.Locator()..key = (pb.Key()..bool_1 = k)));
  }
}

class Share_type_int32_map extends delta.Location {
  Share_type_int32_map(List<pb.Locator> location) : super(location);
  Share_type Key(int k) {
    return Share_type([...location]..add(pb.Locator()..key = (pb.Key()..int32 = k)));
  }
}

class Share_type_int64_map extends delta.Location {
  Share_type_int64_map(List<pb.Locator> location) : super(location);
  Share_type Key(int k) {
    return Share_type([...location]..add(pb.Locator()..key = (pb.Key()..int64 = fixnum.Int64(k))));
  }
  Share_type Key64(fixnum.Int64 k) {
    return Share_type([...location]..add(pb.Locator()..key = (pb.Key()..int64 = k)));
  }
}

class Share_type_uint32_map extends delta.Location {
  Share_type_uint32_map(List<pb.Locator> location) : super(location);
  Share_type Key(int k) {
    return Share_type([...location]..add(pb.Locator()..key = (pb.Key()..uint32 = k)));
  }
}

class Share_type_uint64_map extends delta.Location {
  Share_type_uint64_map(List<pb.Locator> location) : super(location);
  Share_type Key(int k) {
    return Share_type([...location]..add(pb.Locator()..key = (pb.Key()..uint64 = fixnum.Int64(k))));
  }
  Share_type Key64(fixnum.Int64 k) {
    return Share_type([...location]..add(pb.Locator()..key = (pb.Key()..uint64 = k)));
  }
}

class Share_type_string_map extends delta.Location {
  Share_type_string_map(List<pb.Locator> location) : super(location);
  Share_type Key(String k) {
    return Share_type([...location]..add(pb.Locator()..key = (pb.Key()..string = k)));
  }
}

