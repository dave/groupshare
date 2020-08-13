import 'package:flutter/material.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/data.dart';
import 'package:groupshare/core/services/hive.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/registry.dart';
import 'package:groupshare/ui/router.dart';
import 'package:protod/delta/delta.dart';

const IS_LIVE = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setDefaultRegistry(types);
  await setupHive();
  await setupLocator(IS_LIVE);
  await setupApi();
  await setupData();
//  FlutterError.onError = (FlutterErrorDetails details) {
//    if (details.exception is UserException) {
//      print("error: ${details.exception.message}");
//    } else {
//      FlutterError.presentError(details);
//    }
//  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
