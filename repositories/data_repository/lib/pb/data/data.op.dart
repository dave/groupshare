import 'package:protod/delta/delta.dart' as delta;
import 'package:protod/delta/delta.pb.dart' as delta;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:data_repository/pb/data/share.pb.dart' as pb;
import 'package:data_repository/pb/data/user.pb.dart' as pb;

Op_root_type get op {
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

class Share_type extends delta.Location {
  Share_type(List<delta.Locator> location) : super(location);
  delta.String_scalar get name {
    return delta.String_scalar(delta.copyAndAppendField(location, "name", 1));
  }
  delta.String_scalar get description {
    return delta.String_scalar(delta.copyAndAppendField(location, "description", 2));
  }
  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(pb.Share value) {
    return delta.set(location, value);
  }

}

class Share_type_list extends delta.Location {
  Share_type_list(List<delta.Locator> location) : super(location);
  Share_type index(int i) {
    return Share_type(delta.copyAndAppendIndex(location, fixnum.Int64(i)));
  }
  delta.Op insert(int index, pb.Share value) {
    return delta.insert(delta.copyAndAppendIndex(location, fixnum.Int64(index)), value);
  }

  delta.Op move(int from, int to) {
    return delta.move(delta.copyAndAppendIndex(location, fixnum.Int64(from)), fixnum.Int64(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(List<pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_bool_map extends delta.Location {
  Share_type_bool_map(List<delta.Locator> location) : super(location);
  Share_type key(bool key) {
    return Share_type(delta.copyAndAppendKeyBool(location, key));
  }
  delta.Op rename(bool from, bool to) {
    return delta.rename(delta.copyAndAppendKeyBool(location, from), delta.keyBool(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<bool, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_int32_map extends delta.Location {
  Share_type_int32_map(List<delta.Locator> location) : super(location);
  Share_type key(int key) {
    return Share_type(delta.copyAndAppendKeyInt32(location, key));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyInt32(location, from), delta.keyInt32(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<int, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_int64_map extends delta.Location {
  Share_type_int64_map(List<delta.Locator> location) : super(location);
  Share_type key(int key) {
    return Share_type(delta.copyAndAppendKeyInt64(location, fixnum.Int64(key)));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyInt64(location, fixnum.Int64(from)), delta.keyInt64(fixnum.Int64(to)));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<fixnum.Int64, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_uint32_map extends delta.Location {
  Share_type_uint32_map(List<delta.Locator> location) : super(location);
  Share_type key(int key) {
    return Share_type(delta.copyAndAppendKeyUint32(location, key));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyUint32(location, from), delta.keyUint32(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<int, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_uint64_map extends delta.Location {
  Share_type_uint64_map(List<delta.Locator> location) : super(location);
  Share_type key(int key) {
    return Share_type(delta.copyAndAppendKeyUint64(location, fixnum.Int64(key)));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyUint64(location, fixnum.Int64(from)), delta.keyUint64(fixnum.Int64(to)));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<fixnum.Int64, pb.Share> value) {
    return delta.set(location, value);
  }

}

class Share_type_string_map extends delta.Location {
  Share_type_string_map(List<delta.Locator> location) : super(location);
  Share_type key(String key) {
    return Share_type(delta.copyAndAppendKeyString(location, key));
  }
  delta.Op rename(String from, String to) {
    return delta.rename(delta.copyAndAppendKeyString(location, from), delta.keyString(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<String, pb.Share> value) {
    return delta.set(location, value);
  }

}

class User_type extends delta.Location {
  User_type(List<delta.Locator> location) : super(location);
  User_Share_type_list get favourites {
    return User_Share_type_list(delta.copyAndAppendField(location, "favourites", 1));
  }
  User_Share_type_list get available {
    return User_Share_type_list(delta.copyAndAppendField(location, "available", 2));
  }
  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(pb.User value) {
    return delta.set(location, value);
  }

}

class User_type_list extends delta.Location {
  User_type_list(List<delta.Locator> location) : super(location);
  User_type index(int i) {
    return User_type(delta.copyAndAppendIndex(location, fixnum.Int64(i)));
  }
  delta.Op insert(int index, pb.User value) {
    return delta.insert(delta.copyAndAppendIndex(location, fixnum.Int64(index)), value);
  }

  delta.Op move(int from, int to) {
    return delta.move(delta.copyAndAppendIndex(location, fixnum.Int64(from)), fixnum.Int64(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(List<pb.User> value) {
    return delta.set(location, value);
  }

}

class User_type_bool_map extends delta.Location {
  User_type_bool_map(List<delta.Locator> location) : super(location);
  User_type key(bool key) {
    return User_type(delta.copyAndAppendKeyBool(location, key));
  }
  delta.Op rename(bool from, bool to) {
    return delta.rename(delta.copyAndAppendKeyBool(location, from), delta.keyBool(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<bool, pb.User> value) {
    return delta.set(location, value);
  }

}

class User_type_int32_map extends delta.Location {
  User_type_int32_map(List<delta.Locator> location) : super(location);
  User_type key(int key) {
    return User_type(delta.copyAndAppendKeyInt32(location, key));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyInt32(location, from), delta.keyInt32(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<int, pb.User> value) {
    return delta.set(location, value);
  }

}

class User_type_int64_map extends delta.Location {
  User_type_int64_map(List<delta.Locator> location) : super(location);
  User_type key(int key) {
    return User_type(delta.copyAndAppendKeyInt64(location, fixnum.Int64(key)));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyInt64(location, fixnum.Int64(from)), delta.keyInt64(fixnum.Int64(to)));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<fixnum.Int64, pb.User> value) {
    return delta.set(location, value);
  }

}

class User_type_uint32_map extends delta.Location {
  User_type_uint32_map(List<delta.Locator> location) : super(location);
  User_type key(int key) {
    return User_type(delta.copyAndAppendKeyUint32(location, key));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyUint32(location, from), delta.keyUint32(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<int, pb.User> value) {
    return delta.set(location, value);
  }

}

class User_type_uint64_map extends delta.Location {
  User_type_uint64_map(List<delta.Locator> location) : super(location);
  User_type key(int key) {
    return User_type(delta.copyAndAppendKeyUint64(location, fixnum.Int64(key)));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyUint64(location, fixnum.Int64(from)), delta.keyUint64(fixnum.Int64(to)));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<fixnum.Int64, pb.User> value) {
    return delta.set(location, value);
  }

}

class User_type_string_map extends delta.Location {
  User_type_string_map(List<delta.Locator> location) : super(location);
  User_type key(String key) {
    return User_type(delta.copyAndAppendKeyString(location, key));
  }
  delta.Op rename(String from, String to) {
    return delta.rename(delta.copyAndAppendKeyString(location, from), delta.keyString(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<String, pb.User> value) {
    return delta.set(location, value);
  }

}

class User_Share_type extends delta.Location {
  User_Share_type(List<delta.Locator> location) : super(location);
  delta.String_scalar get id {
    return delta.String_scalar(delta.copyAndAppendField(location, "id", 1));
  }
  delta.String_scalar get name {
    return delta.String_scalar(delta.copyAndAppendField(location, "name", 2));
  }
  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(pb.User_Share value) {
    return delta.set(location, value);
  }

}

class User_Share_type_list extends delta.Location {
  User_Share_type_list(List<delta.Locator> location) : super(location);
  User_Share_type index(int i) {
    return User_Share_type(delta.copyAndAppendIndex(location, fixnum.Int64(i)));
  }
  delta.Op insert(int index, pb.User_Share value) {
    return delta.insert(delta.copyAndAppendIndex(location, fixnum.Int64(index)), value);
  }

  delta.Op move(int from, int to) {
    return delta.move(delta.copyAndAppendIndex(location, fixnum.Int64(from)), fixnum.Int64(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(List<pb.User_Share> value) {
    return delta.set(location, value);
  }

}

class User_Share_type_bool_map extends delta.Location {
  User_Share_type_bool_map(List<delta.Locator> location) : super(location);
  User_Share_type key(bool key) {
    return User_Share_type(delta.copyAndAppendKeyBool(location, key));
  }
  delta.Op rename(bool from, bool to) {
    return delta.rename(delta.copyAndAppendKeyBool(location, from), delta.keyBool(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<bool, pb.User_Share> value) {
    return delta.set(location, value);
  }

}

class User_Share_type_int32_map extends delta.Location {
  User_Share_type_int32_map(List<delta.Locator> location) : super(location);
  User_Share_type key(int key) {
    return User_Share_type(delta.copyAndAppendKeyInt32(location, key));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyInt32(location, from), delta.keyInt32(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<int, pb.User_Share> value) {
    return delta.set(location, value);
  }

}

class User_Share_type_int64_map extends delta.Location {
  User_Share_type_int64_map(List<delta.Locator> location) : super(location);
  User_Share_type key(int key) {
    return User_Share_type(delta.copyAndAppendKeyInt64(location, fixnum.Int64(key)));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyInt64(location, fixnum.Int64(from)), delta.keyInt64(fixnum.Int64(to)));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<fixnum.Int64, pb.User_Share> value) {
    return delta.set(location, value);
  }

}

class User_Share_type_uint32_map extends delta.Location {
  User_Share_type_uint32_map(List<delta.Locator> location) : super(location);
  User_Share_type key(int key) {
    return User_Share_type(delta.copyAndAppendKeyUint32(location, key));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyUint32(location, from), delta.keyUint32(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<int, pb.User_Share> value) {
    return delta.set(location, value);
  }

}

class User_Share_type_uint64_map extends delta.Location {
  User_Share_type_uint64_map(List<delta.Locator> location) : super(location);
  User_Share_type key(int key) {
    return User_Share_type(delta.copyAndAppendKeyUint64(location, fixnum.Int64(key)));
  }
  delta.Op rename(int from, int to) {
    return delta.rename(delta.copyAndAppendKeyUint64(location, fixnum.Int64(from)), delta.keyUint64(fixnum.Int64(to)));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<fixnum.Int64, pb.User_Share> value) {
    return delta.set(location, value);
  }

}

class User_Share_type_string_map extends delta.Location {
  User_Share_type_string_map(List<delta.Locator> location) : super(location);
  User_Share_type key(String key) {
    return User_Share_type(delta.copyAndAppendKeyString(location, key));
  }
  delta.Op rename(String from, String to) {
    return delta.rename(delta.copyAndAppendKeyString(location, from), delta.keyString(to));
  }

  delta.Op delete() {
    return delta.delete(location);
  }

  delta.Op set(Map<String, pb.User_Share> value) {
    return delta.set(location, value);
  }

}

