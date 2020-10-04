import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/observer.dart';
import 'package:protod/pserver/pserver.dart';

part 'list_bloc.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  @Implements(Incomplete)
  const factory ListState.loading() = ListStateLoading;

  const factory ListState.refreshFinished() = ListStateRefreshFinished;

  @Implements(Complete)
  const factory ListState.list(
    List<AvailableShare> items,
  ) = ListStateList;
}

@freezed
abstract class AvailableShare with _$AvailableShare {
  const factory AvailableShare(
    String id,
    String name,
    bool local,
    bool dirty,
    bool sending,
  ) = _AvailableShare;
}

@freezed
abstract class ListEvent with _$ListEvent {
  const factory ListEvent.init() = ListEventInit;

  const factory ListEvent.update() = ListEventUpdate;

  const factory ListEvent.refresh() = ListEventRefresh;

  const factory ListEvent.item(String id) = ListEventItem;

  const factory ListEvent.delete(String id) = ListEventDelete;

  const factory ListEvent.reorder(int from, int to) = ListEventReorder;
}

class ListBloc extends Bloc<ListEvent, ListState> {
  final Data _data;
  final Api _api;
  //StreamSubscription<DataEvent<Share>> _sharesSubscription;
  StreamSubscription<DataEvent<User>> _userSubscription;

  ListBloc(this._data, this._api)
      : super(ListState.loading()) {
    _userSubscription = _data.user.stream.listen((DataEvent<User> event) {
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
        if (_data.user == null) {
          throw UserException("Looks like you're offline.");
        }

        yield _listPage();

        if (_api.offline()) {
          return;
        }

        await _data.user.send();
      },
      update: (event) async* {
        if (_data.user == null) {
          throw UserException("Looks like you're offline.");
        }

        yield _listPage();
      },
      refresh: (event) async* {
        yield _listPage();
        List<Future> futures = [];
        _data.user.value.shares.forEach((User_AvailableShare userShare) {
          if (_data.shares.has(userShare.id)) {
            futures.add(_data.shares.refresh(userShare.id));
          }
        });
        futures.add(_data.user.refresh());
        await Future.wait(futures);
        yield ListState.refreshFinished();
      },
      item: (event) async* {
        await _data.shares.refresh(event.id);
      },
      delete: (event) async* {
        // final i = _data.user.value.shares.indexWhere((s) => s.id == id);
        // if (i == -1) {
        //   return;
        // }
        //_data.user.op(Op().User().Shares().Index(i).Delete());
        _data.shares.delete(event.id);
      },
      reorder: (event) async* {
        _data.user.op(op.user.shares.move(event.from, event.to));
      },
    );
  }

  ListState _listPage() {
    final items = _data.user.value.shares.map(
      (e) {
        return AvailableShare(
          e.id,
          _data.shares.has(e.id) ? _data.shares.meta(e.id) : e.name,
          _data.shares.has(e.id),
          _data.shares.dirty().contains(e.id),
          _data.shares.getting().contains(e.id)
              ? true
              : _data.shares.open(e.id)
                  ? _data.shares.get(e.id).item.sending()
                  : false,
        );
      },
    ).toList();

    return ListState.list(items);
  }

  @override
  Future<void> close() {
    //_sharesSubscription?.cancel();
    _userSubscription?.cancel();
    return super.close();
  }
}
