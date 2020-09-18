import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:protod/pserver/pserver.dart';

part 'view_bloc.freezed.dart';

@freezed
abstract class ViewState with _$ViewState {
  const factory ViewState(
    String id,
    PageState page,
  ) = _ViewState;
}

@freezed
abstract class PageState with _$PageState {
  const factory PageState.initial() = PageStateInitial;
  const factory PageState.loading() = PageStateLoading;
  const factory PageState.offline() = PageStateOffline;

  const factory PageState.error(
    dynamic error,
    StackTrace stack,
  ) = PageStateError;

  const factory PageState.done(String name) = PageStateDone;
}

class ViewCubit extends Cubit<ViewState> {
  final Data _data;

  ViewCubit(String id, Data data)
      : _data = data,
        super(ViewState(id, PageState.initial()));

  void init() {
    final resp = _data.shares.get(state.id);

    if (resp.future != null) {
      resp.future.then((item) {
        if (item != null) {
          initWithShare(item);
        }
      }).catchError((ex, stack) {
        if (resp.item == null) {
          emit(state.copyWith(page: PageState.error(ex, stack)));
        }
      });
    }

    if (resp.item != null) {
      initWithShare(resp.item);
    } else {
      if (resp.future == null) {
        // TODO: automatically trigger init() when we come back online?
        emit(state.copyWith(page: PageState.offline()));
      } else {
        emit(state.copyWith(page: PageState.loading()));
      }
    }
  }

  initWithShare(Item<Share> item) {
    emit(state.copyWith(page: PageState.done(item.value.name)));
  }

  Future<void> refresh() async {
    await _data.user.refresh();
    final item = await _data.shares.refresh(state.id);
    if (item != null) {
      initWithShare(item);
    }
  }
}
