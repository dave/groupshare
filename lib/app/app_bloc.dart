import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:connection_repository/connection_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:device_repository/device_repository.dart';
import 'package:discovery_repository/discovery_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/observer.dart';

part 'app_bloc.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  @Implements(Incomplete)
  const factory AppState.loading() = AppStateLoading;

  const factory AppState.login(bool auth) = AppStateLogin;

  const factory AppState.done() = AppStateDone;
}

@freezed
abstract class AppEvent with _$AppEvent {
  const factory AppEvent.init() = AppEventInit;

  const factory AppEvent.reset() = AppEventReset;

  const factory AppEvent.logoff() = AppEventLogoff;
}

class AppBloc extends ExtendedBloc<AppEvent, AppState> {
  final Device _device;
  final Discovery _discovery;
  final Connection _connection;
  final Api _api;
  final Auth _auth;
  final Data _data;

  StreamSubscription<Status> _subscription;

  AppBloc(
    this._device,
    this._discovery,
    this._connection,
    this._api,
    this._auth,
    this._data,
  ) : super(AppState.loading()) {
    _subscription = _auth.statusChange.listen((Status value) {
      add(AppEvent.init());
    });
    Future<void> f() async {
      await _device.init();
      await _discovery.init();
      await _connection.init();
      await _api.init();
      await _auth.init();
      await _data.init();
      add(AppEvent.init());
    }

    f();
  }

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    yield* event.map(
      init: (event) async* {
        if (_auth.status == Status.Empty) {
          yield AppState.login(false);
        } else if (_auth.status == Status.Auth) {
          yield AppState.login(true);
        } else if (_auth.status == Status.Done) {
          if (_data.user != null) {
            yield AppState.done();
          } else {
            throw UserException("It looks like you're offline.");
          }
        }
      },
      reset: (event) async* {
        await _data.reset();
        await _auth.reset();
      },
      logoff: (event) async* {
        await _data.logoff();
        await _auth.logoff();
      },
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
