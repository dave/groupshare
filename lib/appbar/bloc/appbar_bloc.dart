import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appbar_bloc.freezed.dart';

@freezed
abstract class AppBarState with _$AppBarState {
  const factory AppBarState.saved() = AppbarStateSaved;
  const factory AppBarState.connecting() = AppbarStateConnecting;
  const factory AppBarState.waiting() = AppbarStateWaiting;
  const factory AppBarState.offline() = AppbarStateOffline;
}

class AppBarCubit extends Cubit<AppBarState> {
  final Api _api;
  StreamSubscription<ConnectionStatus> _stateSubscription;

  AppBarCubit(Api api)
      : _api = api,
        super(AppBarState.saved()) {
    if (_stateSubscription == null) {
      _stateSubscription = _api.statusChange.listen(
        (ConnectionStatus value) => change(value),
      );
    }
  }

  @override
  Future<void> close() {
    _stateSubscription?.cancel();
    return super.close();
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
    }
  }
}
