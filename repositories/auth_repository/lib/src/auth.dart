import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/pb/auth/auth.pb.dart';
import 'package:device_repository/device_repository.dart';
import 'package:hive/hive.dart';

enum Status { Empty, Auth, Done }

class Auth {
  final Api _api;
  final Device _device;
  final Box<String> _box;

  Auth(Api api, Box<String> box, Device device)
      : this._api = api,
        this._box = box,
        this._device = device;

  Future<void> logoff() async {
    await _box.clear();
  }

  String get email => _box.get(_key.Email.toString());
  String get time => _box.get(_key.Time.toString());
  String get id => _box.get(_key.Id.toString());
  String get hash => _box.get(_key.Hash.toString());

  Token get token {
    return Token()
      ..id = id
      ..hash = hash
      ..device = _device.id;
  }

  Future<void> login(String email) async {
    final resp = await _api.send(
      Login_Response(),
      Login_Request()
        ..device = _device.id
        ..email = email,
    );
    await _box.putAll({
      _key.Email.toString(): email,
      _key.Time.toString(): resp.time,
      _key.Hash.toString(): null,
    });
    _controller.add(Status.Auth);
  }

  Future<void> code(String code) async {
    final resp = await _api.send(
      Code_Response(),
      Code_Request()
        ..email = email
        ..device = _device.id
        ..time = time
        ..test = true
        ..code = code,
    );
    await _box.putAll({
      _key.Id.toString(): resp.id,
      _key.Hash.toString(): resp.hash,
    });
    _controller.add(Status.Done);
  }

  final _controller = StreamController<Status>.broadcast();

  Stream<Status> get statusChange async* {
    yield status;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();

  Status get status {
    if (email == null || time == null) {
      return Status.Empty;
    }
    if (hash == null || id == null) {
      return Status.Auth;
    }
    return Status.Done;
  }
}

//class AuthMock implements Auth {
//  Token t;
//  Status s;
//  String i;
//
//  AuthMock();
//
//  Token get token => t;
//  Status get status => s;
//  String get id => i;
//
//  @override
//  // TODO: implement email
//  String get email => throw UnimplementedError();
//
//  @override
//  // TODO: implement hash
//  String get hash => throw UnimplementedError();
//
//  @override
//  Future<void> logoff() {
//    // TODO: implement logoff
//    throw UnimplementedError();
//  }
//
//  @override
//  Future<void> removeHash() {
//    // TODO: implement removeHash
//    throw UnimplementedError();
//  }
//
//  @override
//  Future<void> removeId() {
//    // TODO: implement removeId
//    throw UnimplementedError();
//  }
//
//  @override
//  Future<void> setEmail(String value) {
//    // TODO: implement setEmail
//    throw UnimplementedError();
//  }
//
//  @override
//  Future<void> setHash(String value) {
//    // TODO: implement setHash
//    throw UnimplementedError();
//  }
//
//  @override
//  Future<void> setId(String value) {
//    // TODO: implement setId
//    throw UnimplementedError();
//  }
//
//  @override
//  Future<void> setTime(String value) {
//    // TODO: implement setTime
//    throw UnimplementedError();
//  }
//
//  @override
//  // TODO: implement time
//  String get time => throw UnimplementedError();
//}

//abstract class Auth {
//  Token get token;
//  //Status get status;
//
//  String get id;
//  String get email;
//  String get time;
//  String get hash;
//
//  Future<void> setEmail(String value);
//  Future<void> setTime(String value);
//  Future<void> setId(String value);
//  Future<void> setHash(String value);
//
//  Future<void> removeId();
//  Future<void> removeHash();
//
//  Future<void> logoff();
//
//  Stream<Status> get status;
//  void dispose();
//}

enum _key {
  Email,
  Time,
  Id,
  Hash,
}