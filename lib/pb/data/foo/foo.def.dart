import 'package:protod/delta.dart' as delta;

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

