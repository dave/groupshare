import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:protod/pserver/pserver.dart';

class Data {
  final StoreMeta<Share, String> _shares;
  final Store<User> _users;
  final Auth _auth;
  Item<User> _user;
  Api _api;

  Data(this._shares, this._users, this._auth, this._api);

  StoreMeta<Share, String> get shares {
    return _shares;
  }

  Future<void> reset() async {
    await _users.reset();
    await _shares.reset();
  }

  bool get hasUser {
    return _auth.status == Status.Done && _user != null && _auth.id == _user.id;
  }

  Item<User> get user {
    if (hasUser) {
      return _user;
    }
    throw UserException("User data not found, are you offline?");
  }

  Future<void> update() async {
    List<Future> futures = [];
    futures.add(_users.update());
    futures.add(_shares.update());
    await Future.wait(futures);
  }

  Future<void> init() async {
    List<Future> futures = [];
    futures.add(_shares.init());
    futures.add(_users.init());
    await Future.wait(futures);

    _api.backOnlineStream.listen((bool event) {
      update();
    });

    Future<void> f() async {
      if (_auth.status == Status.Done && !hasUser) {
        final resp = _users.get(
          _auth.id,
          create: true,
          refresh: !_api.offline(), // only refresh if online
        );
        if (resp.future != null) {
          if (resp.item != null) {
            // if we got an item, and a future, then continue with the local item
            // and refresh the item as a background task.
            _user = resp.item;
            _api.registerBackgroundTask(resp.future, "data init");
          } else {
            // if we got a future, but no item, then wait for the item as a
            // foreground task.
            _user = await resp.future;
          }
        } else {
          if (resp.item != null) {
            _user = resp.item;
          } else {
            throw new Exception("Couldn't refresh details");
          }
        }
      }
    }

    _auth.onStatusChange = (Status status) async {
      await f();
    };
    await f();
  }

  Future<void> logoff() async {
    _user = null;
  }
}
