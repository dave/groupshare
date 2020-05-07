import 'package:groupshare/core/services/defs.dart' as defs;
import 'package:groupshare/pb/storepb/foopb/foo.defs.dart' as storepb_foopb_foo;

Share_type Share() {
  return Share_type(null);
}

class Share_type extends defs.Locator {
  Share_type(location) : super(location);

  defs.String_scalar Id() {
    return defs.String_scalar([...location]..add(defs.Field("id", 1)));
  }

  defs.String_scalar Name() {
    return defs.String_scalar([...location]..add(defs.Field("name", 2)));
  }

  storepb_foopb_foo.Foo_type Foo() {
    return storepb_foopb_foo.Foo_type([...location]..add(defs.Field("foo", 3)));
  }

}

class Share_type_repeated extends defs.Locator {
  Share_type_repeated(location) : super(location);
  Share_type Index(int i) {
    return Share_type([...location]..add(defs.Index(i)));
  }
}

