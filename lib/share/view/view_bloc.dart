import 'dart:async';

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
    ViewState retryState,
  ) = ViewStateError;

  const factory ViewState.done(String id, String name) = ViewStateDone;
}

class ViewCubit extends Cubit<ViewState> {
  final String _id;
  final Data _data;

  ViewCubit(String id, Data data)
      : _id = id,
        _data = data,
        super(ViewState.initial(id));

  Item<Share> get _share {
    final resp = _data.shares.get(state.id);

    if (resp.future != null) {
      // TODO: is this a loop?
      resp.future.then((value) => initialise());
    }

    if (resp.item != null) {
      return resp.item;
    }

    // item is null
    if (resp.future == null) {
      // TODO: automatically trigger init() when we come back online?
      emit(ViewState.offline(state.id));
    } else {
      emit(ViewState.loading(state.id));
    }
    return null;
  }

  Future<void> initialise() async {
    final share = _share;
    if (share == null) {
      // _share will emit the correct state.
      return;
    }
    emit(ViewState.done(state.id, share.value.name));
  }

  Future<void> refresh() async {
    final response = _data.shares.get(state.id);
    if (response.future != null) {
      // item has an uncommitted change... once that is complete, item will be refreshed.
      await response.future;
    } else {
      // item didn't have any uncommitted changes, so we trigger a refresh:
      await response.item.send();
    }

    emit(ViewState.done(state.id, response.item.value.name));
  }

  void retry(ViewState retryState) {
    emit(retryState);
  }
}
