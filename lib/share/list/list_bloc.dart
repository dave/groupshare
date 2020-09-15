import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bloc.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  const factory ListState(
    PageState page,
    SharesState shares,
  ) = _ListState;
}

@freezed
abstract class PageState with _$PageState {
  const factory PageState.offline() = PageStateOffline;
  const factory PageState.loading() = PageStateLoading;
  const factory PageState.list() = PageStateList;
  const factory PageState.error(
    dynamic error,
    StackTrace stack,
  ) = PageStateError;
}

@freezed
abstract class SharesState with _$SharesState {
  const factory SharesState({
    @required List<AvailableShare> items,
    @Default({}) Map<String, bool> refreshing,
  }) = _SharesState;
}

@freezed
abstract class AvailableShare with _$AvailableShare {
  const factory AvailableShare(
    String id,
    String name,
    bool local,
  ) = _AvailableShare;
}

class ListCubit extends Cubit<ListState> {
  final Data _data;
  final Api _api;

  ListCubit(Data data, Api api)
      : _data = data,
        _api = api,
        super(ListState(
          PageState.loading(),
          SharesState(items: []),
        ));

  Future<void> init() async {
    emit(
      state.copyWith(
        page: PageState.loading(),
      ),
    );
    _api.registerBackgroundTask(initList(true), "list init");
  }

  void deleteItem(String id) {
    final i = _data.user.value.shares.indexWhere((s) => s.id == id);
    if (i == -1) {
      return;
    }
    _data.shares.delete(id);
    // TODO: delete from user, delete share?
    //_data.user.op(Op().User().Shares().Index(i).Delete());
    emit(
      state.copyWith(
        shares: state.shares.copyWith(
          items: stateItems(_data.user.value.shares),
        ),
      ),
    );
  }

  Future<void> refreshItem(String id) async {
    emit(
      state.copyWith(
        page: PageState.list(),
        shares: state.shares.copyWith(
          refreshing: {}..addAll(state.shares.refreshing)..addAll({id: true}),
        ),
      ),
    );

    try {
      final item = await _data.shares.refresh(id);
      final name = item.value.name;
      final shares = _data.user.value.shares;
      final index = shares.indexWhere((s) => s.id == id);
      if (index > -1 && shares[index].name != name) {
        _data.user.op(
          op.user.shares.index(index).name.set(name),
        );
      }
    } finally {
      emit(
        state.copyWith(
          page: PageState.list(),
          shares: state.shares.copyWith(
            items: stateItems(_data.user.value.shares),
            refreshing: {}
              ..addAll(state.shares.refreshing)
              ..addAll({id: false}),
          ),
        ),
      );
    }
  }

  Future<void> reorder(oldIndex, newIndex) async {
    _data.user.op(
      op.user.shares.move(oldIndex, newIndex),
    );

    emit(
      state.copyWith(
        shares: state.shares.copyWith(
          items: stateItems(_data.user.value.shares),
        ),
      ),
    );
  }

  Future<void> refreshAllItems() async {
    await _data.user.send();

    List<Future> futures = [];
    _data.user.value.shares.forEach((userShare) {
      if (_data.shares.has(userShare.id)) {
        futures.add(refreshItem(userShare.id));
      }
    });
    await Future.wait(futures);

    emit(
      state.copyWith(
        shares: state.shares.copyWith(
          items: stateItems(_data.user.value.shares),
        ),
      ),
    );
  }

  Future<void> initItem(String id) async {
    emit(
      state.copyWith(
        shares: state.shares.copyWith(
          refreshing: {}..addAll(state.shares.refreshing)..addAll({id: true}),
        ),
      ),
    );
    try {
      await _data.shares.refresh(id);
    } finally {
      emit(
        state.copyWith(
          shares: state.shares.copyWith(
            items: stateItems(_data.user.value.shares),
            refreshing: {}
              ..addAll(state.shares.refreshing)
              ..addAll({id: false}),
          ),
        ),
      );
    }
  }

  Future<void> initList(bool update) async {
    // TODO: remove when https://github.com/felangel/bloc/issues/1641 is resolved.
    //await Future.delayed(Duration(milliseconds: 1000));

    if (_data.user == null) {
      emit(
        state.copyWith(
          page: PageState.error(UserException("Offline?"), null),
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        page: PageState.list(),
        shares: state.shares.copyWith(
          items: stateItems(_data.user.value.shares),
        ),
      ),
    );

    if (!update || _api.offline()) {
      return;
    }

    await _data.user.send();

    emit(
      state.copyWith(
        page: PageState.list(),
        shares: state.shares.copyWith(
          items: stateItems(_data.user.value.shares),
        ),
      ),
    );
  }

  // @override
  // void emit(ListState state) {
  //   print("emit: $state");
  //   super.emit(state);
  // }

  List<AvailableShare> stateItems(List<User_AvailableShare> shares) {
    return shares
        .map((e) => AvailableShare(
              e.id,
              e.name,
              _data.shares.has(e.id),
            ))
        .toList();
  }
}
