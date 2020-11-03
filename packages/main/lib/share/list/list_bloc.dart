import 'dart:async';

import 'package:api/api.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main/bloc.dart';
import 'package:main/observer.dart';
import 'package:main/share/open/open.dart';
import 'package:protod/pserver/pserver.dart';
import 'package:flutter/foundation.dart';

part 'list_bloc.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  @Implements(Incomplete)
  const factory ListState.loading() = ListStateLoading;

  const factory ListState.flush() = ListStateFlush;

  const factory ListState.refreshFinished() = ListStateRefreshFinished;

  @Implements(Complete)
  const factory ListState.list(List<Item> items, String badge) = ListStateList;
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
  const factory ListEvent.setup() = ListEventSetup;

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

  ListBloc(this._data, this._api) : super(ListState.loading()) {
    add(ListEvent.setup());
  }

  @override
  Stream<ListState> mapEventToState(ListEvent event) async* {
    yield* event.map(
      setup: (event) async* {
        _subscription?.cancel();
        _subscription = _data.user.stream.listen((DataEvent<User> event) {
          if (event is DataEventApply<User>) {
            add(ListEvent.update());
          }
        });
        add(ListEvent.init());
      },
      init: (event) async* {
        yield _list();

        if (_api.offline()) {
          return;
        }

        await updateUserAvailable(_api, _data);

        yield _list();
      },
      update: (event) async* {
        yield _list();
      },
      refresh: (event) async* {
        try {
          List<Future> futures = [];
          _data.user.value.favourites.forEach((User_Share userShare) {
            if (_data.shares.has(userShare.id)) {
              futures.add(_data.shares.refresh(userShare.id));
            }
          });
          futures.add(updateUserAvailable(_api, _data));
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
        _data.user.op(op.user.favourites.move(event.from, event.to));
      },
    );
  }

  ListState _list() {
    final items = _data.user.value.favourites
        .map(
          (fav) => Item(
            fav.id,
            _data.shares.has(fav.id) ? _data.shares.meta(fav.id) : fav.name,
            _data.shares.has(fav.id),
          ),
        )
        .toList();

    var count = 0;

    if (_data.user.value.all != null) {
      _data.user.value.all.forEach((id, name) {
        if (!_data.user.value.favourites.any((fav) => fav.id == id)) {
          count++;
        }
      });
    }

    return ListState.list(items, count == 0 ? "" : count.toString());
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
