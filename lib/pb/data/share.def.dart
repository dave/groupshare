import 'package:protod/delta.dart' as delta;
import 'package:groupshare/pb/data/foo/foo.def.dart' as data_foo_foo;

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

  data_foo_foo.Foo_type Foo() {
    return data_foo_foo.Foo_type([...location]..add(delta.Field("foo", 3)));
  }

}

class Share_type_repeated extends delta.Locator {
  Share_type_repeated(List<delta.Indexer> location) : super(location);
  Share_type Index(int i) {
    return Share_type([...location]..add(delta.Index(i)));
  }
}

