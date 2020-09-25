import 'dart:async';
import 'dart:io';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'appbar_bloc.freezed.dart';

@freezed
abstract class AppBarState with _$AppBarState {
  const factory AppBarState.saved() = AppbarStateSaved;
  const factory AppBarState.connecting() = AppbarStateConnecting;
  const factory AppBarState.waiting() = AppbarStateWaiting;
  const factory AppBarState.offline() = AppbarStateOffline;
  const factory AppBarState.failed() = AppbarStateFailed;
}

class AppBarCubit extends Cubit<AppBarState> {
  final Api _api;
  final Data _data;
  final Auth _auth;
  StreamSubscription<ConnectionStatus> _subscription;

  AppBarCubit(this._auth, this._api, this._data) : super(AppBarState.saved()) {
    _subscription = _api.statusStream.listen(
      (ConnectionStatus value) => emitState(value),
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  void goOffline() {
    _api.forceOffline();
  }

  void retry() {
    _api.registerBackgroundTask(_data.user.refresh(), "user refresh");
    _api.registerBackgroundTask(_data.shares.update(), "shares update");
  }

  void emitState(ConnectionStatus state) {
    switch (state) {
      case ConnectionStatus.Saved:
        emit(AppBarState.saved());
        return;
      case ConnectionStatus.Connecting:
        emit(AppBarState.connecting());
        return;
      case ConnectionStatus.Waiting:
        emit(AppBarState.waiting());
        return;
      case ConnectionStatus.Offline:
        emit(AppBarState.offline());
        return;
      case ConnectionStatus.Failed:
        emit(AppBarState.failed());
        return;
    }
  }
}
