import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/share/add/add.dart';

part 'add_bloc.freezed.dart';

@freezed
abstract class ShareAddState with _$ShareAddState {
  const factory ShareAddState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Name.pure()) Name name,
  }) = ShareAddStateForm;

  const factory ShareAddState.error(
    dynamic error,
    ShareAddState retryState,
  ) = ShareAddStateError;

  const factory ShareAddState.done() = ShareAddStateDone;
}

class ShareAddCubit extends Cubit<ShareAddState> {
  final Data _data;

  ShareAddCubit(Data data)
      : _data = data,
        super(ShareAddState.form());

  void nameChanged(String name) {
    final nameValue = Name.dirty(name);
    emit(ShareAddState.form(
      name: nameValue,
      status: Formz.validate([nameValue]),
    ));
  }

  void retry(ShareAddState s) {
    emit(s);
  }

  Future<void> add() async {
    final stateForm = state as ShareAddStateForm;
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
      emit(ShareAddState.done());
    } catch (ex) {
      emit(ShareAddState.error(ex, stateForm));
    }
  }
}
