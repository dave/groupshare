import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/observer.dart';
import 'package:groupshare/pb/messages/share.pb.dart';
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

        await _updateUserAvailable();

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
          futures.add(_updateUserAvailable());
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

  Future<void> _updateUserAvailable() async {
    final response = await _api.send(
      Share_List_Response(),
      Share_List_Request(),
    );
    List<User_Share> available = [];
    response.items.forEach((item) {
      available.add(
        User_Share()
          ..id = item.id
          ..name = item.name,
      );
    });
    available.sort((a, b) {
      final byName = a.name.compareTo(b.name);
      if (byName != 0) {
        return byName;
      }
      return a.id.compareTo(b.id);
    });
    if (!listEquals(available, _data.user.value.available)) {
      _data.user.op(op.user.available.set(available));
    }
    await _data.user.send();
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

    if (_data.user.value.available != null) {
      _data.user.value.available.forEach((ava) {
        if (!_data.user.value.favourites.any((fav) => fav.id == ava.id)) {
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
