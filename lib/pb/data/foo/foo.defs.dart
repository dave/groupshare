import 'package:protod/delta.dart' as defs;

Foo_type Foo() {
  return Foo_type([]);
}

class Foo_type extends defs.Locator {
  Foo_type(List<defs.Indexer> location) : super(location);

  defs.String_scalar Bar() {
    return defs.String_scalar([...location]..add(defs.Field("bar", 1)));
  }

}

class Foo_type_repeated extends defs.Locator {
  Foo_type_repeated(List<defs.Indexer> location) : super(location);
  Foo_type Index(int i) {
    return Foo_type([...location]..add(defs.Index(i)));
  }
}

