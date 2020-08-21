import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/_empty/empty.dart';

part 'empty_bloc.freezed.dart';

@freezed
abstract class EmptyState with _$EmptyState {
  const factory EmptyState.initial() = EmptyStateInitial;

  const factory EmptyState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Foo.pure()) Foo foo,
  }) = EmptyStateForm;

  const factory EmptyState.error(
    dynamic error,
  ) = EmptyStateError;

  const factory EmptyState.done() = EmptyStateDone;
}

class EmptyCubit extends Cubit<EmptyState> {
  final Data _data;

  EmptyCubit(Data data)
      : _data = data,
        super(EmptyState.initial());

  void fooChanged(String foo) {
    final fooValue = Foo.dirty(foo);
    emit(EmptyState.form(
      foo: fooValue,
      status: Formz.validate([fooValue]),
    ));
  }

  Future<void> submit() async {
    final stateForm = state as EmptyStateForm;
    try {
      emit(stateForm.copyWith(status: FormzStatus.submissionInProgress));
      // ...
      emit(EmptyState.done());
    } catch (ex) {
      emit(EmptyState.error(ex));
    }
  }
}
