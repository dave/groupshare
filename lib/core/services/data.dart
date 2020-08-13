import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/pb/groupshare/data/user.pb.dart';
import 'package:protod/pserver/pserver.dart';

Future<void> setupData() async {
  final data = locator<Data>();
  await data.init();
}

class Data {
  Store<Share> _shares;
  Store<User> _users;
  Item<User> _user;
  Auth _auth;

  Data()
      : _shares = locator<Store<Share>>(),
        _users = locator<Store<User>>(),
        _auth = locator<Auth>();

  Store<Share> get shares {
    return _shares;
  }

  Future<void> init() async {
    var futures = <Future>[];
    futures.add(_shares.init());
    futures.add(_users.init());
    await Future.wait(futures);
  }

  Item<User> get user {
    if (_auth.status != Status.Done) {
      _user = null;
      return null;
    }
    if (_user != null && _auth.id != _user.id) {
      _user = null;
      return null;
    }
    return _user;
  }

  Future<void> initUser() async {
    if (_auth.status != Status.Done) {
      _user = null;
      return;
    }

    if (_user != null && _auth.id != _user.id) {
      // user has changed
      _user = null;
    }

    if (_user != null) {
      return;
    }

    final resp = _users.get(_auth.id, create: true);
    if (resp.item != null) {
      _user = resp.item;
    } else if (resp.future != null) {
      _user = await resp.future;
    } else {
      // device is offline
    }
  }
}
