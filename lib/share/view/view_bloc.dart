import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:protod/pserver/pserver.dart';

part 'view_bloc.freezed.dart';

@freezed
abstract class ViewState with _$ViewState {
  const factory ViewState.initial(String id) = ViewStateInitial;

  const factory ViewState.loading(String id) = ViewStateLoading;

  const factory ViewState.offline(String id) = ViewStateOffline;

  const factory ViewState.error(
    String id,
    dynamic error,
    StackTrace stack,
  ) = ViewStateError;

  const factory ViewState.done(String id, String name) = ViewStateDone;
}

class ViewCubit extends Cubit<ViewState> {
  final Data _data;
  final Api _api;
  final String _id;

  ViewCubit(this._data, this._api, this._id) : super(ViewState.initial(_id));

  Future<void> init() async {
    _shareSubscription = _data.shares.stream.listen(
      (DataEvent<Share> event) async {
        if (event.id != _id) {
          return;
        }
        if (event is DataEventApply) {
          emitShare((event as DataEventApply).item);
          return;
        }
        if (event is DataEventGot) {
          emitShare((event as DataEventGot).item);
          return;
        }
      },
    );
    await initPage();
  }

  StreamSubscription<DataEvent<Share>> _shareSubscription;

  @override
  Future<void> close() {
    _shareSubscription?.cancel();
    return super.close();
  }

  Future<void> initPage() async {
    final resp = _data.shares.get(_id);
    try {
      if (resp.item == null) {
        if (resp.future == null) {
          emit(ViewState.offline(_id));
        } else {
          emit(ViewState.loading(_id));
          await resp.future;
        }
      } else {
        emitShare(resp.item);
      }
    } catch (ex, stack) {
      emit(ViewState.error(_id, ex, stack));
    }
  }

  void emitShare(Item<Share> item) {
    emit(ViewState.done(item.id, item.value.name));
  }

  Future<void> refresh() async {
    await _data.shares.refresh(_id);
  }
}
