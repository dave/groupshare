import 'package:protod/delta.dart' as delta;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:groupshare/pb/groupshare/data/foo/foo.def.dart' as groupshare_data_foo_foo;

Share_type ShareDef() {
  return Share_type([]);
}

class Share_type extends delta.Locator {
  Share_type(List<delta.Indexer> location) : super(location);
  delta.String_scalar Id() {
    return delta.String_scalar([...location]..add(delta.Field("id", 1)));
  }
  delta.String_scalar Name() {
    return delta.String_scalar([...location]..add(delta.Field("name", 2)));
  }
  groupshare_data_foo_foo.Foo_type Foo() {
    return groupshare_data_foo_foo.Foo_type([...location]..add(delta.Field("foo", 3)));
  }
}

class Share_type_repeated extends delta.Locator {
  Share_type_repeated(List<delta.Indexer> location) : super(location);
  Share_type Index(int i) {
    return Share_type([...location]..add(delta.Index(i)));
  }
}

class Share_type_bool_map extends delta.Locator {
  Share_type_bool_map(List<delta.Indexer> location) : super(location);
  Share_type Key(bool k) {
    return Share_type([...location]..add(delta.Key(k)));
  }
}

class Share_type_int32_map extends delta.Locator {
  Share_type_int32_map(List<delta.Indexer> location) : super(location);
  Share_type Key(int k) {
    return Share_type([...location]..add(delta.Key(k)));
  }
}

class Share_type_int64_map extends delta.Locator {
  Share_type_int64_map(List<delta.Indexer> location) : super(location);
  Share_type Key(fixnum.Int64 k) {
    return Share_type([...location]..add(delta.Key(k)));
  }
}

class Share_type_uint32_map extends delta.Locator {
  Share_type_uint32_map(List<delta.Indexer> location) : super(location);
  Share_type Key(fixnum.Int64 k) {
    return Share_type([...location]..add(delta.KeyUint32(k)));
  }
}

class Share_type_uint64_map extends delta.Locator {
  Share_type_uint64_map(List<delta.Indexer> location) : super(location);
  Share_type Key(fixnum.Int64 k) {
    return Share_type([...location]..add(delta.KeyUint64(k)));
  }
}

class Share_type_string_map extends delta.Locator {
  Share_type_string_map(List<delta.Indexer> location) : super(location);
  Share_type Key(String k) {
    return Share_type([...location]..add(delta.Key(k)));
  }
}

