import 'package:auth_repository/auth_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:protod/pserver/pserver.dart';

class Data {
  final Store<Share> _shares;
  final Store<User> _users;
  final Auth _auth;
  Item<User> _user;

  Data(Store<Share> shares, Store<User> users, Auth auth)
      : _shares = shares,
        _users = users,
        _auth = auth;

  Store<Share> get shares {
    return _shares;
  }

  Future<void> init() async {
    var futures = <Future>[];
    futures.add(_shares.init());
    futures.add(_users.init());
    await Future.wait(futures);

    // must wait until _users is initialised before initUser:
    _auth.statusChange.listen((status) async {
      await initUser();
    });
    await initUser();
  }

  Item<User> get user {
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
