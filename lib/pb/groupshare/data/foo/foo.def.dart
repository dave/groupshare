import 'package:protod/delta.dart' as delta;
import 'package:fixnum/fixnum.dart' as fixnum;

Foo_type FooDef() {
  return Foo_type([]);
}

class Foo_type extends delta.Locator {
  Foo_type(List<delta.Indexer> location) : super(location);
  delta.String_scalar Bar() {
    return delta.String_scalar([...location]..add(delta.Field("bar", 1)));
  }
}

class Foo_type_repeated extends delta.Locator {
  Foo_type_repeated(List<delta.Indexer> location) : super(location);
  Foo_type Index(int i) {
    return Foo_type([...location]..add(delta.Index(i)));
  }
}

class Foo_type_bool_map extends delta.Locator {
  Foo_type_bool_map(List<delta.Indexer> location) : super(location);
  Foo_type Key(bool k) {
    return Foo_type([...location]..add(delta.Key(k)));
  }
}

class Foo_type_int32_map extends delta.Locator {
  Foo_type_int32_map(List<delta.Indexer> location) : super(location);
  Foo_type Key(int k) {
    return Foo_type([...location]..add(delta.Key(k)));
  }
}

class Foo_type_int64_map extends delta.Locator {
  Foo_type_int64_map(List<delta.Indexer> location) : super(location);
  Foo_type Key(fixnum.Int64 k) {
    return Foo_type([...location]..add(delta.Key(k)));
  }
}

class Foo_type_uint32_map extends delta.Locator {
  Foo_type_uint32_map(List<delta.Indexer> location) : super(location);
  Foo_type Key(fixnum.Int64 k) {
    return Foo_type([...location]..add(delta.KeyUint32(k)));
  }
}

class Foo_type_uint64_map extends delta.Locator {
  Foo_type_uint64_map(List<delta.Indexer> location) : super(location);
  Foo_type Key(fixnum.Int64 k) {
    return Foo_type([...location]..add(delta.KeyUint64(k)));
  }
}

class Foo_type_string_map extends delta.Locator {
  Foo_type_string_map(List<delta.Indexer> location) : super(location);
  Foo_type Key(String k) {
    return Foo_type([...location]..add(delta.Key(k)));
  }
}

