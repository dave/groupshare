import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/_foo/foo.dart';
import 'package:groupshare/observer.dart';

part 'foo_bloc.freezed.dart';

@freezed
abstract class FooState with _$FooState {
  @Implements(Incomplete)
  const factory FooState.loading() = FooStateLoading;

  @Implements(Complete)
  const factory FooState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Name.pure()) Name name,
  }) = FooStateForm;

  const factory FooState.done() = FooStateDone;
}

class FooCubit extends Cubit<FooState> {
  final Data _data;

  FooCubit(this._data)
      : super(FooState.loading());

  Future<void> init() async {
    //...
  }

  void nameChanged(String name) {
    final nameValue = Name.dirty(name);
    emit(state.copyWith(
      form: FormState(
        name: nameValue,
        status: Formz.validate([nameValue]),
      ),
    ));
  }

  Future<void> submit() async {
    try {
      emit(state.copyWith(
        form: state.form.copyWith(status: FormzStatus.submissionInProgress),
      ));
      // ...
      emit(state.copyWith(page: PageState.done()));
    } finally {
      // reset submissionInProgress status
      emit(state.copyWith(
        form: state.form.copyWith(status: Formz.validate([state.form.name])),
      ));
    }
  }
}
