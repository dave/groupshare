import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:connection_repository/connection_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:device_repository/device_repository.dart';
import 'package:discovery_repository/discovery_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bloc.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.loading() = AppStateLoading;

  const factory AppState.login(bool auth) = AppStateLogin;

  const factory AppState.done() = AppStateDone;

  const factory AppState.offline() = AppStateOffline;
}

class AppCubit extends Cubit<AppState> {
  final Device _device;
  final Discovery _discovery;
  final Connection _connection;
  final Api _api;
  final Auth _auth;
  final Data _data;

  StreamSubscription<Status> _subscription;

  AppCubit(
    this._device,
    this._discovery,
    this._connection,
    this._api,
    this._auth,
    this._data,
  ) : super(AppState.loading());

  Future<void> reset() async {
    await _data.reset();
    await _auth.reset();
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  Future<void> init() async {
    if (_subscription == null) {
      _subscription = _auth.statusChange.listen(
        (Status value) {
          authStatusChange(); // TODO: what if this throws an exception?!?
        },
      );
    }
    await _device.init();
    await _discovery.init();
    await _api.init();
    await _auth.init();
    await _data.init();
    authStatusChange();
  }

  void authStatusChange() {
    if (_auth.status == Status.Empty || _auth.status == Status.Auth) {
      emit(AppState.login(_auth.status == Status.Auth));
      return;
    } else if (_auth.status == Status.Done) {
      if (_data.user != null) {
        emit(AppState.done());
        return;
      } else {
        emit(AppState.offline());
        return;
      }
    }
  }

  Future<void> logoff() async {
    await _auth.logoff();
    await _data.logoff();
  }
}
