import 'dart:async';
import 'dart:io';

import 'package:api_repository/api_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/bloc.dart';
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

@freezed
abstract class AppBarEvent with _$AppBarEvent {
  const factory AppBarEvent.change(ConnectionStatus status) = AppBarEventChange;

  const factory AppBarEvent.disconnect() = AppBarEventDisconnect;

  const factory AppBarEvent.reconnect() = AppBarEventReconnect;
}

class AppBarBloc extends ExtendedBloc<AppBarEvent, AppBarState> {
  final Api _api;
  final Data _data;
  StreamSubscription<ConnectionStatus> _subscription;

  AppBarBloc(this._api, this._data) : super(AppBarState.saved()) {
    _subscription = _api.statusStream.listen((ConnectionStatus value) {
      add(AppBarEvent.change(value));
    });
  }

  @override
  Stream<AppBarState> mapEventToState(AppBarEvent event) async* {
    yield* event.map(
      change: (event) async* {
        switch (event.status) {
          case ConnectionStatus.Saved:
            yield AppBarState.saved();
            return;
          case ConnectionStatus.Connecting:
            yield AppBarState.connecting();
            return;
          case ConnectionStatus.Waiting:
            yield AppBarState.waiting();
            return;
          case ConnectionStatus.Offline:
            yield AppBarState.offline();
            return;
          case ConnectionStatus.Failed:
            yield AppBarState.failed();
            return;
        }
      },
      disconnect: (event) async* {
        _api.disconnect();
      },
      reconnect: (event) async* {
        _data.user.refresh();
        _data.shares.update();
      },
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
