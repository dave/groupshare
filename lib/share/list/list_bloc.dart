import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/observer.dart';
import 'package:protod/pserver/pserver.dart';

part 'list_bloc.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  @Implements(Incomplete)
  const factory ListState.loading() = ListStateLoading;

  const factory ListState.flush() = ListStateFlush;

  const factory ListState.refreshFinished() = ListStateRefreshFinished;

  @Implements(Complete)
  const factory ListState.list(List<Item> items) = ListStateList;
}

@freezed
abstract class Item with _$Item {
  const factory Item(
    String id,
    String name,
    bool local,
  ) = _Item;
}

@freezed
abstract class ListEvent with _$ListEvent {
  const factory ListEvent.init() = ListEventInit;

  const factory ListEvent.update() = ListEventUpdate;

  const factory ListEvent.refresh() = ListEventRefresh;

  const factory ListEvent.item(String id) = ListEventItem;

  const factory ListEvent.reorder(int from, int to) = ListEventReorder;
}

class ListBloc extends ExtendedBloc<ListEvent, ListState> {
  final Data _data;
  final Api _api;
  StreamSubscription<DataEvent<User>> _subscription;

  ListBloc(this._data, this._api)
      : super(ListState.loading()) {
    _subscription = _data.user.stream.listen((DataEvent<User> event) {
      if (event is DataEventApply) {
        add(ListEvent.update());
      }
    });
    add(ListEvent.init());
  }

  @override
  Stream<ListState> mapEventToState(ListEvent event) async* {
    yield* event.map(
      init: (event) async* {
        yield _list();

        if (_api.offline()) {
          return;
        }

        await _data.user.send();
      },
      update: (event) async* {
        yield _list();
      },
      refresh: (event) async* {
        try {
          yield _list();
          List<Future> futures = [];
          _data.user.value.shares.forEach((User_AvailableShare userShare) {
            if (_data.shares.has(userShare.id)) {
              futures.add(_data.shares.refresh(userShare.id));
            }
          });
          futures.add(_data.user.refresh());
          await Future.wait(futures);
        } finally {
          yield ListState.flush();
          yield ListState.refreshFinished();
        }
      },
      item: (event) async* {
        await _data.shares.refresh(event.id);
      },
      reorder: (event) async* {
        _data.user.op(op.user.shares.move(event.from, event.to));
      },
    );
  }

  ListState _list() {
    final items = _data.user.value.shares.map(
      (e) {
        return Item(
          e.id,
          _data.shares.has(e.id) ? _data.shares.meta(e.id) : e.name,
          _data.shares.has(e.id),
        );
      },
    ).toList();

    return ListState.list(items);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
