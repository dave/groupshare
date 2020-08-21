import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/login/login.dart';

part 'login_bloc.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.email({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Email.pure()) Email email,
  }) = LoginStateEmail;

  const factory LoginState.code({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Code.pure()) Code code,
  }) = LoginStateCode;

  const factory LoginState.error(
    dynamic error,
    LoginState retry,
  ) = LoginStateError;

  const factory LoginState.done() = LoginStateDone;
}

class LoginCubit extends Cubit<LoginState> {
  Auth _auth;
  Data _data;
  StreamSubscription<Status> _statusSubscription;

  LoginCubit(Auth auth, Data data)
      : _auth = auth,
        _data = data,
        super(LoginState.email()) {
    _statusSubscription = _auth.statusChange.listen(
      (Status value) => change(value),
    );
  }

  @override
  Future<void> close() {
    _statusSubscription?.cancel();
    return super.close();
  }

  change(Status status) {
    switch (status) {
      case Status.Empty:
        emit(LoginState.email());
        return;
      case Status.Auth:
        emit(LoginState.code());
        return;
      case Status.Done:
        emit(LoginState.done());
        return;
    }
  }

  void retry(LoginState retryState) {
    emit(retryState);
  }

  void emailChanged(String email) {
    final emailValue = Email.dirty(email);
    emit(LoginState.email(
      email: emailValue,
      status: Formz.validate([emailValue]),
    ));
  }

  Future<void> sendLogin() async {
    final stateEmail = state as LoginStateEmail;
    try {
      emit(stateEmail.copyWith(status: FormzStatus.submissionInProgress));
      await _auth.login(stateEmail.email.value);
    } catch (ex) {
      emit(LoginState.error(ex, stateEmail));
    }
  }

  void codeChanged(String code) {
    final codeValue = Code.dirty(code);
    emit(LoginState.code(
      code: codeValue,
      status: Formz.validate([codeValue]),
    ));
  }

  Future<void> sendCode() async {
    final stateCode = state as LoginStateCode;
    try {
      emit(stateCode.copyWith(status: FormzStatus.submissionInProgress));
      await _auth.code(stateCode.code.value);
      await _data.initUser();
    } catch (ex) {
      emit(LoginState.error(ex, stateCode));
    }
  }
}
