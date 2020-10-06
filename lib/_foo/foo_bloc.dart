import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/_foo/foo.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/observer.dart';

part 'foo_bloc.freezed.dart';

@freezed
abstract class FooState with _$FooState {
  @Implements(Complete)
  const factory FooState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Name.pure()) Name name,
  }) = FooStateForm;

  const factory FooState.done() = FooStateDone;
}

@freezed
abstract class FooEvent with _$FooEvent {
  const factory FooEvent.change(String value) = FooEventChange;

  const factory FooEvent.submit() = FooEventSubmit;
}

class FooBloc extends ExtendedBloc<FooEvent, FooState> {
  final Data _data;

  FooBloc(Data data)
      : _data = data,
        super(FooState.form());

  @override
  Stream<FooState> mapEventToState(FooEvent event) async* {
    final _state = state;
    yield* event.map(
      change: (event) async* {
        if (_state is FooStateForm) {
          final value = Name.dirty(event.value);
          yield _state.copyWith(name: value, status: Formz.validate([value]));
        }
      },
      submit: (event) async* {
        if (_state is FooStateForm) {
          try {
            yield _state.copyWith(status: FormzStatus.submissionInProgress);
            //...
            yield FooState.done();
          } catch (ex) {
            // Clear submissionInProgress on error
            yield _state.copyWith(status: Formz.validate([_state.name]));
          }
        }
      },
    );
  }
}
