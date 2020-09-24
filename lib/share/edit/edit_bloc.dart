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
    PageState page,
    FormState form,
  ) = _EditState;
}

@freezed
abstract class FormState with _$FormState {
  const factory FormState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default("") String initialName,
    @Default(const Name.pure()) Name name,
  }) = _FormState;
}

@freezed
abstract class PageState with _$PageState {
  const factory PageState.initial() = PageStateInitial;

  const factory PageState.offline() = PageStateOffline;

  const factory PageState.loading() = PageStateLoading;

  const factory PageState.form() = PageStateForm;

  const factory PageState.error(
    dynamic error,
    StackTrace stack,
    EditState retryState,
  ) = PageStateError;

  const factory PageState.done(String route) = PageStateDone;
}

class EditCubit extends Cubit<EditState> {
  final Data data;
  final String id;
  final String back;

  EditCubit(this.id, this.back, this.data)
      : super(
          EditState(
            PageState.initial(),
            FormState(),
          ),
        );

  void init() async {
    emit(state.copyWith(page: PageState.loading()));
    final share = await data.shares.item(id);
    if (share == null) {
      emit(state.copyWith(page: PageState.offline()));
      return;
    }
    final nameValue = Name.dirty(share.value.name);
    emit(
      state.copyWith(
        page: PageState.form(),
        form: FormState(
          initialName: share.value.name,
          name: nameValue,
          status: Formz.validate([nameValue]),
        ),
      ),
    );
  }

  void nameChanged(String name) {
    final nameValue = Name.dirty(name);
    emit(
      state.copyWith(
        form: state.form.copyWith(
          name: nameValue,
          status: Formz.validate([nameValue]),
        ),
      ),
    );
  }

  Future<void> submit() async {
    try {
      if (state.form.initialName == state.form.name.value) {
        emit(state.copyWith(page: PageState.done(back)));
        return;
      }

      emit(
        state.copyWith(
          form: state.form.copyWith(
            status: FormzStatus.submissionInProgress,
          ),
        ),
      );

      final share = await data.shares.item(id);

      share.op(
        op.share.name.edit(state.form.initialName, state.form.name.value),
      );

      final userDataIndex = data.user.value.shares.indexWhere(
        (s) => s.id == id,
      );
      if (userDataIndex > -1) {
        data.user.op(
          op.user.shares.index(userDataIndex).name.set(state.form.name.value),
        );
      }

      emit(
        state.copyWith(
          page: PageState.done(back),
        ),
      );
    } catch (ex, stack) {
      emit(
        state.copyWith(
          page: PageState.error(ex, stack, state),
        ),
      );
    }
  }

  void retry(EditState retryState) {
    emit(retryState);
  }
}
