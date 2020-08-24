import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bloc.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  const factory ListState.offline() = ListStateOffline;
  const factory ListState.loading() = ListStateLoading;
  const factory ListState.list({
    List<User_AvailableShare> shares,
  }) = ListStateList;
  const factory ListState.error(
    dynamic error,
  ) = ListStateError;
}

class ListCubit extends Cubit<ListState> {
  final Data _data;
  final Api _api;

  ListCubit(Data data, Api api)
      : _data = data,
        _api = api,
        super(ListState.loading());

  Future<void> initialise() async {
    // TODO: remove when https://github.com/felangel/bloc/issues/1641 is resolved.
    await Future.delayed(Duration(milliseconds: 1));

    await _data.initUser();

    final user = _data.user;

    if (user == null) {
      emit(ListState.offline());
      return;
    }

    emit(ListState.list(shares: user.value.shares));

    if (!_api.online()) {
      return;
    }

    await user.send();

    emit(ListState.list(shares: user.value.shares));

//    response.items.forEach((Share_List_Response_Item item) {
//      final i = shares.indexWhere((s) => s.id == item.id);
//      if (i == -1) {
//        // There is an item in the server response that isn't in the user
//        // cache. Add to the cache.
//        data.user.op(Op().User().Shares().Insert(
//              shares.length,
//              User_AvailableShare()
//                ..id = item.id
//                ..name = item.name,
//            ));
//      } else {
//        // shares found in the list response have their new flag reset
//        if (shares[i].new_3) {
//          data.user.op(Op().User().Shares().Index(i).New().Set(false));
//        }
//      }
//    });
//    for (var i = shares.length - 1; i >= 0; i--) {
//      // We have to iterate through in reverse when deleting items so as not to
//      // shift the index when items are deleted
//      final item = shares[i];
//      if (!item.new_3 && !response.items.any((s) => s.id == item.id)) {
//        // There is an item in the user cache that isn't in the server
//        // response. Delete from the cache, but only if new flag is not set.
//        data.user.op(Op().User().Shares().Index(i).Delete());
//      }
//    }
  }
}