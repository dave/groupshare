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
  const factory ListState.offline() = ListStateOffline;
  const factory ListState.loading() = ListStateLoading;
  const factory ListState.list({
    List<AvailableShare> shares,
  }) = ListStateList;
  const factory ListState.error(
    dynamic error,
  ) = ListStateError;
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

    emit(ListState.list(shares: stateShares(user.value.shares)));

    if (!_api.online()) {
      return;
    }

    await user.send();

    emit(ListState.list(shares: stateShares(user.value.shares)));

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
      emit(ListState.list(shares: stateShares(user.value.shares)));
    }
  }

  List<AvailableShare> stateShares(List<User_AvailableShare> shares) {
    return shares.map((e) => AvailableShare(e.id, e.name)).toList();
  }
}
