import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/share/delete/delete.dart';

part 'delete_bloc.freezed.dart';

@freezed
abstract class DeleteState with _$DeleteState {
  const factory DeleteState.initial() = DeleteStateInitial;

  const factory DeleteState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Name.pure()) Name name,
  }) = DeleteStateForm;

  const factory DeleteState.error(
    dynamic error,
    StackTrace stack,
    DeleteState retryState,
  ) = DeleteStateError;

  const factory DeleteState.done() = DeleteStateDone;
}

class DeleteCubit extends Cubit<DeleteState> {
  final Data _data;

  DeleteCubit(Data data)
      : _data = data,
        super(DeleteState.initial());

  void nameChanged(String name) {
    final nameValue = Name.dirty(name);
    emit(DeleteState.form(
      name: nameValue,
      status: Formz.validate([nameValue]),
    ));
  }

  Future<void> submit() async {
    final stateForm = state as DeleteStateForm;
    try {
      emit(stateForm.copyWith(status: FormzStatus.submissionInProgress));
      // ...
      emit(DeleteState.done());
    } catch (ex, stack) {
      emit(DeleteState.error(ex, stack, stateForm));
    }
  }

  void retry(DeleteState retryState) {
    emit(retryState);
  }
}
