import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:protod/pserver/pserver.dart';

part 'edit_bloc.freezed.dart';

@freezed
abstract class EditState with _$EditState {
  const factory EditState.initial(
    String id,
  ) = EditStateInitial;

  const factory EditState.offline(
    String id,
  ) = EditStateOffline;

  const factory EditState.loading(
    String id,
  ) = EditStateLoading;

  const factory EditState.form({
    @required String id,
    @Default(FormzStatus.pure) FormzStatus status,
    @Default("") String initialName,
    @Default(const Name.pure()) Name name,
  }) = EditStateForm;

  const factory EditState.error(
    String id,
    dynamic error,
    EditState retryState,
  ) = EditStateError;

  const factory EditState.done(
    String id,
  ) = EditStateDone;
}

class EditCubit extends Cubit<EditState> {
  final Data _data;

  Item<Share> get _share {
    final resp = _data.shares.get(state.id);

    if (resp.future != null) {
      resp.future.then((value) => init());
    }

    if (resp.item != null) {
      return resp.item;
    }

    // item is null
    if (resp.future == null) {
      // TODO: automatically trigger init() when we come back online?
      emit(EditState.offline(state.id));
    } else {
      emit(EditState.loading(state.id));
    }
    return null;
  }

  EditCubit(String id, Data data)
      : _data = data,
        super(EditState.initial(id));

  void init() {
    final share = _share;
    if (share == null) {
      // _share will emit the correct state.
      return;
    }
    final nameValue = Name.dirty(share.value.name);
    emit(EditState.form(
      id: state.id,
      initialName: share.value.name,
      name: nameValue,
      status: Formz.validate([nameValue]),
    ));
  }

  void nameChanged(String name) {
    final stateForm = state as EditStateForm;
    final nameValue = Name.dirty(name);
    emit(stateForm.copyWith(
      name: nameValue,
      status: Formz.validate([nameValue]),
    ));
  }

  Future<void> submit() async {
    final stateForm = state as EditStateForm;
    try {
      if (stateForm.initialName == stateForm.name.value) {
        return;
      }
      emit(stateForm.copyWith(status: FormzStatus.submissionInProgress));

      _share.op(
        Op().Share().Name().Edit(stateForm.initialName, stateForm.name.value),
      );

      final userDataIndex = _data.user.value.shares.indexWhere(
        (s) => s.id == stateForm.id,
      );
      if (userDataIndex > -1) {
        _data.user.op(
          Op()
              .User()
              .Shares()
              .Index(userDataIndex)
              .Name()
              .Set(stateForm.name.value),
        );
      }

      emit(EditState.done(state.id));
    } catch (ex) {
      emit(EditState.error(state.id, ex, stateForm));
    }
  }

  void retry(EditState retryState) {
    emit(retryState);
  }
}
