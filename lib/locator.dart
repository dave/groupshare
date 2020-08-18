//import 'package:api_repository/api_repository.dart';
//import 'package:auth_repository/auth_repository.dart';
//import 'package:connection_repository/connection_repository.dart';
//import 'package:data_repository/data_repository.dart';
//import 'package:device_repository/device_repository.dart';
//import 'package:get_it/get_it.dart';
//import 'package:groupshare/ui/appbar/appbar_model.dart';
//import 'package:groupshare/ui/auth/auth_model.dart';
//import 'package:groupshare/ui/home/home_model.dart';
//import 'package:groupshare/ui/login/login_model.dart';
//import 'package:groupshare/ui/share/add/share_add_model.dart';
//import 'package:groupshare/ui/share/list/share_list_model.dart';
//import 'package:hive/hive.dart';
//import 'package:protod/pserver/pserver.dart';
//import 'package:protod/pstore/pstore.dart';
//
//GetIt locator = GetIt.instance;
//
//Future<void> setupLocator(bool live) async {
//  locator.registerSingleton<Connection>(Connection());
//  locator.registerSingleton<Api>(Api(
//    locator<Connection>(),
//    prefix: live ? LIVE_PREFIX : LOCAL_PREFIX,
//  ));
//  locator.registerSingleton<Device>(await Device.initialise());
//  locator.registerSingleton<Auth>(Auth(
//    locator<Api>(),
//    await Hive.openBox('auth'),
//    locator<Device>(),
//  ));
//
//  locator.registerSingleton<Data>(Data(
//    Store<Share>(
//      Share(),
//      await Hive.openBox('shares'),
//      Adapter<Share>(locator<Api>().send, locator<Api>().online),
//      types,
//    ),
//    Store<User>(
//      User(),
//      await Hive.openBox('users'),
//      Adapter<User>(locator<Api>().send, locator<Api>().online),
//      types,
//    ),
//    locator<Auth>(),
//  ));
//
//  locator.registerFactory(() => HomeModel());
//  locator.registerFactory(() => AuthModel());
//  locator.registerFactory(() => LoginModel());
//  locator.registerFactory(() => ShareListModel());
//  locator.registerFactory(() => ShareAddModel());
//  locator.registerFactory(() => AppBarModel());
//}
