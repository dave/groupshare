import 'package:api_repository/api_repository.dart';
import 'package:connection_repository/connection_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bloc.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  const factory ListState(
    PageState page,
    SharesState shares,
    bool connected,
  ) = _ListState;
}

@freezed
abstract class PageState with _$PageState {
  const factory PageState.offline() = PageStateOffline;
  const factory PageState.loading() = PageStateLoading;
  const factory PageState.list() = PageStateList;
  const factory PageState.error(dynamic error) = PageStateError;
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
  final Connection _conn;

  ListCubit(Data data, Api api, Connection conn)
      : _data = data,
        _api = api,
        _conn = conn,
        super(ListState(
          PageState.loading(),
          SharesState(items: []),
          true,
        ));

  Future<void> initConn() async {
    // start watching connection state if Connection is supplied
    if (_conn != null) {
      _conn.changed.listen((bool connected) {
        emit(state.copyWith(connected: connected));
      });
      emit(state.copyWith(connected: await _conn.check()));
    }
  }

  Future<void> deleteItem(String id) async {
    final i = _data.user.value.shares.indexWhere((s) => s.id == id);
    if (i == -1) {
      return;
    }
    _data.shares.deleteLocal(id);
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

    final item = await _data.shares.refresh(id);
    final name = item.value.name;
    final shares = _data.user.value.shares;
    final index = shares.indexWhere((s) => s.id == id);
    if (index > -1 && shares[index].name != name) {
      _data.user.op(op.user.shares.index(index).name.set(name));
    }

    emit(
      state.copyWith(
        page: PageState.list(),
        shares: state.shares.copyWith(
          items: stateItems(_data.user.value.shares),
          refreshing: {}..addAll(state.shares.refreshing)..addAll({id: false}),
        ),
      ),
    );
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

  Future<void> refreshList() async {
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
    if (!_api.online()) {
      return;
    }
    emit(
      state.copyWith(
        shares: state.shares.copyWith(
          refreshing: {}..addAll(state.shares.refreshing)..addAll({id: true}),
        ),
      ),
    );
    await _data.shares.refresh(id);
    emit(
      state.copyWith(
        shares: state.shares.copyWith(
          items: stateItems(_data.user.value.shares),
          refreshing: {}..addAll(state.shares.refreshing)..addAll({id: false}),
        ),
      ),
    );
  }

  Future<void> initList() async {
    // TODO: remove when https://github.com/felangel/bloc/issues/1641 is resolved.
    await Future.delayed(Duration(milliseconds: 1));

    emit(
      state.copyWith(
        page: PageState.list(),
        shares: state.shares.copyWith(
          items: stateItems(_data.user.value.shares),
        ),
      ),
    );

    if (!_api.online()) {
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

//    final response = await _api.send(
//      Share_List_Response(),
//      Share_List_Request(),
//    );
//
//    var ops = <delta.Op>[];
//    response.items.forEach((Share_List_Response_Item item) {
//      final userDataIndex = user.value.shares.indexWhere(
//        (s) => s.id == item.id,
//      );
//      if (userDataIndex > -1) {
//        if (user.value.shares[userDataIndex].name != item.name) {
//          ops.add(
//            Op().User().Shares().Index(userDataIndex).Name().Set(item.name),
//          );
//        }
//      }
//    });
//    if (ops.length > 0) {
//      _data.user.op(compound(ops));
//      emit(
//        state.copyWith(
//          page: PageState.list(),
//          shares: state.shares.copyWith(items: stateItems(user.value.shares)),
//        ),
//      );
//    }
  }

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
