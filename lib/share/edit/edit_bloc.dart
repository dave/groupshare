import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
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
  const factory PageState.loading() = PageStateLoading;

  const factory PageState.form() = PageStateForm;

  const factory PageState.done(String route) = PageStateDone;
}

class EditCubit extends Cubit<EditState> {
  final Data _data;
  final String _id;
  final String _back;

  EditCubit(this._id, this._back, this._data)
      : super(EditState(PageState.loading(), FormState()));

  Future<void> init() async {
    final share = await _data.shares.item(_id);
    if (share == null) {
      throw UserException("Can't find document");
    }
    final value = Name.dirty(share.value.name);
    emit(state.copyWith(
      page: PageState.form(),
      form: FormState(
        initialName: share.value.name,
        name: value,
        status: Formz.validate([value]),
      ),
    ));
  }

  void nameChanged(String name) {
    final value = Name.dirty(name);
    emit(state.copyWith(
      form: state.form.copyWith(
        name: value,
        status: Formz.validate([value]),
      ),
    ));
  }

  Future<void> submit() async {
    try {
      if (state.form.initialName == state.form.name.value) {
        emit(state.copyWith(page: PageState.done(_back)));
        return;
      }

      emit(state.copyWith(
        form: state.form.copyWith(
          status: FormzStatus.submissionInProgress,
        ),
      ));

      final share = await _data.shares.item(_id);

      share.op(
        op.share.name.edit(state.form.initialName, state.form.name.value),
      );

      final userDataIndex = _data.user.value.shares.indexWhere(
        (s) => s.id == _id,
      );
      if (userDataIndex > -1) {
        _data.user.op(
          op.user.shares.index(userDataIndex).name.set(state.form.name.value),
        );
      }

      emit(
        state.copyWith(
          page: PageState.done(_back),
        ),
      );
    } finally {
      // reset submissionInProgress status
      emit(state.copyWith(
        form: state.form.copyWith(
          status: Formz.validate([state.form.name]),
        ),
      ));
    }
  }
}
