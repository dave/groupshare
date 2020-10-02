import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/main.dart';
import 'package:protod/pserver/pserver.dart';
import 'package:rxdart/rxdart.dart';

part 'list_bloc.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  @Implements(PageHolder)
  @Implements(ActionHolder)
  const factory ListState({
    @required PageState page,
    @required List<AvailableShare> items,
    ListAction action,
  }) = _ListState;
}

@freezed
abstract class ListAction with _$ListAction {
  const factory ListAction.refreshComplete() = ListActionRefreshComplete;
}

@freezed
abstract class PageState with _$PageState {
  @Implements(PageIncomplete)
  const factory PageState.loading() = PageStateLoading;

  const factory PageState.list() = PageStateList;
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
  StreamSubscription<DataEvent<Share>> _sharesSubscription;
  StreamSubscription<DataEvent<User>> _userSubscription;

  ListBloc(this._data, this._api)
      : super(ListState(page: PageState.loading(), items: [])) {
    _sharesSubscription = _data.shares.stream.listen((DataEvent<Share> event) {
      print("_shares $event");
      if (event is DataEventApply ||
          event is DataEventGetting ||
          event is DataEventGetFailed ||
          event is DataEventGot ||
          event is DataEventSending ||
          event is DataEventSent ||
          event is DataEventDeleted) {
        add(ListEvent.update());
      }
    });
    _userSubscription = _data.user.stream.listen((DataEvent<User> event) {
      print("_user $event");
      if (event is DataEventApply) {
        add(ListEvent.update());
      }
    });
    add(ListEvent.init());
  }

  // @override
  // Stream<Transition<ListEvent, ListState>> transformEvents(
  //     Stream<ListEvent> events, transitionFn) {
  //   return events.flatMap(transitionFn);
  // }

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
        await _data.user.refresh();
        yield _listPage();
        List<Future> futures = [];
        _data.user.value.shares.forEach((User_AvailableShare userShare) {
          if (_data.shares.has(userShare.id)) {
            futures.add(_data.shares.refresh(userShare.id));
          }
        });
        await Future.wait(futures);
        yield _listPage().copyWith(action: ListAction.refreshComplete());
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

    return state.copyWith(
      page: PageState.list(),
      items: items,
      action: null,
    );
  }

  @override
  Future<void> close() {
    _sharesSubscription?.cancel();
    _userSubscription?.cancel();
    return super.close();
  }
}
