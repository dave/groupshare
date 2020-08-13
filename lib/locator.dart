import 'package:connectivity/connectivity.dart';
import 'package:get_it/get_it.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/indicator.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/pb/groupshare/data/user.pb.dart';
import 'package:groupshare/pb/registry.dart';
import 'package:groupshare/ui/appbar/appbar_model.dart';
import 'package:groupshare/ui/auth/auth_model.dart';
import 'package:groupshare/ui/home/home_model.dart';
import 'package:groupshare/ui/login/login_model.dart';
import 'package:groupshare/ui/share/add/share_add_model.dart';
import 'package:groupshare/ui/share/list/share_list_model.dart';
import 'package:hive/hive.dart';
import 'package:protod/pserver/pserver.dart';
import 'package:protod/pstore/pstore.dart';

import 'core/services/data.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator(bool live) async {
  locator.registerSingleton<Indicator>(Indicator());
  locator.registerSingleton<Device>(await DeviceImpl.initialise());
  locator.registerSingleton<Auth>(AuthImpl(await Hive.openBox('auth')));
  locator.registerSingleton<Connectivity>(Connectivity());
  locator.registerSingleton<Api>(Api(
    prefix: live ? LIVE_PREFIX : LOCAL_PREFIX,
  ));
  locator.registerSingleton<Store<Share>>(Store<Share>(
    Share(),
    await Hive.openBox('shares'),
    Adapter<Share>(locator<Api>().send, locator<Api>().connected),
    types,
  ));
  locator.registerSingleton<Store<User>>(Store<User>(
    User(),
    await Hive.openBox('users'),
    Adapter<User>(locator<Api>().send, locator<Api>().connected),
    types,
  ));
  locator.registerSingleton<Data>(Data());

  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => AuthModel());
  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => ShareListModel());
  locator.registerFactory(() => ShareAddModel());
  locator.registerFactory(() => AppBarModel());
}
