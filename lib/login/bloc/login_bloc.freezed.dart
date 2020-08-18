// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  LoginStateEmail email(
      {FormzStatus status = FormzStatus.pure,
      Email email = const Email.pure()}) {
    return LoginStateEmail(
      status: status,
      email: email,
    );
  }

// ignore: unused_element
  LoginStateCode code(
      {FormzStatus status = FormzStatus.pure, Code code = const Code.pure()}) {
    return LoginStateCode(
      status: status,
      code: code,
    );
  }

// ignore: unused_element
  LoginStateError error(Exception error) {
    return LoginStateError(
      error,
    );
  }

// ignore: unused_element
  LoginStateDone done() {
    return const LoginStateDone();
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result email(FormzStatus status, Email email),
    @required Result code(FormzStatus status, Code code),
    @required Result error(Exception error),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(FormzStatus status, Email email),
    Result code(FormzStatus status, Code code),
    Result error(Exception error),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result email(LoginStateEmail value),
    @required Result code(LoginStateCode value),
    @required Result error(LoginStateError value),
    @required Result done(LoginStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(LoginStateEmail value),
    Result code(LoginStateCode value),
    Result error(LoginStateError value),
    Result done(LoginStateDone value),
    @required Result orElse(),
  });
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

abstract class $LoginStateEmailCopyWith<$Res> {
  factory $LoginStateEmailCopyWith(
          LoginStateEmail value, $Res Function(LoginStateEmail) then) =
      _$LoginStateEmailCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Email email});
}

class _$LoginStateEmailCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateEmailCopyWith<$Res> {
  _$LoginStateEmailCopyWithImpl(
      LoginStateEmail _value, $Res Function(LoginStateEmail) _then)
      : super(_value, (v) => _then(v as LoginStateEmail));

  @override
  LoginStateEmail get _value => super._value as LoginStateEmail;

  @override
  $Res call({
    Object status = freezed,
    Object email = freezed,
  }) {
    return _then(LoginStateEmail(
      status: status == freezed ? _value.status : status as FormzStatus,
      email: email == freezed ? _value.email : email as Email,
    ));
  }
}

class _$LoginStateEmail implements LoginStateEmail {
  const _$LoginStateEmail(
      {this.status = FormzStatus.pure, this.email = const Email.pure()})
      : assert(status != null),
        assert(email != null);

  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;
  @JsonKey(defaultValue: const Email.pure())
  @override
  final Email email;

  @override
  String toString() {
    return 'LoginState.email(status: $status, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginStateEmail &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(email);

  @override
  $LoginStateEmailCopyWith<LoginStateEmail> get copyWith =>
      _$LoginStateEmailCopyWithImpl<LoginStateEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result email(FormzStatus status, Email email),
    @required Result code(FormzStatus status, Code code),
    @required Result error(Exception error),
    @required Result done(),
  }) {
    assert(email != null);
    assert(code != null);
    assert(error != null);
    assert(done != null);
    return email(status, this.email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(FormzStatus status, Email email),
    Result code(FormzStatus status, Code code),
    Result error(Exception error),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (email != null) {
      return email(status, this.email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result email(LoginStateEmail value),
    @required Result code(LoginStateCode value),
    @required Result error(LoginStateError value),
    @required Result done(LoginStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(error != null);
    assert(done != null);
    return email(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(LoginStateEmail value),
    Result code(LoginStateCode value),
    Result error(LoginStateError value),
    Result done(LoginStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class LoginStateEmail implements LoginState {
  const factory LoginStateEmail({FormzStatus status, Email email}) =
      _$LoginStateEmail;

  FormzStatus get status;
  Email get email;
  $LoginStateEmailCopyWith<LoginStateEmail> get copyWith;
}

abstract class $LoginStateCodeCopyWith<$Res> {
  factory $LoginStateCodeCopyWith(
          LoginStateCode value, $Res Function(LoginStateCode) then) =
      _$LoginStateCodeCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Code code});
}

class _$LoginStateCodeCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCodeCopyWith<$Res> {
  _$LoginStateCodeCopyWithImpl(
      LoginStateCode _value, $Res Function(LoginStateCode) _then)
      : super(_value, (v) => _then(v as LoginStateCode));

  @override
  LoginStateCode get _value => super._value as LoginStateCode;

  @override
  $Res call({
    Object status = freezed,
    Object code = freezed,
  }) {
    return _then(LoginStateCode(
      status: status == freezed ? _value.status : status as FormzStatus,
      code: code == freezed ? _value.code : code as Code,
    ));
  }
}

class _$LoginStateCode implements LoginStateCode {
  const _$LoginStateCode(
      {this.status = FormzStatus.pure, this.code = const Code.pure()})
      : assert(status != null),
        assert(code != null);

  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;
  @JsonKey(defaultValue: const Code.pure())
  @override
  final Code code;

  @override
  String toString() {
    return 'LoginState.code(status: $status, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginStateCode &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(code);

  @override
  $LoginStateCodeCopyWith<LoginStateCode> get copyWith =>
      _$LoginStateCodeCopyWithImpl<LoginStateCode>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result email(FormzStatus status, Email email),
    @required Result code(FormzStatus status, Code code),
    @required Result error(Exception error),
    @required Result done(),
  }) {
    assert(email != null);
    assert(code != null);
    assert(error != null);
    assert(done != null);
    return code(status, this.code);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(FormzStatus status, Email email),
    Result code(FormzStatus status, Code code),
    Result error(Exception error),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (code != null) {
      return code(status, this.code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result email(LoginStateEmail value),
    @required Result code(LoginStateCode value),
    @required Result error(LoginStateError value),
    @required Result done(LoginStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(error != null);
    assert(done != null);
    return code(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(LoginStateEmail value),
    Result code(LoginStateCode value),
    Result error(LoginStateError value),
    Result done(LoginStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (code != null) {
      return code(this);
    }
    return orElse();
  }
}

abstract class LoginStateCode implements LoginState {
  const factory LoginStateCode({FormzStatus status, Code code}) =
      _$LoginStateCode;

  FormzStatus get status;
  Code get code;
  $LoginStateCodeCopyWith<LoginStateCode> get copyWith;
}

abstract class $LoginStateErrorCopyWith<$Res> {
  factory $LoginStateErrorCopyWith(
          LoginStateError value, $Res Function(LoginStateError) then) =
      _$LoginStateErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

class _$LoginStateErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateErrorCopyWith<$Res> {
  _$LoginStateErrorCopyWithImpl(
      LoginStateError _value, $Res Function(LoginStateError) _then)
      : super(_value, (v) => _then(v as LoginStateError));

  @override
  LoginStateError get _value => super._value as LoginStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LoginStateError(
      error == freezed ? _value.error : error as Exception,
    ));
  }
}

class _$LoginStateError implements LoginStateError {
  const _$LoginStateError(this.error) : assert(error != null);

  @override
  final Exception error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LoginStateErrorCopyWith<LoginStateError> get copyWith =>
      _$LoginStateErrorCopyWithImpl<LoginStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result email(FormzStatus status, Email email),
    @required Result code(FormzStatus status, Code code),
    @required Result error(Exception error),
    @required Result done(),
  }) {
    assert(email != null);
    assert(code != null);
    assert(error != null);
    assert(done != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(FormzStatus status, Email email),
    Result code(FormzStatus status, Code code),
    Result error(Exception error),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result email(LoginStateEmail value),
    @required Result code(LoginStateCode value),
    @required Result error(LoginStateError value),
    @required Result done(LoginStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(error != null);
    assert(done != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(LoginStateEmail value),
    Result code(LoginStateCode value),
    Result error(LoginStateError value),
    Result done(LoginStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginStateError implements LoginState {
  const factory LoginStateError(Exception error) = _$LoginStateError;

  Exception get error;
  $LoginStateErrorCopyWith<LoginStateError> get copyWith;
}

abstract class $LoginStateDoneCopyWith<$Res> {
  factory $LoginStateDoneCopyWith(
          LoginStateDone value, $Res Function(LoginStateDone) then) =
      _$LoginStateDoneCopyWithImpl<$Res>;
}

class _$LoginStateDoneCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateDoneCopyWith<$Res> {
  _$LoginStateDoneCopyWithImpl(
      LoginStateDone _value, $Res Function(LoginStateDone) _then)
      : super(_value, (v) => _then(v as LoginStateDone));

  @override
  LoginStateDone get _value => super._value as LoginStateDone;
}

class _$LoginStateDone implements LoginStateDone {
  const _$LoginStateDone();

  @override
  String toString() {
    return 'LoginState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result email(FormzStatus status, Email email),
    @required Result code(FormzStatus status, Code code),
    @required Result error(Exception error),
    @required Result done(),
  }) {
    assert(email != null);
    assert(code != null);
    assert(error != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(FormzStatus status, Email email),
    Result code(FormzStatus status, Code code),
    Result error(Exception error),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result email(LoginStateEmail value),
    @required Result code(LoginStateCode value),
    @required Result error(LoginStateError value),
    @required Result done(LoginStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(error != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(LoginStateEmail value),
    Result code(LoginStateCode value),
    Result error(LoginStateError value),
    Result done(LoginStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class LoginStateDone implements LoginState {
  const factory LoginStateDone() = _$LoginStateDone;
}
