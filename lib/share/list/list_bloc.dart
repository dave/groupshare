import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/pb/messages/share.pb.dart';
import 'package:protod/delta/delta.dart';
import 'package:protod/delta/delta.pb.dart' as delta;

part 'list_bloc.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  const factory ListState(PageState page, [SharesState shares]) = _ListState;
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
  const factory AvailableShare(String id, String name) = _AvailableShare;
}

class ListCubit extends Cubit<ListState> {
  final Data _data;
  final Api _api;

  ListCubit(Data data, Api api)
      : _data = data,
        _api = api,
        super(ListState(PageState.loading(), SharesState(items: [])));

  Future<void> refresh(String id) async {
    emit(
      state.copyWith(
        page: PageState.list(),
        shares: state.shares.copyWith(
          refreshing: {}..addAll(state.shares.refreshing)..addAll({id: true}),
        ),
      ),
    );

    await _data.initUser();

    final user = _data.user;

    final response = _data.shares.get(id);
    if (response.future != null) {
      // item has an uncommitted change... once that is complete, item will be refreshed.
      await response.future;
    } else {
      // item didn't have any uncommitted changes, so we trigger a refresh:
      await response.item.send();
    }

    emit(
      state.copyWith(
        page: PageState.list(),
        shares: state.shares.copyWith(
          items: stateItems(user.value.shares),
          refreshing: {}..addAll(state.shares.refreshing)..addAll({id: false}),
        ),
      ),
    );
  }

  Future<void> initialise() async {
    // TODO: remove when https://github.com/felangel/bloc/issues/1641 is resolved.
    await Future.delayed(Duration(milliseconds: 1));

    await _data.initUser();

    final user = _data.user;

    if (user == null) {
      emit(state.copyWith(page: PageState.offline()));
      return;
    }

    emit(
      state.copyWith(
        page: PageState.list(),
        shares: state.shares.copyWith(items: stateItems(user.value.shares)),
      ),
    );

    if (!_api.online()) {
      return;
    }

    await user.send();

    emit(
      state.copyWith(
        page: PageState.list(),
        shares: state.shares.copyWith(items: stateItems(user.value.shares)),
      ),
    );

    final response = await _api.send(
      Share_List_Response(),
      Share_List_Request(),
    );

    var ops = <delta.Op>[];
    response.items.forEach((Share_List_Response_Item item) {
      final userDataIndex = user.value.shares.indexWhere(
        (s) => s.id == item.id,
      );
      if (userDataIndex > -1) {
        if (user.value.shares[userDataIndex].name != item.name) {
          ops.add(
            Op().User().Shares().Index(userDataIndex).Name().Set(item.name),
          );
        }
      }
    });
    if (ops.length > 0) {
      _data.user.op(compound(ops));
      emit(
        state.copyWith(
          page: PageState.list(),
          shares: state.shares.copyWith(items: stateItems(user.value.shares)),
        ),
      );
    }
  }

  List<AvailableShare> stateItems(List<User_AvailableShare> shares) {
    return shares.map((e) => AvailableShare(e.id, e.name)).toList();
  }
}
