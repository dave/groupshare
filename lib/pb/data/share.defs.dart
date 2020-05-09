import 'package:protod/delta.dart' as defs;
import 'package:groupshare/pb/data/foo/foo.defs.dart' as data_foo_foo;

Share_type Share() {
  return Share_type([]);
}

class Share_type extends defs.Locator {
  Share_type(List<defs.Indexer> location) : super(location);

  defs.String_scalar Id() {
    return defs.String_scalar([...location]..add(defs.Field("id", 1)));
  }

  defs.String_scalar Name() {
    return defs.String_scalar([...location]..add(defs.Field("name", 2)));
  }

  data_foo_foo.Foo_type Foo() {
    return data_foo_foo.Foo_type([...location]..add(defs.Field("foo", 3)));
  }

}

class Share_type_repeated extends defs.Locator {
  Share_type_repeated(List<defs.Indexer> location) : super(location);
  Share_type Index(int i) {
    return Share_type([...location]..add(defs.Index(i)));
  }
}

