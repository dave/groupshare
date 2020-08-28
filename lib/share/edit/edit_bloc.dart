import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:protod/pserver/pserver.dart';

part 'edit_bloc.freezed.dart';

@freezed
abstract class EditState with _$EditState {
  const factory EditState(
    String id,
    String popRoute,
    PageState page,
  ) = _EditState;
}

@freezed
abstract class PageState with _$PageState {
  const factory PageState.initial() = PageStateInitial;
  const factory PageState.offline() = PageStateOffline;
  const factory PageState.loading() = PageStateLoading;
  const factory PageState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default("") String initialName,
    @Default(const Name.pure()) Name name,
  }) = PageStateForm;
  const factory PageState.error(
    dynamic error,
    PageState retryState,
  ) = PageStateError;
  const factory PageState.done() = PageStateDone;
}

class EditCubit extends Cubit<EditState> {
  final Data _data;

  EditCubit(String id, String pop, Data data)
      : _data = data,
        super(EditState(id, pop, PageState.initial()));

  Item<Share> get _share {
    final resp = _data.shares.get(state.id);

    if (resp.future != null) {
      // TODO: is this a loop?
      resp.future.then((value) => init());
    }

    if (resp.item != null) {
      return resp.item;
    }

    // item is null
    if (resp.future == null) {
      // TODO: automatically trigger init() when we come back online?
      emit(state.copyWith(page: PageState.offline()));
    } else {
      emit(state.copyWith(page: PageState.loading()));
    }
    return null;
  }

  void init() {
    final share = _share;
    if (share == null) {
      // _share will emit the correct state.
      return;
    }
    final nameValue = Name.dirty(share.value.name);
    emit(
      state.copyWith(
        page: PageState.form(
          initialName: share.value.name,
          name: nameValue,
          status: Formz.validate([nameValue]),
        ),
      ),
    );
  }

  void nameChanged(String name) {
    final pageForm = state.page as PageStateForm;
    final nameValue = Name.dirty(name);
    emit(
      state.copyWith(
        page: pageForm.copyWith(
          name: nameValue,
          status: Formz.validate([nameValue]),
        ),
      ),
    );
  }

  Future<void> submit() async {
    final pageForm = state.page as PageStateForm;
    try {
      if (pageForm.initialName == pageForm.name.value) {
        emit(state.copyWith(page: PageState.done()));
        return;
      }
      emit(
        state.copyWith(
          page: pageForm.copyWith(
            status: FormzStatus.submissionInProgress,
          ),
        ),
      );

      _share.op(
        Op().Share().Name().Edit(pageForm.initialName, pageForm.name.value),
      );

      final userDataIndex = _data.user.value.shares.indexWhere(
        (s) => s.id == state.id,
      );
      if (userDataIndex > -1) {
        _data.user.op(
          Op()
              .User()
              .Shares()
              .Index(userDataIndex)
              .Name()
              .Set(pageForm.name.value),
        );
      }

      emit(
        state.copyWith(
          page: PageState.done(),
        ),
      );
    } catch (ex) {
      emit(
        state.copyWith(
          page: PageState.error(ex, pageForm),
        ),
      );
    }
  }

  void retry(PageState retryState) {
    emit(state.copyWith(page: retryState));
  }
}
