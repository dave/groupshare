import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.empty() = AuthStateEmpty;
  const factory AuthState.auth() = AuthStateAuth;
  const factory AuthState.done() = AuthStateDone;
}

class AuthCubit extends Cubit<AuthState> {
  Auth _auth;
  StreamSubscription<Status> _statusSubscription;

  AuthCubit(Auth auth)
      : _auth = auth,
        super(AuthState.empty()) {
    if (_statusSubscription == null) {
      _statusSubscription = _auth.statusChange.listen(
        (Status value) => change(value),
      );
    }
  }

  @override
  Future<void> close() {
    _statusSubscription?.cancel();
    return super.close();
  }

  void change(Status status) {
    switch (status) {
      case Status.Empty:
        emit(AuthState.empty());
        return;
      case Status.Auth:
        emit(AuthState.auth());
        return;
      case Status.Done:
        emit(AuthState.done());
        return;
    }
  }

  Future<void> logoff() async {
    await _auth.logoff();
    emit(AuthState.empty());
  }
}
