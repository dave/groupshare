import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/share/add/add.dart';

part 'add_bloc.freezed.dart';

@freezed
abstract class AddState with _$AddState {
  const factory AddState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Name.pure()) Name name,
  }) = AddStateForm;

  const factory AddState.error(
    dynamic error,
    AddState retryState,
  ) = AddStateError;

  const factory AddState.done() = AddStateDone;
}

class AddCubit extends Cubit<AddState> {
  final Data _data;

  AddCubit(Data data)
      : _data = data,
        super(AddState.form());

  void nameChanged(String name) {
    final nameValue = Name.dirty(name);
    emit(AddState.form(
      name: nameValue,
      status: Formz.validate([nameValue]),
    ));
  }

  void retry(AddState retryState) {
    emit(retryState);
  }

  Future<void> add() async {
    final stateForm = state as AddStateForm;
    try {
      emit(stateForm.copyWith(status: FormzStatus.submissionInProgress));
      final share = Share()..name = stateForm.name.value;
      final id = _data.shares.randomUnique();
      _data.shares.add(id, share);
      _data.user.op(
        Op().User().Shares().Insert(
              0,
              User_AvailableShare()
                ..id = id
                ..name = stateForm.name.value
                ..new_3 = true,
            ),
      );
      emit(AddState.done());
    } catch (ex) {
      emit(AddState.error(ex, stateForm));
    }
  }
}
