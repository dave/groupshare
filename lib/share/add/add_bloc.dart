import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/share/add/add.dart';

part 'add_bloc.freezed.dart';

@freezed
abstract class AddState with _$AddState {
  const factory AddState(
    PageState page,
    FormState form,
  ) = _AddState;
}

@freezed
abstract class PageState with _$PageState {
  const factory PageState.form() = PageStateForm;

  const factory PageState.done() = PageStateDone;
}

@freezed
abstract class FormState with _$FormState {
  const factory FormState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Name.pure()) Name name,
  }) = _FormState;
}

class AddCubit extends Cubit<AddState> {
  final Data _data;

  AddCubit(Data data)
      : _data = data,
        super(AddState(PageState.form(), FormState()));

  void nameChanged(String name) {
    final value = Name.dirty(name);
    emit(state.copyWith(
      form: state.form.copyWith(name: value, status: Formz.validate([value])),
    ));
  }

  Future<void> submit() async {
    try {
      emit(state.copyWith(
        form: state.form.copyWith(status: FormzStatus.submissionInProgress),
      ));
      final id = _data.shares.randomUnique();
      _data.shares.add(id, Share()..name = state.form.name.value);
      _data.user.op(
        op.user.shares.insert(
          0,
          User_AvailableShare()
            ..id = id
            ..name = state.form.name.value,
        ),
      );
      emit(state.copyWith(page: PageState.done()));
    } finally {
      // reset submissionInProgress status
      emit(state.copyWith(
        form: state.form.copyWith(status: Formz.validate([state.form.name])),
      ));
    }
  }
}
