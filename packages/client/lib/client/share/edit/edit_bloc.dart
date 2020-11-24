import 'dart:async';

import 'package:data/data.dart';
import 'package:exceptions/exceptions.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:client/client/bloc.dart';
import 'package:client/client/observer.dart';
import 'package:client/client/share/edit/edit.dart';

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
  const factory EditEvent.setup() = EditEventSetup;

  const factory EditEvent.init(String value) = EditEventInit;

  const factory EditEvent.change(String value) = EditEventChange;

  const factory EditEvent.submit() = EditEventSubmit;
}

class EditBloc extends ExtendedBloc<EditEvent, EditState> {
  final Data _data;
  final String _id;
  final String _back;

  EditBloc(this._id, this._back, this._data) : super(EditState.loading()) {
    add(EditEvent.setup());
  }

  @override
  Stream<EditState> mapEventToState(EditEvent event) async* {
    final _state = state;
    yield* event.map(
      setup: (event) async* {
        final share = await _data.shares.item(_id);
        add(EditEvent.init(share.value.name));
      },
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
          try {
            if (_state.initialName == _state.name.value) {
              yield EditState.done(_back);
              return;
            }

            yield _state.copyWith(status: FormzStatus.submissionInProgress);

            final share = await _data.shares.item(_id);

            share.op(
              op.share.name.edit(_state.initialName, _state.name.value),
            );

            final userFavIndex = _data.user.value.favourites.indexWhere(
              (fav) => fav.id == _id,
            );

            if (userFavIndex > -1) {
              _data.user.op(
                op.user.favourites.index(userFavIndex).name.set(_state.name.value),
              );
            }

            yield EditState.done(_back);
          } catch (ex) {
            // Clear submissionInProgress on error
            yield _state.copyWith(status: Formz.validate([_state.name]));
            throw (ex);
          }
        }
      },
    );
  }
}
