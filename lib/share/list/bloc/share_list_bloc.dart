import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_list_bloc.freezed.dart';

@freezed
abstract class ShareListState with _$ShareListState {
  const factory ShareListState.offline() = ShareListStateOffline;
  const factory ShareListState.loading() = ShareListStateLoading;
  const factory ShareListState.list({
    List<User_AvailableShare> shares,
  }) = ShareListStateList;
  const factory ShareListState.error({
    Exception error,
  }) = ShareListStateError;
}

class ShareListCubit extends Cubit<ShareListState> {
  final Data _data;
  final Api _api;

  ShareListCubit(Data data, Api api)
      : _data = data,
        _api = api,
        super(ShareListState.loading()) {
    initialise();
  }

  Future<void> initialise() async {
    final user = await _data.user;

    if (user == null) {
      emit(ShareListState.offline());
      return;
    }

    emit(ShareListState.list(shares: user.value.shares));

    if (!_api.online()) {
      return;
    }

    await user.send();

    emit(ShareListState.list(shares: user.value.shares));
  }
}
