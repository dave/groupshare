import 'dart:async';
import 'dart:io';

import 'package:api_repository/api_repository.dart';
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
  StreamSubscription<ConnectionStatus> _stateSubscription;

  AppBarCubit(this._api, this._data) : super(AppBarState.saved()) {
    _stateSubscription = _api.statusChange.listen(
      (ConnectionStatus value) => change(value),
    );
  }

  @override
  Future<void> close() {
    _stateSubscription?.cancel();
    return super.close();
  }

  void goOffline() {
    _api.goOffline();
  }

  void retry() {
    _api.registerBackgroundTask(_data.user.refresh(), "user refresh");
    _api.registerBackgroundTask(_data.shares.update(), "shares update");
  }

  Future<void> clear() async {
    await Hive.deleteFromDisk();
    exit(0); // TODO: not for production
  }

  void change(ConnectionStatus state) {
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
