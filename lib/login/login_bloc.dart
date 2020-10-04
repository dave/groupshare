import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/observer.dart';

part 'login_bloc.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  @Implements(Complete)
  const factory LoginState.email({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Email.pure()) Email email,
  }) = LoginStateEmail;

  @Implements(Complete)
  const factory LoginState.code({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Code.pure()) Code code,
  }) = LoginStateCode;

  const factory LoginState.done() = LoginStateDone;
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

  LoginBloc(this._auth) : super(LoginState.email()) {
    _subscription = _auth.statusChange.listen((Status value) {
      add(LoginEvent.changeStatus(value));
    });
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    final _state = state;
    yield* event.map(
      changeStatus: (event) async* {
        switch (event.status) {
          case Status.Empty:
            yield LoginState.email();
            return;
          case Status.Auth:
            yield LoginState.code();
            return;
          case Status.Done:
            yield LoginState.done();
            return;
        }
      },
      changeEmail: (event) async* {
        if (_state is LoginStateEmail) {
          final value = Email.dirty(event.value);
          yield _state.copyWith(email: value, status: Formz.validate([value]));
        }
      },
      changeCode: (event) async* {
        if (_state is LoginStateCode) {
          final value = Code.dirty(event.value);
          yield _state.copyWith(code: value, status: Formz.validate([value]));
        }
      },
      submitEmail: (event) async* {
        if (_state is LoginStateEmail) {
          yield _state.copyWith(status: FormzStatus.submissionInProgress);
          await _auth.login(_state.email.value);
        }
      },
      submitCode: (event) async* {
        if (_state is LoginStateCode) {
          yield _state.copyWith(status: FormzStatus.submissionInProgress);
          await _auth.code(_state.code.value);
        }
      },
      error: (event) async* {
        // reset submissionInProgress status
        if (_state is LoginStateEmail) {
          yield _state.copyWith(status: Formz.validate([_state.email]));
        }
        if (_state is LoginStateCode) {
          yield _state.copyWith(status: Formz.validate([_state.code]));
        }
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
