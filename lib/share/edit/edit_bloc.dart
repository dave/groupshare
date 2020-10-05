import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/observer.dart';
import 'package:groupshare/share/edit/edit.dart';

part 'edit_bloc.freezed.dart';

@freezed
abstract class EditState with _$EditState {
  @Implements(Incomplete)
  const factory EditState.loading() = EditStateLoading;

  @Implements(Complete)
  const factory EditState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default("") String initialName,
    @Default(const Name.pure()) Name name,
  }) = EditStateForm;

  const factory EditState.done(String route) = EditStateDone;
}

@freezed
abstract class EditEvent with _$EditEvent {
  const factory EditEvent.init(String value) = EditEventInit;

  const factory EditEvent.change(String value) = EditEventChange;

  const factory EditEvent.submit() = EditEventSubmit;

  const factory EditEvent.error() = EditEventError;
}

class EditBloc extends ExtendedBloc<EditEvent, EditState> {
  final Data _data;
  final String _id;
  final String _back;

  EditBloc(this._id, this._back, this._data)
      : super(EditState.loading()) {
    void f() async {
      final share = await _data.shares.item(_id);
      if (share == null) {
        throw UserException("Can't find document");
      }
      add(EditEvent.init(share.value.name));
    }

    f();
  }

  @override
  Stream<EditState> mapEventToState(EditEvent event) async* {
    final _state = state;
    yield* event.map(
      init: (event) async* {
        final value = Name.dirty(event.value);
        yield EditState.form(
          initialName: event.value,
          name: value,
          status: Formz.validate([value]),
        );
      },
      change: (event) async* {
        if (_state is EditStateForm) {
          final value = Name.dirty(event.value);
          yield _state.copyWith(name: value, status: Formz.validate([value]));
        }
      },
      submit: (event) async* {
        if (_state is EditStateForm) {
          if (_state.initialName == _state.name.value) {
            yield EditState.done(_back);
            return;
          }

          yield _state.copyWith(status: FormzStatus.submissionInProgress);

          final share = await _data.shares.item(_id);

          share.op(
            op.share.name.edit(_state.initialName, _state.name.value),
          );

          final userDataIndex = _data.user.value.shares.indexWhere(
                (s) => s.id == _id,
          );

          if (userDataIndex > -1) {
            _data.user.op(
              op.user.shares
                  .index(userDataIndex)
                  .name
                  .set(_state.name.value),
            );
          }

          yield EditState.done(_back);
        }
      },
      error: (event) async* {
        // reset submissionInProgress status
        if (_state is EditStateForm) {
          yield _state.copyWith(status: Formz.validate([_state.name]));
        }
      },
    );
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    add(EditEvent.error());
    super.onError(error, stackTrace);
  }
}
