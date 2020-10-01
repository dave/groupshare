import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:protod/pserver/pserver.dart';

part 'list_bloc.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  const factory ListState({
    @required PageState page,
    @required List<AvailableShare> items,
  }) = _ListState;
}

@freezed
abstract class PageState with _$PageState {
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

class ListCubit extends Cubit<ListState> {
  final Data _data;
  final Api _api;
  StreamSubscription<DataEvent<Share>> _sharesSubscription;
  StreamSubscription<DataEvent<User>> _userSubscription;

  ListCubit(Data data, Api api)
      : _data = data,
        _api = api,
        super(ListState(
          page: PageState.loading(),
          items: [],
        ));

  Future<void> setup() async {
    if (_sharesSubscription == null) {
      _sharesSubscription = _data.shares.stream.listen((DataEvent<Share> event) {
        if (event is DataEventApply ||
            event is DataEventGetting ||
            event is DataEventGetFailed ||
            event is DataEventGot ||
            event is DataEventSending ||
            event is DataEventSent ||
            event is DataEventDeleted) {
          emit(_listPage());
        }
      });
    }
    if (_userSubscription == null) {
      _userSubscription = _data.user.stream.listen((DataEvent<User> event) {
        if (event is DataEventApply) {
          emit(_listPage());
        }
      });
    }
    await init();
  }

  Future<void> init() async {
    if (_data.user == null) {
      throw UserException("Offline");
    }

    emit(_listPage());

    if (_api.offline()) {
      return;
    }

    await _data.user.send();
  }

  @override
  Future<void> close() {
    _sharesSubscription?.cancel();
    _userSubscription?.cancel();
    return super.close();
  }

  void deleteItem(String id) {
    // final i = _data.user.value.shares.indexWhere((s) => s.id == id);
    // if (i == -1) {
    //   return;
    // }
    //_data.user.op(Op().User().Shares().Index(i).Delete());
    _data.shares.delete(id);
  }

  Future<void> refreshItem(String id) async {
    final item = await _data.shares.refresh(id);
    final name = item.value.name;
    final shares = _data.user.value.shares;
    final index = shares.indexWhere((s) => s.id == id);
    if (index > -1 && shares[index].name != name) {
      _data.user.op(
        op.user.shares.index(index).name.set(name),
      );
    }
  }

  Future<void> reorder(oldIndex, newIndex) async {
    _data.user.op(op.user.shares.move(oldIndex, newIndex));
  }

  Future<void> refreshAllItems() async {
    await _data.user.refresh();
    emit(_listPage());
    List<Future> futures = [];
    _data.user.value.shares.forEach((userShare) {
      if (_data.shares.has(userShare.id)) {
        futures.add(refreshItem(userShare.id));
      }
    });
    await Future.wait(futures);
  }

  Future<void> initItem(String id) async {
    await _data.shares.refresh(id);
  }

  // @override
  // void emit(ListState state) {
  //   print("emit: $state");
  //   super.emit(state);
  // }

  ListState _listPage() {
    final items = _data.user.value.shares
        .map(
          (e) => AvailableShare(
            e.id,
            _data.shares.has(e.id) ? _data.shares.meta(e.id) : e.name,
            _data.shares.has(e.id),
            _data.shares.dirty().contains(e.id),
            _data.shares.getting().contains(e.id)
                ? true
                : _data.shares.open(e.id)
                    ? _data.shares.get(e.id).item.sending()
                    : false,
          ),
        )
        .toList();

    return state.copyWith(
      page: PageState.list(),
      items: items,
    );
  }
}
