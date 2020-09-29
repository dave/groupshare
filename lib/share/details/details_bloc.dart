import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:protod/pserver/pserver.dart';

part 'details_bloc.freezed.dart';

@freezed
abstract class DetailsState with _$DetailsState {
  const factory DetailsState.loading() = DetailsStateLoading;

  const factory DetailsState.done(String id, String name) = DetailsStateDone;
}

class DetailsCubit extends Cubit<DetailsState> {
  final String _id;
  final Data _data;
  StreamSubscription<DataEvent<Share>> _subscription;

  DetailsCubit(this._id, this._data) : super(DetailsState.loading());

  Future<void> setup() async {
    if (_subscription == null) {
      _subscription = _data.shares.stream.listen(
        (DataEvent<Share> event) async {
          if (event.id != _id) {
            return;
          }
          if (event is DataEventApply<Share>) {
            emit(_shareState(event.item));
            return;
          }
          if (event is DataEventGot<Share>) {
            emit(_shareState(event.item));
            return;
          }
        },
      );
    }
    await init();
  }

  Future<void> init() async {
    emit(DetailsState.loading());
    final item = await _data.shares.item(_id);
    if (item == null) {
      throw UserException("Can't find document");
    }
    emit(_shareState(item));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  DetailsState _shareState(Item<Share> item) {
    return DetailsState.done(item.id, item.value.name);
  }

  Future<void> refresh() async {
    await _data.shares.refresh(_id);
  }
}
