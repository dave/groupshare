import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:protod/pserver/pserver.dart';

class Data {
  final Store<Share> _shares;
  final Store<User> _users;
  final Auth _auth;
  Item<User> _user;
  Api _api;

  Data(this._shares, this._users, this._auth, this._api);

  Store<Share> get shares {
    return _shares;
  }

  Future<void> init() async {
    List<Future> futures = [];
    futures.add(_shares.init());
    futures.add(_users.init());
    await Future.wait(futures);

    Future<void> f() async {
      if (_auth.status == Status.Done && user == null) {
        final resp = _users.get(_auth.id, create: true, refresh: true);
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

  Item<User> get user {
    if (_auth.status == Status.Done && _user != null && _auth.id == _user.id) {
      return _user;
    }
    return null;
  }
}
