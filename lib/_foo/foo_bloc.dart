import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/_foo/foo.dart';

part 'foo_bloc.freezed.dart';

@freezed
abstract class FooState with _$FooState {
  const factory FooState({
    PageState page,
    FormState form,
  }) = _FooState;
}

@freezed
abstract class FormState with _$FormState {
  const factory FormState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Name.pure()) Name name,
  }) = _FormState;
}

@freezed
abstract class PageState with _$PageState {
  const factory PageState.initial() = PageStateInitial;

  const factory PageState.form() = PageStateForm;

  const factory PageState.error(
    dynamic error,
    StackTrace stack,
    FooState retry,
  ) = PageStateError;

  const factory PageState.done() = PageStateDone;
}

class FooCubit extends Cubit<FooState> {
  final Data _data;

  FooCubit(this._data)
      : super(FooState(page: PageState.initial(), form: FormState()));

  void nameChanged(String name) {
    final nameValue = Name.dirty(name);
    emit(state.copyWith(form: FormState(
      name: nameValue,
      status: Formz.validate([nameValue]),
    )));
  }

  Future<void> submit() async {
    try {
      emit(state.copyWith(form: state.form.copyWith(status: FormzStatus.submissionInProgress)));
      // ...
      emit(state.copyWith(page: PageState.done()));
    } catch (ex, stack) {
      emit(state.copyWith(page: PageState.error(ex, stack, state)));
    }
  }

  void retry(FooState retry) {
    emit(retry);
  }
}
