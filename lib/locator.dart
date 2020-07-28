import 'package:get_it/get_it.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/core/services/store.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/ui/appbar/appbar_model.dart';
import 'package:groupshare/ui/auth/auth_model.dart';
import 'package:groupshare/ui/home/home_model.dart';
import 'package:groupshare/ui/login/login_model.dart';
import 'package:groupshare/ui/share/list/share_list_model.dart';
import 'package:groupshare/ui/share/new/share_new_model.dart';
import 'package:hive/hive.dart';
import 'package:protod/pserver/store.dart';

GetIt locator = GetIt.instance;

setupLocator() async {
  locator.registerSingleton(Api());
  locator.registerSingleton(
    Store<Share>(
      await Hive.openBox('shares'),
      ShareAdapter(),
    ),
  );
  locator.registerSingleton(await Prefs.initialise());
  locator.registerSingleton(await Device.initialise());
  locator.registerSingleton(Auth());

  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => AuthModel());
  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => ShareListModel());
  locator.registerFactory(() => ShareNewModel());
  locator.registerFactory(() => AppBarModel());
}
