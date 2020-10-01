import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:connection_repository/connection_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:device_repository/device_repository.dart';
import 'package:discovery_repository/discovery_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/app/app.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/task.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:protod/delta/delta.dart';
import 'package:protod/pserver/pserver.dart';
import 'package:protod/pstore/pstore.dart';

const IS_LIVE = true;
const PRINT_ERRORS = false;

void main() async {
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
        Hive.registerAdapter(ItemAdapter<Share>(0, types));
        Hive.registerAdapter(ItemAdapter<User>(1, types));

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
        final data = Data(
          StoreMeta<Share, String>(
            Share(),
            Adapter<Share>(api.send),
            api.offline,
            types,
            (Share value) => value.name,
          ),
          Store<User>(
            User(),
            Adapter<User>(api.send),
            api.offline,
            types,
          ),
          auth,
          api,
        );
        final navigator = GlobalKey<NavigatorState>();
        Bloc.observer = MyBlocObserver(navigator);

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

class MyBlocObserver extends BlocObserver {
  final GlobalKey<NavigatorState> _navigator;

  MyBlocObserver(this._navigator);

  @override
  void onError(Cubit cubit, dynamic ex, StackTrace stack) {
    Function() retry;
    if (ex is UserException && cubit is Bloc && ex.retry != null) {
      retry = () => cubit.add(ex.retry);
    }
    if (cubit is AppBloc) {
      // TODO what are appropriate options for errors in AppCubit?
      handle(
        _navigator.currentState.overlay.context,
        ex,
        stack,
        back: _navigator.currentState.canPop()
            ? _navigator.currentState.pop
            : null,
        retry: retry,
        logoff: true,
      );
    } else if (cubit.state is PageStateIncomplete ||
        (cubit.state is PageStateHolder &&
            cubit.state.page is PageStateIncomplete)) {
      // States that implement IncompleteState are for when the UI is
      // incomplete - e.g. a loading screen. The error popup in this state
      // should not have an "ok" button to dismiss it, since the UI below is
      // not complete. If an error is shown in this state, the error dialog
      // should include a button to go home / log off.
      // TODO: Detect if the navigator can be popped and include a "back" button instead of "home"?
      final homeButtonValid = !(cubit is ListCubit || cubit is LoginBloc);
      handle(
        _navigator.currentState.overlay.context,
        ex,
        stack,
        back: _navigator.currentState.canPop()
            ? _navigator.currentState.pop
            : null,
        retry: retry,
        home: homeButtonValid,
        logoff: !homeButtonValid,
      );
    } else {
      // If the UI is in a complete state, we should be able to just show the
      // OK button, so the user can retry the action if they want.
      handle(
        _navigator.currentState.overlay.context,
        ex,
        stack,
        retry: retry,
      );
    }

    super.onError(cubit, ex, stack);
  }
}

class PageStateIncomplete {}

abstract class PageStateHolder {
  dynamic get page;
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
