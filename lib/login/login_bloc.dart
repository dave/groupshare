import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/login/login.dart';

part 'login_bloc.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState(
    PageState page,
    EmailFormState email,
    CodeFormState code,
  ) = _LoginState;
}

@freezed
abstract class PageState with _$PageState {
  const factory PageState.email() = PageStateEmail;

  const factory PageState.code() = PageStateCode;

  const factory PageState.done() = PageStateDone;
}

@freezed
abstract class EmailFormState with _$EmailFormState {
  const factory EmailFormState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Email.pure()) Email email,
  }) = _EmailFormState;
}

@freezed
abstract class CodeFormState with _$CodeFormState {
  const factory CodeFormState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Code.pure()) Code code,
  }) = _CodeFormState;
}

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.changeStatus(Status status) = LoginEventChangeStatus;

  const factory LoginEvent.changeEmail(String value) = LoginEventChangeEmail;

  const factory LoginEvent.changeCode(String value) = LoginEventChangeCode;

  const factory LoginEvent.submitEmail() = LoginEventSubmitEmail;

  const factory LoginEvent.submitCode() = LoginEventSubmitCode;

  const factory LoginEvent.error() = LoginEventError;
}

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  Auth _auth;
  StreamSubscription<Status> _subscription;

  LoginBloc(this._auth)
      : super(LoginState(
          PageState.email(),
          EmailFormState(),
          CodeFormState(),
        )) {
    _subscription = _auth.statusChange.listen((Status value) {
      add(LoginEvent.changeStatus(value));
    });
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(
      changeStatus: (event) async* {
        switch (event.status) {
          case Status.Empty:
            yield state.copyWith(page: PageState.email());
            return;
          case Status.Auth:
            yield state.copyWith(page: PageState.code());
            return;
          case Status.Done:
            yield state.copyWith(page: PageState.done());
            return;
        }
      },
      changeEmail: (event) async* {
        final value = Email.dirty(event.value);
        yield state.copyWith(
          email: state.email.copyWith(
            email: value,
            status: Formz.validate([value]),
          ),
        );
      },
      changeCode: (event) async* {
        final value = Code.dirty(event.value);
        yield state.copyWith(
          code: state.code.copyWith(
            code: value,
            status: Formz.validate([value]),
          ),
        );
      },
      submitEmail: (event) async* {
        yield state.copyWith(
          email: state.email.copyWith(
            status: FormzStatus.submissionInProgress,
          ),
        );
        await _auth.login(state.email.email.value);
      },
      submitCode: (event) async* {
        yield state.copyWith(
          code: state.code.copyWith(
            status: FormzStatus.submissionInProgress,
          ),
        );
        await _auth.code(state.code.code.value);
      },
      error: (event) async* {
        // reset submissionInProgress status
        yield state.copyWith(
          email: state.email.copyWith(
            status: Formz.validate([state.email.email]),
          ),
          code: state.code.copyWith(
            status: Formz.validate([state.code.code]),
          ),
        );
      },
    );
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    add(LoginEvent.error());
    super.onError(error, stackTrace);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
