import 'dart:async';

import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/main.dart';
import 'package:groupshare/share/edit/edit.dart';

part 'edit_bloc.freezed.dart';

@freezed
abstract class EditState with _$EditState {
  @Implements(PageStateHolder)
  const factory EditState(
    PageState page,
    FormState form,
  ) = _EditState;
}

@freezed
abstract class FormState with _$FormState {
  const factory FormState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default("") String initialName,
    @Default(const Name.pure()) Name name,
  }) = _FormState;
}

@freezed
abstract class PageState with _$PageState {
  @Implements(PageStateIncomplete)
  const factory PageState.loading() = PageStateLoading;

  const factory PageState.form() = PageStateForm;

  const factory PageState.done(String route) = PageStateDone;
}

@freezed
abstract class EditEvent with _$EditEvent {
  const factory EditEvent.init(String value) = EditEventInit;

  const factory EditEvent.change(String value) = EditEventChange;

  const factory EditEvent.submit() = EditEventSubmit;

  const factory EditEvent.error() = EditEventError;
}

class EditBloc extends Bloc<EditEvent, EditState> {
  final Data _data;
  final String _id;
  final String _back;

  EditBloc(this._id, this._back, this._data)
      : super(EditState(PageState.loading(), FormState())) {
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
    yield* event.map(
      init: (event) async* {
        final value = Name.dirty(event.value);
        yield state.copyWith(
          page: PageState.form(),
          form: FormState(
            initialName: event.value,
            name: value,
            status: Formz.validate([value]),
          ),
        );
      },
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
        if (state.form.initialName == state.form.name.value) {
          yield state.copyWith(page: PageState.done(_back));
          return;
        }

        yield state.copyWith(
          form: state.form.copyWith(
            status: FormzStatus.submissionInProgress,
          ),
        );

        final share = await _data.shares.item(_id);

        share.op(
          op.share.name.edit(state.form.initialName, state.form.name.value),
        );

        final userDataIndex = _data.user.value.shares.indexWhere(
          (s) => s.id == _id,
        );
        if (userDataIndex > -1) {
          _data.user.op(
            op.user.shares.index(userDataIndex).name.set(state.form.name.value),
          );
        }

        yield state.copyWith(
          page: PageState.done(_back),
        );
      },
      error: (event) async* {
        // reset submissionInProgress status
        yield state.copyWith(
          form: state.form.copyWith(
            status: Formz.validate([state.form.name]),
          ),
        );
      },
    );
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    add(EditEvent.error());
    super.onError(error, stackTrace);
  }
}
