import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/auth.pb.dart';
import 'package:hive/hive.dart';

enum Status { Empty, Auth, Done }

abstract class Auth {
  Token get token;
  Status get status;

  String get id;
  String get email;
  String get time;
  String get hash;

  Future<void> setEmail(String value);
  Future<void> setTime(String value);
  Future<void> setId(String value);
  Future<void> setHash(String value);

  Future<void> removeId();
  Future<void> removeHash();

  Future<void> logoff();
}

class AuthImpl implements Auth {
  final _device;
  final Box<String> _box;

  AuthImpl(Box<String> box)
      : this._box = box,
        this._device = locator<Device>();

  Future<void> logoff() async {
    await _box.clear();
  }

  String get email => _box.get(_prefsKey.Email.toString());
  String get time => _box.get(_prefsKey.Time.toString());
  String get id => _box.get(_prefsKey.Id.toString());
  String get hash => _box.get(_prefsKey.Hash.toString());

  Token get token {
    return Token()
      ..id = id
      ..hash = hash
      ..device = _device.id;
  }

  Status get status {
    if (email == null || time == null) {
      return Status.Empty;
    }
    if (hash == null || id == null) {
      return Status.Auth;
    }
    return Status.Done;
  }

  Future<void> setEmail(String value) async {
    await _box.put(_prefsKey.Email.toString(), value);
  }

  Future<void> setTime(String value) async {
    await _box.put(_prefsKey.Time.toString(), value);
  }

  Future<void> setId(String value) async {
    await _box.put(_prefsKey.Id.toString(), value);
  }

  Future<void> setHash(String value) async {
    await _box.put(_prefsKey.Hash.toString(), value);
  }

  Future<void> removeId() async {
    await _box.delete(_prefsKey.Id.toString());
  }

  Future<void> removeHash() async {
    await _box.delete(_prefsKey.Hash.toString());
  }
}

class AuthMock implements Auth {
  Token t;
  Status s;
  String i;

  AuthMock();

  Token get token => t;
  Status get status => s;
  String get id => i;

  @override
  // TODO: implement email
  String get email => throw UnimplementedError();

  @override
  // TODO: implement hash
  String get hash => throw UnimplementedError();

  @override
  Future<void> logoff() {
    // TODO: implement logoff
    throw UnimplementedError();
  }

  @override
  Future<void> removeHash() {
    // TODO: implement removeHash
    throw UnimplementedError();
  }

  @override
  Future<void> removeId() {
    // TODO: implement removeId
    throw UnimplementedError();
  }

  @override
  Future<void> setEmail(String value) {
    // TODO: implement setEmail
    throw UnimplementedError();
  }

  @override
  Future<void> setHash(String value) {
    // TODO: implement setHash
    throw UnimplementedError();
  }

  @override
  Future<void> setId(String value) {
    // TODO: implement setId
    throw UnimplementedError();
  }

  @override
  Future<void> setTime(String value) {
    // TODO: implement setTime
    throw UnimplementedError();
  }

  @override
  // TODO: implement time
  String get time => throw UnimplementedError();
}

enum _prefsKey {
  Email,
  Time,
  Id,
  Hash,
}
