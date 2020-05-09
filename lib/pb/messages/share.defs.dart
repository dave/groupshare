import 'package:protod/delta.dart' as defs;

Share_type Share() {
  return Share_type([]);
}

class Share_type extends defs.Locator {
  Share_type(List<defs.Indexer> location) : super(location);

}

class Share_type_repeated extends defs.Locator {
  Share_type_repeated(List<defs.Indexer> location) : super(location);
  Share_type Index(int i) {
    return Share_type([...location]..add(defs.Index(i)));
  }
}

