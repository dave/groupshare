import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:connection_repository/connection_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:device_repository/device_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/auth/auth.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:protod/delta/delta.dart';
import 'package:protod/pserver/pserver.dart';
import 'package:protod/pstore/pstore.dart';

const IS_LIVE = false;

void main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    if (details.exception is UserException) {
      print("flutter error: ${details.exception.message}");
    } else {
      FlutterError.presentError(details);
    }
  };

  try {
    WidgetsFlutterBinding.ensureInitialized();
    setDefaultRegistry(types);

    await Hive.initFlutter();
    Hive.registerAdapter(ItemAdapter<Share>(0, types));
    Hive.registerAdapter(ItemAdapter<User>(1, types));

    final connection = Connection();
    final api = Api(
      conn: connection,
      prefix: IS_LIVE ? LIVE_PREFIX : LOCAL_PREFIX,
    );
    final device = await Device.initialise();
    final auth = Auth(
      api,
      await Hive.openBox('auth'),
      device,
    );
    final data = Data(
      Store<Share>(
        Share(),
        await Hive.openBox('shares'),
        Adapter<Share>(api.send, api.online),
        types,
      ),
      Store<User>(
        User(),
        await Hive.openBox('users'),
        Adapter<User>(api.send, api.online),
        types,
      ),
      auth,
    );

    runZoned<Future<void>>(
      () async {
        await api.init();
        await auth.init();
        await data.init();
        runApp(App(
          api: api,
          connection: connection,
          device: device,
          auth: auth,
          data: data,
        ));
      },
      onError: (dynamic error, StackTrace stackTrace) {
        if (error is UserException) {
          print("dart error: ${error.message}");
        } else {
          throw error;
        }
      },
    );
  } catch (ex) {
    if (ex is UserException) {
      print("caught error: ${ex.message}");
    } else {
      throw ex;
    }
  }
}

class App extends StatelessWidget {
  final Api api;
  final Connection connection;
  final Device device;
  final Auth auth;
  final Data data;

  const App({
    Key key,
    @required this.api,
    @required this.connection,
    @required this.device,
    @required this.auth,
    @required this.data,
  })  : assert(api != null),
        assert(connection != null),
        assert(device != null),
        assert(auth != null),
        assert(data != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<Api>.value(value: api),
        RepositoryProvider<Auth>.value(value: auth),
        RepositoryProvider<Data>.value(value: data),
      ],
      child: BlocProvider(
        create: (_) => AuthCubit(auth),
        child: AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groupshare',
      navigatorKey: _navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (context, child) {
        return BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            _navigatorKey.currentState.pushAndRemoveUntil<void>(
              state.when(
                empty: () => LoginPage.route(),
                auth: () => LoginPage.route(),
                done: () => ListPage.route(),
              ),
              (route) => false,
            );
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}

class SplashPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
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
