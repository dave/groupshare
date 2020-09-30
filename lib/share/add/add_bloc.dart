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

@freezed
abstract class AddEvent with _$AddEvent {
  const factory AddEvent.change(String value) = AddEventChange;

  const factory AddEvent.submit() = AddEventSubmit;

  const factory AddEvent.error() = AddEventError;
}

class AddBloc extends Bloc<AddEvent, AddState> {
  final Data _data;

  AddBloc(Data data)
      : _data = data,
        super(AddState(PageState.form(), FormState()));

  @override
  Stream<AddState> mapEventToState(AddEvent event) async* {
    yield* event.map(
      change: (event) async* {
        final value = Name.dirty(event.value);
        yield state.copyWith(
          form: state.form.copyWith(
            name: value,
            status: Formz.validate([value]),
          ),
        );
      },
      submit: (event) async* {
        yield state.copyWith(
          form: state.form.copyWith(status: FormzStatus.submissionInProgress),
        );
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
        yield state.copyWith(page: PageState.done());
      },
      error: (event) async* {
        // reset submissionInProgress status
        yield state.copyWith(
          form: state.form.copyWith(status: Formz.validate([state.form.name])),
        );
      },
    );
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    add(AddEvent.error());
    super.onError(error, stackTrace);
  }
}
