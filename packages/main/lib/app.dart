import 'dart:async';

import 'package:api/api.dart';
import 'package:auth/auth.dart';
import 'package:connection/connection.dart';
import 'package:data/data.dart';
import 'package:device/device.dart';
import 'package:discovery/discovery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/app/app.dart';
import 'package:main/appbar/appbar.dart';
import 'package:main/observer.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:protod/delta/delta.dart';
import 'package:protod/pserver/pserver.dart';
import 'package:protod/pstore/pstore.dart';

const IS_LIVE = true;
const PRINT_ERRORS = false;
const VERSION_STRING = "v1.0.3";

void app() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    if (PRINT_ERRORS) {
      print("flutter error: ${details.exception} ${details.stack}");
    }
    FlutterError.presentError(details);
  };

  try {
    runZoned<Future<void>>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        setDefaultRegistry(types);

        await Hive.initFlutter();

        final device = Device();
        final discovery = Discovery(
          IS_LIVE,
        );
        final connection = Connection();
        final api = Api(
          connection,
          discovery,

          // Note about retries: this number of retries is only for OT-busy
          // errors, which are expected in high contention situations and the
          // client should retry many times until the operation succeeds. For
          // retryable (but not OT-busy) errors, the count increments by 4 so
          // the figure of 20 means 4 retries for non-OT-busy errors.
          retries: IS_LIVE ? 20 : 5, // retries (live: 20, dev: 5)

          // Note about timeouts: when iOS returns from airplane mode, the
          // first request is about ~5 sec longer than usual, so the timeout is
          // triggered unless it's set to higher than this.
          timeout: IS_LIVE ? 8 : 12, // timeout (live: 8 sec, dev: 12 sec)
        );
        final auth = Auth(
          api,
          device,
        );
        final shares = StoreMeta<Share, String>(
          0,
          Share(),
          Adapter<Share>(api.send),
          api.offline,
          types,
          (Share value) => value.name,
        );
        final users = Store<User>(
          1,
          User(),
          Adapter<User>(api.send),
          api.offline,
          types,
        );
        final data = Data(shares,users,auth,api);
        final navigator = GlobalKey<NavigatorState>();
        final observer =  ErrorObserver(navigator);
        Bloc.observer = observer;

        runApp(
          MultiRepositoryProvider(
            providers: [
              RepositoryProvider<Device>.value(value: device),
              RepositoryProvider<Discovery>.value(value: discovery),
              RepositoryProvider<Connection>.value(value: connection),
              RepositoryProvider<Api>.value(value: api),
              RepositoryProvider<Auth>.value(value: auth),
              RepositoryProvider<Data>.value(value: data),
            ],
            child: MultiBlocProvider(
              providers: [
                BlocProvider<AppBloc>(
                  create: (context) => AppBloc(
                    device,
                    discovery,
                    connection,
                    api,
                    auth,
                    data,
                  ),
                ),
                BlocProvider<AppBarBloc>(
                  create: (context) => AppBarBloc(
                    api,
                    data,
                  ),
                ),
              ],
              child: MaterialApp(
                navigatorObservers: [observer],
                navigatorKey: navigator,
                debugShowCheckedModeBanner: false,
                title: 'Groupshare',
                theme: ThemeData(
                  primarySwatch: Colors.orange,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                darkTheme: ThemeData(
                  primarySwatch: Colors.orange,
                  brightness: Brightness.dark,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                home: AppView(),
              ),
            ),
          ),
        );
      },
      onError: (ex, stack) {
        if (PRINT_ERRORS) {
          print("dart error: $ex $stack");
        }
        throw ex;
      },
    );
  } catch (ex, stack) {
    if (PRINT_ERRORS) {
      print("caught error: $ex $stack");
    }
    throw ex;
  }
}


//class ProtoAdapter<T extends GeneratedMessage> extends TypeAdapter<T> {
//  // TODO: ProtoAdapter is unused now... remove it?
//
//  @override
//  final int typeId;
//  ProtoAdapter(this.typeId);
//
//  @override
//  T read(BinaryReader reader) {
//    final type = reader.readString(); // 0
//    final bytes = reader.readByteList(); // 1
//    T value = types.lookup(type).createEmptyInstance();
//    unpackIntoHelper<T>(bytes, value, 'type.googleapis.com/$type');
//    return value;
//  }
//
//  @override
//  void write(BinaryWriter writer, T obj) {
//    writer.writeString('${obj.info_.qualifiedMessageName}'); // 0
//    writer.writeByteList(obj.writeToBuffer()); // 1
//  }
//}
