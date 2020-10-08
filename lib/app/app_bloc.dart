import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:connection_repository/connection_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:device_repository/device_repository.dart';
import 'package:discovery_repository/discovery_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/observer.dart';

part 'app_bloc.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  @Implements(Incomplete)
  const factory AppState.loading({Status status}) = AppStateLoading;

  const factory AppState.login(bool auth) = AppStateLogin;

  const factory AppState.done() = AppStateDone;
}

@freezed
abstract class AppEvent with _$AppEvent {
  const factory AppEvent.setup() = AppEventSetup;

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
    add(AppEvent.setup());
  }

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    yield* event.map(
      setup: (event) async* {
        // _auth.setup() is required in order to call _auth.status, but
        // the full _auth.init() needs _api to be initialised.
        await _auth.setup();
        // We need to emit a state containing the auth status here so that
        // if we throw an error in one of the init functions, the handler knows
        // whether it should show a logoff button.
        yield AppState.loading(status: _auth.status);

        _subscription?.cancel();
        _subscription = _auth.statusChange.listen((Status value) {
          add(AppEvent.init());
        });

        await _device.init();
        await _discovery.init();
        await _connection.init();
        await _api.init();
        await _auth.init();
        await _data.init();
        add(AppEvent.init());
      },
      init: (event) async* {
        if (_auth.status == Status.Empty) {
          yield AppState.login(false);
        } else if (_auth.status == Status.Auth) {
          yield AppState.login(true);
        } else if (_auth.status == Status.Done) {
          yield AppState.done();
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
