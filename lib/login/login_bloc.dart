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

  const factory PageState.error(
    dynamic error,
    StackTrace stack,
    LoginState retry,
  ) = PageStateError;

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

class LoginCubit extends Cubit<LoginState> {
  Auth _auth;
  StreamSubscription<Status> _subscription;

  LoginCubit(this._auth)
      : super(
          LoginState(
            PageState.email(),
            EmailFormState(),
            CodeFormState(),
          ),
        ) {
    _subscription = _auth.statusChange.listen(
      (Status value) => change(value),
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  change(Status status) {
    switch (status) {
      case Status.Empty:
        emit(state.copyWith(page: PageState.email()));
        return;
      case Status.Auth:
        emit(state.copyWith(page: PageState.code()));
        return;
      case Status.Done:
        emit(state.copyWith(page: PageState.done()));
        return;
    }
  }

  void retry(LoginState retry) {
    emit(retry);
  }

  void emailChanged(String email) {
    final value = Email.dirty(email);
    emit(state.copyWith(
      email: state.email.copyWith(
        email: value,
        status: Formz.validate([value]),
      ),
    ));
  }

  Future<void> sendLogin() async {
    final retryState = state;
    try {
      emit(state.copyWith(
        email: state.email.copyWith(
          status: FormzStatus.submissionInProgress,
        ),
      ));
      await _auth.login(state.email.email.value);
    } catch (ex, stack) {
      emit(state.copyWith(page: PageState.error(ex, stack, retryState)));
    }
  }

  void codeChanged(String code) {
    final value = Code.dirty(code);
    emit(state.copyWith(
      code: state.code.copyWith(
        code: value,
        status: Formz.validate([value]),
      ),
    ));
  }

  Future<void> sendCode() async {
    final retryState = state;
    try {
      emit(state.copyWith(
        code: state.code.copyWith(
          status: FormzStatus.submissionInProgress,
        ),
      ));
      await _auth.code(state.code.code.value);
    } catch (ex, stack) {
      emit(state.copyWith(page: PageState.error(ex, stack, retryState)));
    }
  }
}
