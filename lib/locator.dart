import 'package:get_it/get_it.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/ui/appbar/appbar_model.dart';
import 'package:groupshare/ui/auth/auth_model.dart';
import 'package:groupshare/ui/home/home_model.dart';
import 'package:groupshare/ui/login/login_model.dart';
import 'package:groupshare/ui/share/list/share_list_model.dart';
import 'package:groupshare/ui/share/new/share_new_model.dart';

GetIt locator = GetIt.instance;

setupLocator() async {
  locator.registerSingleton<Api>(Api());
  locator.registerSingleton<Prefs>(await Prefs.initialise());
  locator.registerSingleton<Device>(await Device.initialise());
  locator.registerSingleton<Auth>(Auth());

  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => AuthModel());
  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => ShareListModel());
  locator.registerFactory(() => ShareNewModel());
  locator.registerFactory(() => AppBarModel());
}
