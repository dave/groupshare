import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/_foo/foo.dart';

part 'foo_bloc.freezed.dart';

@freezed
abstract class FooState with _$FooState {
  const factory FooState.initial() = FooStateInitial;

  const factory FooState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Name.pure()) Name name,
  }) = FooStateForm;

  const factory FooState.error(
    dynamic error,
    StackTrace stack,
    FooState retryState,
  ) = FooStateError;

  const factory FooState.done() = FooStateDone;
}

class FooCubit extends Cubit<FooState> {
  final Data _data;

  FooCubit(Data data)
      : _data = data,
        super(FooState.initial());

  void nameChanged(String name) {
    final nameValue = Name.dirty(name);
    emit(FooState.form(
      name: nameValue,
      status: Formz.validate([nameValue]),
    ));
  }

  Future<void> submit() async {
    final stateForm = state as FooStateForm;
    try {
      emit(stateForm.copyWith(status: FormzStatus.submissionInProgress));
      // ...
      emit(FooState.done());
    } catch (ex, stack) {
      emit(FooState.error(ex, stack, stateForm));
    }
  }

  void retry(FooState retryState) {
    emit(retryState);
  }
}
