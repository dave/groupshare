import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/observer.dart';

part 'add_bloc.freezed.dart';

@freezed
abstract class AddState with _$AddState {
  @Implements(Complete)
  const factory AddState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Name.pure()) Name name,
  }) = AddStateForm;

  const factory AddState.done() = AddStateDone;
}

@freezed
abstract class AddEvent with _$AddEvent {
  const factory AddEvent.change(String value) = AddEventChange;

  const factory AddEvent.submit() = AddEventSubmit;
}

class AddBloc extends ExtendedBloc<AddEvent, AddState> {
  final Data _data;

  AddBloc(Data data)
      : _data = data,
        super(AddState.form());

  @override
  Stream<AddState> mapEventToState(AddEvent event) async* {
    final _state = state;
    yield* event.map(
      change: (event) async* {
        if (_state is AddStateForm) {
          final value = Name.dirty(event.value);
          yield _state.copyWith(name: value, status: Formz.validate([value]));
        }
      },
      submit: (event) async* {
        if (_state is AddStateForm) {
          try {
            yield _state.copyWith(status: FormzStatus.submissionInProgress);
            final id = _data.shares.randomUnique();
            _data.shares.add(id, Share()..name = _state.name.value);
            _data.user.op(
              op.user.shares.insert(
                0,
                User_AvailableShare()
                  ..id = id
                  ..name = _state.name.value,
              ),
            );
            yield AddState.done();
          } catch (ex) {
            // Clear submissionInProgress on error
            yield _state.copyWith(status: Formz.validate([_state.name]));
          }
        }
      },
    );
  }
}
