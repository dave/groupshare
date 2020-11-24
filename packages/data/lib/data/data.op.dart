import 'package:pdelta/pdelta/pdelta.dart' as pdelta;
import 'package:pdelta/pdelta/pdelta.pb.dart' as pdelta;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:protobuf/protobuf.dart' as protobuf;
import 'package:pdelta/pdelta/pdelta.op.dart' as pkg_pdelta_pdelta_pdelta;
import 'package:data/data/user.pb.dart' as pb;
import 'package:data/data/share.pb.dart' as pb;
import 'package:data/data/share.pb.dart' as pkg_data_data_data;
import 'package:data/data/user.pb.dart' as pkg_data_data_data;

Op_root_type get op {
  init();
  return Op_root_type();
}

class Op_root_type {
  Op_root_type();
  Share_type get share {
    return Share_type([]);
  }
  User_type get user {
    return User_type([]);
  }
  User_Share_type get user_share {
    return User_Share_type([]);
  }
}

class Share_type extends pdelta.Location {
  Share_type(List<pdelta.Locator> location) : super(location);
  pkg_pdelta_pdelta_pdelta.String_scalar get name {
    return pkg_pdelta_pdelta_pdelta.String_scalar(pdelta.copyAndAppendField(location, "data.Share", "name", 1));
  }
  pkg_pdelta_pdelta_pdelta.String_scalar get description {
    return pkg_pdelta_pdelta_pdelta.String_scalar(pdelta.copyAndAppendField(location, "data.Share", "description", 2));
  }
  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(pb.Share value) {
    return pdelta.set(location, value);
  }

}

class Share_list extends pdelta.Location {
  Share_list(List<pdelta.Locator> location) : super(location);
  Share_type index(int i) {
    return Share_type(pdelta.copyAndAppendIndex(location, fixnum.Int64(i)));
  }
  pdelta.Op insert(int index, pb.Share value) {
    return pdelta.insert(pdelta.copyAndAppendIndex(location, fixnum.Int64(index)), value);
  }

  pdelta.Op move(int from, int to) {
    return pdelta.move(pdelta.copyAndAppendIndex(location, fixnum.Int64(from)), fixnum.Int64(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(List<pb.Share> value) {
    return pdelta.set(location, value);
  }

}

class Share_bool_map extends pdelta.Location {
  Share_bool_map(List<pdelta.Locator> location) : super(location);
  Share_type key(bool key) {
    return Share_type(pdelta.copyAndAppendKeyBool(location, key));
  }
  pdelta.Op rename(bool from, bool to) {
    return pdelta.rename(pdelta.copyAndAppendKeyBool(location, from), pdelta.keyBool(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<bool, pb.Share> value) {
    return pdelta.set(location, value);
  }

}

class Share_int32_map extends pdelta.Location {
  Share_int32_map(List<pdelta.Locator> location) : super(location);
  Share_type key(int key) {
    return Share_type(pdelta.copyAndAppendKeyInt32(location, key));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyInt32(location, from), pdelta.keyInt32(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<int, pb.Share> value) {
    return pdelta.set(location, value);
  }

}

class Share_int64_map extends pdelta.Location {
  Share_int64_map(List<pdelta.Locator> location) : super(location);
  Share_type key(int key) {
    return Share_type(pdelta.copyAndAppendKeyInt64(location, fixnum.Int64(key)));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyInt64(location, fixnum.Int64(from)), pdelta.keyInt64(fixnum.Int64(to)));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<fixnum.Int64, pb.Share> value) {
    return pdelta.set(location, value);
  }

}

class Share_uint32_map extends pdelta.Location {
  Share_uint32_map(List<pdelta.Locator> location) : super(location);
  Share_type key(int key) {
    return Share_type(pdelta.copyAndAppendKeyUint32(location, key));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyUint32(location, from), pdelta.keyUint32(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<int, pb.Share> value) {
    return pdelta.set(location, value);
  }

}

class Share_uint64_map extends pdelta.Location {
  Share_uint64_map(List<pdelta.Locator> location) : super(location);
  Share_type key(int key) {
    return Share_type(pdelta.copyAndAppendKeyUint64(location, fixnum.Int64(key)));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyUint64(location, fixnum.Int64(from)), pdelta.keyUint64(fixnum.Int64(to)));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<fixnum.Int64, pb.Share> value) {
    return pdelta.set(location, value);
  }

}

class Share_string_map extends pdelta.Location {
  Share_string_map(List<pdelta.Locator> location) : super(location);
  Share_type key(String key) {
    return Share_type(pdelta.copyAndAppendKeyString(location, key));
  }
  pdelta.Op rename(String from, String to) {
    return pdelta.rename(pdelta.copyAndAppendKeyString(location, from), pdelta.keyString(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<String, pb.Share> value) {
    return pdelta.set(location, value);
  }

}

class User_type extends pdelta.Location {
  User_type(List<pdelta.Locator> location) : super(location);
  User_Share_list get favourites {
    return User_Share_list(pdelta.copyAndAppendField(location, "data.User", "favourites", 1));
  }
  pkg_pdelta_pdelta_pdelta.String_string_map get all {
    return pkg_pdelta_pdelta_pdelta.String_string_map(pdelta.copyAndAppendField(location, "data.User", "all", 2));
  }
  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(pb.User value) {
    return pdelta.set(location, value);
  }

}

class User_list extends pdelta.Location {
  User_list(List<pdelta.Locator> location) : super(location);
  User_type index(int i) {
    return User_type(pdelta.copyAndAppendIndex(location, fixnum.Int64(i)));
  }
  pdelta.Op insert(int index, pb.User value) {
    return pdelta.insert(pdelta.copyAndAppendIndex(location, fixnum.Int64(index)), value);
  }

  pdelta.Op move(int from, int to) {
    return pdelta.move(pdelta.copyAndAppendIndex(location, fixnum.Int64(from)), fixnum.Int64(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(List<pb.User> value) {
    return pdelta.set(location, value);
  }

}

class User_bool_map extends pdelta.Location {
  User_bool_map(List<pdelta.Locator> location) : super(location);
  User_type key(bool key) {
    return User_type(pdelta.copyAndAppendKeyBool(location, key));
  }
  pdelta.Op rename(bool from, bool to) {
    return pdelta.rename(pdelta.copyAndAppendKeyBool(location, from), pdelta.keyBool(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<bool, pb.User> value) {
    return pdelta.set(location, value);
  }

}

class User_int32_map extends pdelta.Location {
  User_int32_map(List<pdelta.Locator> location) : super(location);
  User_type key(int key) {
    return User_type(pdelta.copyAndAppendKeyInt32(location, key));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyInt32(location, from), pdelta.keyInt32(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<int, pb.User> value) {
    return pdelta.set(location, value);
  }

}

class User_int64_map extends pdelta.Location {
  User_int64_map(List<pdelta.Locator> location) : super(location);
  User_type key(int key) {
    return User_type(pdelta.copyAndAppendKeyInt64(location, fixnum.Int64(key)));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyInt64(location, fixnum.Int64(from)), pdelta.keyInt64(fixnum.Int64(to)));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<fixnum.Int64, pb.User> value) {
    return pdelta.set(location, value);
  }

}

class User_uint32_map extends pdelta.Location {
  User_uint32_map(List<pdelta.Locator> location) : super(location);
  User_type key(int key) {
    return User_type(pdelta.copyAndAppendKeyUint32(location, key));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyUint32(location, from), pdelta.keyUint32(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<int, pb.User> value) {
    return pdelta.set(location, value);
  }

}

class User_uint64_map extends pdelta.Location {
  User_uint64_map(List<pdelta.Locator> location) : super(location);
  User_type key(int key) {
    return User_type(pdelta.copyAndAppendKeyUint64(location, fixnum.Int64(key)));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyUint64(location, fixnum.Int64(from)), pdelta.keyUint64(fixnum.Int64(to)));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<fixnum.Int64, pb.User> value) {
    return pdelta.set(location, value);
  }

}

class User_string_map extends pdelta.Location {
  User_string_map(List<pdelta.Locator> location) : super(location);
  User_type key(String key) {
    return User_type(pdelta.copyAndAppendKeyString(location, key));
  }
  pdelta.Op rename(String from, String to) {
    return pdelta.rename(pdelta.copyAndAppendKeyString(location, from), pdelta.keyString(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<String, pb.User> value) {
    return pdelta.set(location, value);
  }

}

class User_Share_type extends pdelta.Location {
  User_Share_type(List<pdelta.Locator> location) : super(location);
  pkg_pdelta_pdelta_pdelta.String_scalar get id {
    return pkg_pdelta_pdelta_pdelta.String_scalar(pdelta.copyAndAppendField(location, "data.User.Share", "id", 1));
  }
  pkg_pdelta_pdelta_pdelta.String_scalar get name {
    return pkg_pdelta_pdelta_pdelta.String_scalar(pdelta.copyAndAppendField(location, "data.User.Share", "name", 2));
  }
  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(pb.User_Share value) {
    return pdelta.set(location, value);
  }

}

class User_Share_list extends pdelta.Location {
  User_Share_list(List<pdelta.Locator> location) : super(location);
  User_Share_type index(int i) {
    return User_Share_type(pdelta.copyAndAppendIndex(location, fixnum.Int64(i)));
  }
  pdelta.Op insert(int index, pb.User_Share value) {
    return pdelta.insert(pdelta.copyAndAppendIndex(location, fixnum.Int64(index)), value);
  }

  pdelta.Op move(int from, int to) {
    return pdelta.move(pdelta.copyAndAppendIndex(location, fixnum.Int64(from)), fixnum.Int64(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(List<pb.User_Share> value) {
    return pdelta.set(location, value);
  }

}

class User_Share_bool_map extends pdelta.Location {
  User_Share_bool_map(List<pdelta.Locator> location) : super(location);
  User_Share_type key(bool key) {
    return User_Share_type(pdelta.copyAndAppendKeyBool(location, key));
  }
  pdelta.Op rename(bool from, bool to) {
    return pdelta.rename(pdelta.copyAndAppendKeyBool(location, from), pdelta.keyBool(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<bool, pb.User_Share> value) {
    return pdelta.set(location, value);
  }

}

class User_Share_int32_map extends pdelta.Location {
  User_Share_int32_map(List<pdelta.Locator> location) : super(location);
  User_Share_type key(int key) {
    return User_Share_type(pdelta.copyAndAppendKeyInt32(location, key));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyInt32(location, from), pdelta.keyInt32(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<int, pb.User_Share> value) {
    return pdelta.set(location, value);
  }

}

class User_Share_int64_map extends pdelta.Location {
  User_Share_int64_map(List<pdelta.Locator> location) : super(location);
  User_Share_type key(int key) {
    return User_Share_type(pdelta.copyAndAppendKeyInt64(location, fixnum.Int64(key)));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyInt64(location, fixnum.Int64(from)), pdelta.keyInt64(fixnum.Int64(to)));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<fixnum.Int64, pb.User_Share> value) {
    return pdelta.set(location, value);
  }

}

class User_Share_uint32_map extends pdelta.Location {
  User_Share_uint32_map(List<pdelta.Locator> location) : super(location);
  User_Share_type key(int key) {
    return User_Share_type(pdelta.copyAndAppendKeyUint32(location, key));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyUint32(location, from), pdelta.keyUint32(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<int, pb.User_Share> value) {
    return pdelta.set(location, value);
  }

}

class User_Share_uint64_map extends pdelta.Location {
  User_Share_uint64_map(List<pdelta.Locator> location) : super(location);
  User_Share_type key(int key) {
    return User_Share_type(pdelta.copyAndAppendKeyUint64(location, fixnum.Int64(key)));
  }
  pdelta.Op rename(int from, int to) {
    return pdelta.rename(pdelta.copyAndAppendKeyUint64(location, fixnum.Int64(from)), pdelta.keyUint64(fixnum.Int64(to)));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<fixnum.Int64, pb.User_Share> value) {
    return pdelta.set(location, value);
  }

}

class User_Share_string_map extends pdelta.Location {
  User_Share_string_map(List<pdelta.Locator> location) : super(location);
  User_Share_type key(String key) {
    return User_Share_type(pdelta.copyAndAppendKeyString(location, key));
  }
  pdelta.Op rename(String from, String to) {
    return pdelta.rename(pdelta.copyAndAppendKeyString(location, from), pdelta.keyString(to));
  }

  pdelta.Op delete() {
    return pdelta.delete(location);
  }

  pdelta.Op set(Map<String, pb.User_Share> value) {
    return pdelta.set(location, value);
  }

}

var _initialised = false;
void init() {
  if (_initialised) {
    return;
  }
  _initialised = true;
  pdelta.registerTypes([
    pkg_data_data_data.Share(),
    pkg_data_data_data.User(),
    pkg_data_data_data.User_Share(),
  ]);
}

final typeRegistry = protobuf.TypeRegistry([
  pkg_data_data_data.Share(),
  pkg_data_data_data.User(),
  pkg_data_data_data.User_Share(),
]);

