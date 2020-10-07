import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/observer.dart';
import 'package:groupshare/pb/messages/share.pb.dart';
import 'package:protod/pserver/pserver.dart';
import 'package:flutter/foundation.dart';

part 'open_bloc.freezed.dart';

@freezed
abstract class OpenState with _$OpenState {
  @Implements(Incomplete)
  const factory OpenState.loading() = OpenStateLoading;

  const factory OpenState.flush() = OpenStateFlush;

  const factory OpenState.refreshFinished() = OpenStateRefreshFinished;

  @Implements(Complete)
  const factory OpenState.list(List<Item> items) = OpenStateList;
}

@freezed
abstract class Item with _$Item {
  const factory Item(String id, String name, bool favourite) = _Item;
}

@freezed
abstract class OpenEvent with _$OpenEvent {
  const factory OpenEvent.init() = OpenEventInit;

  const factory OpenEvent.update() = OpenEventUpdate;

  const factory OpenEvent.refresh() = OpenEventRefresh;

  const factory OpenEvent.add(String id) = OpenEventAdd;

  const factory OpenEvent.remove(String id) = OpenEventRemove;
}

class OpenBloc extends ExtendedBloc<OpenEvent, OpenState> {
  final Data _data;
  final Api _api;
  StreamSubscription<DataEvent<User>> _subscription;

  OpenBloc(this._data, this._api) : super(OpenState.loading()) {
    _subscription = _data.user.stream.listen((DataEvent<User> event) {
      if (event is DataEventApply) {
        add(OpenEvent.update());
      }
    });
    add(OpenEvent.init());
  }

  @override
  Stream<OpenState> mapEventToState(OpenEvent event) async* {
    yield* event.map(
      init: (event) async* {
        await updateUserAvailable(_api, _data);
        yield _list();
      },
      update: (event) async* {
        yield _list();
      },
      refresh: (event) async* {
        try {
          await updateUserAvailable(_api, _data);
          yield _list();
        } finally {
          yield OpenState.flush();
          yield OpenState.refreshFinished();
        }
      },
      add: (event) async* {
        if (_data.user.value.favourites.any((fav) => fav.id == event.id)) {
          // item already in favourites list: just refresh page
          yield _list();
          return;
        }
        final item = _data.user.value.available.firstWhere(
          (ava) => ava.id == event.id,
        );
        if (item == null) {
          // item not in available list: just refresh page
          yield _list();
          return;
        }
        _data.user.op(
          op.user.favourites.insert(
            0,
            User_Share()
              ..id = item.id
              ..name = item.name,
          ),
        );
        yield _list();
      },
      remove: (event) async* {
        final favIndex = _data.user.value.favourites.indexWhere(
          (fav) => fav.id == event.id,
        );
        if (favIndex == -1) {
          yield _list();
          return;
        }
        _data.user.op(op.user.favourites.index(favIndex).delete());
        yield _list();
      },
    );
  }

  OpenState _list() {
    final items = _data.user.value.available
        .map(
          (ava) => Item(
            ava.id,
            ava.name,
            _data.user.value.favourites.any((fav) => fav.id == ava.id),
          ),
        )
        .toList();

    return OpenState.list(items);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}

Future<void> updateUserAvailable(Api api, Data data) async {
  final response = await api.send(
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
  if (!listEquals(available, data.user.value.available)) {
    data.user.op(op.user.available.set(available));
  }
  await data.user.send();
}
