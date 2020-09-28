import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:protod/pserver/pserver.dart';

part 'view_bloc.freezed.dart';

@freezed
abstract class ViewState with _$ViewState {
  const factory ViewState.loading() = ViewStateLoading;

  const factory ViewState.done(String id, String name) = ViewStateDone;
}

class ViewCubit extends Cubit<ViewState> {
  final String _id;
  final Data _data;
  StreamSubscription<DataEvent<Share>> _subscription;

  ViewCubit(this._id, this._data) : super(ViewState.loading());

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
    emit(ViewState.loading());
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

  ViewState _shareState(Item<Share> item) {
    return ViewState.done(item.id, item.value.name);
  }

  Future<void> refresh() async {
    await _data.shares.refresh(_id);
  }
}
