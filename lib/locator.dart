import 'package:get_it/get_it.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/core/viewmodels/auth_model.dart';
import 'package:groupshare/core/viewmodels/home_model.dart';
import 'package:groupshare/core/viewmodels/login_model.dart';
import 'package:groupshare/core/viewmodels/share_list_model.dart';

GetIt locator = GetIt.instance;

setupLocator() async {
  locator.registerLazySingleton(() => Api());
  locator.registerSingletonAsync<Prefs>(Prefs.initialise);
  locator.registerSingletonAsync<Device>(Device.initialise);

  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => AuthModel());
  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => ShareListModel());

  await locator.allReady();
}
