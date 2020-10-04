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
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(FormzStatus status, Email email),
    Result code(FormzStatus status, Code code),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result email(LoginStateEmail value),
    @required Result code(LoginStateCode value),
    @required Result done(LoginStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(LoginStateEmail value),
    Result code(LoginStateCode value),
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
    @required Result done(),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return email(status, this.email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(FormzStatus status, Email email),
    Result code(FormzStatus status, Code code),
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
    @required Result done(LoginStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return email(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(LoginStateEmail value),
    Result code(LoginStateCode value),
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
    @required Result done(),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return code(status, this.code);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(FormzStatus status, Email email),
    Result code(FormzStatus status, Code code),
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
    @required Result done(LoginStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return code(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(LoginStateEmail value),
    Result code(LoginStateCode value),
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

@Implements(PageIncomplete)
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
    @required Result done(),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(FormzStatus status, Email email),
    Result code(FormzStatus status, Code code),
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
    @required Result done(LoginStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(LoginStateEmail value),
    Result code(LoginStateCode value),
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

abstract class LoginStateDone implements LoginState, PageIncomplete {
  const factory LoginStateDone() = _$LoginStateDone;
}

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  LoginEventChangeStatus changeStatus(Status status) {
    return LoginEventChangeStatus(
      status,
    );
  }

// ignore: unused_element
  LoginEventChangeEmail changeEmail(String value) {
    return LoginEventChangeEmail(
      value,
    );
  }

// ignore: unused_element
  LoginEventChangeCode changeCode(String value) {
    return LoginEventChangeCode(
      value,
    );
  }

// ignore: unused_element
  LoginEventSubmitEmail submitEmail() {
    return const LoginEventSubmitEmail();
  }

// ignore: unused_element
  LoginEventSubmitCode submitCode() {
    return const LoginEventSubmitCode();
  }

// ignore: unused_element
  LoginEventError error() {
    return const LoginEventError();
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeStatus(Status status),
    @required Result changeEmail(String value),
    @required Result changeCode(String value),
    @required Result submitEmail(),
    @required Result submitCode(),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeStatus(Status status),
    Result changeEmail(String value),
    Result changeCode(String value),
    Result submitEmail(),
    Result submitCode(),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeStatus(LoginEventChangeStatus value),
    @required Result changeEmail(LoginEventChangeEmail value),
    @required Result changeCode(LoginEventChangeCode value),
    @required Result submitEmail(LoginEventSubmitEmail value),
    @required Result submitCode(LoginEventSubmitCode value),
    @required Result error(LoginEventError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeStatus(LoginEventChangeStatus value),
    Result changeEmail(LoginEventChangeEmail value),
    Result changeCode(LoginEventChangeCode value),
    Result submitEmail(LoginEventSubmitEmail value),
    Result submitCode(LoginEventSubmitCode value),
    Result error(LoginEventError value),
    @required Result orElse(),
  });
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

abstract class $LoginEventChangeStatusCopyWith<$Res> {
  factory $LoginEventChangeStatusCopyWith(LoginEventChangeStatus value,
          $Res Function(LoginEventChangeStatus) then) =
      _$LoginEventChangeStatusCopyWithImpl<$Res>;
  $Res call({Status status});
}

class _$LoginEventChangeStatusCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventChangeStatusCopyWith<$Res> {
  _$LoginEventChangeStatusCopyWithImpl(LoginEventChangeStatus _value,
      $Res Function(LoginEventChangeStatus) _then)
      : super(_value, (v) => _then(v as LoginEventChangeStatus));

  @override
  LoginEventChangeStatus get _value => super._value as LoginEventChangeStatus;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(LoginEventChangeStatus(
      status == freezed ? _value.status : status as Status,
    ));
  }
}

class _$LoginEventChangeStatus implements LoginEventChangeStatus {
  const _$LoginEventChangeStatus(this.status) : assert(status != null);

  @override
  final Status status;

  @override
  String toString() {
    return 'LoginEvent.changeStatus(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventChangeStatus &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @override
  $LoginEventChangeStatusCopyWith<LoginEventChangeStatus> get copyWith =>
      _$LoginEventChangeStatusCopyWithImpl<LoginEventChangeStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeStatus(Status status),
    @required Result changeEmail(String value),
    @required Result changeCode(String value),
    @required Result submitEmail(),
    @required Result submitCode(),
    @required Result error(),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return changeStatus(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeStatus(Status status),
    Result changeEmail(String value),
    Result changeCode(String value),
    Result submitEmail(),
    Result submitCode(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeStatus != null) {
      return changeStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeStatus(LoginEventChangeStatus value),
    @required Result changeEmail(LoginEventChangeEmail value),
    @required Result changeCode(LoginEventChangeCode value),
    @required Result submitEmail(LoginEventSubmitEmail value),
    @required Result submitCode(LoginEventSubmitCode value),
    @required Result error(LoginEventError value),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeStatus(LoginEventChangeStatus value),
    Result changeEmail(LoginEventChangeEmail value),
    Result changeCode(LoginEventChangeCode value),
    Result submitEmail(LoginEventSubmitEmail value),
    Result submitCode(LoginEventSubmitCode value),
    Result error(LoginEventError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class LoginEventChangeStatus implements LoginEvent {
  const factory LoginEventChangeStatus(Status status) =
      _$LoginEventChangeStatus;

  Status get status;
  $LoginEventChangeStatusCopyWith<LoginEventChangeStatus> get copyWith;
}

abstract class $LoginEventChangeEmailCopyWith<$Res> {
  factory $LoginEventChangeEmailCopyWith(LoginEventChangeEmail value,
          $Res Function(LoginEventChangeEmail) then) =
      _$LoginEventChangeEmailCopyWithImpl<$Res>;
  $Res call({String value});
}

class _$LoginEventChangeEmailCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventChangeEmailCopyWith<$Res> {
  _$LoginEventChangeEmailCopyWithImpl(
      LoginEventChangeEmail _value, $Res Function(LoginEventChangeEmail) _then)
      : super(_value, (v) => _then(v as LoginEventChangeEmail));

  @override
  LoginEventChangeEmail get _value => super._value as LoginEventChangeEmail;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(LoginEventChangeEmail(
      value == freezed ? _value.value : value as String,
    ));
  }
}

class _$LoginEventChangeEmail implements LoginEventChangeEmail {
  const _$LoginEventChangeEmail(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.changeEmail(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventChangeEmail &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $LoginEventChangeEmailCopyWith<LoginEventChangeEmail> get copyWith =>
      _$LoginEventChangeEmailCopyWithImpl<LoginEventChangeEmail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeStatus(Status status),
    @required Result changeEmail(String value),
    @required Result changeCode(String value),
    @required Result submitEmail(),
    @required Result submitCode(),
    @required Result error(),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return changeEmail(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeStatus(Status status),
    Result changeEmail(String value),
    Result changeCode(String value),
    Result submitEmail(),
    Result submitCode(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeEmail != null) {
      return changeEmail(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeStatus(LoginEventChangeStatus value),
    @required Result changeEmail(LoginEventChangeEmail value),
    @required Result changeCode(LoginEventChangeCode value),
    @required Result submitEmail(LoginEventSubmitEmail value),
    @required Result submitCode(LoginEventSubmitCode value),
    @required Result error(LoginEventError value),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeStatus(LoginEventChangeStatus value),
    Result changeEmail(LoginEventChangeEmail value),
    Result changeCode(LoginEventChangeCode value),
    Result submitEmail(LoginEventSubmitEmail value),
    Result submitCode(LoginEventSubmitCode value),
    Result error(LoginEventError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class LoginEventChangeEmail implements LoginEvent {
  const factory LoginEventChangeEmail(String value) = _$LoginEventChangeEmail;

  String get value;
  $LoginEventChangeEmailCopyWith<LoginEventChangeEmail> get copyWith;
}

abstract class $LoginEventChangeCodeCopyWith<$Res> {
  factory $LoginEventChangeCodeCopyWith(LoginEventChangeCode value,
          $Res Function(LoginEventChangeCode) then) =
      _$LoginEventChangeCodeCopyWithImpl<$Res>;
  $Res call({String value});
}

class _$LoginEventChangeCodeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventChangeCodeCopyWith<$Res> {
  _$LoginEventChangeCodeCopyWithImpl(
      LoginEventChangeCode _value, $Res Function(LoginEventChangeCode) _then)
      : super(_value, (v) => _then(v as LoginEventChangeCode));

  @override
  LoginEventChangeCode get _value => super._value as LoginEventChangeCode;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(LoginEventChangeCode(
      value == freezed ? _value.value : value as String,
    ));
  }
}

class _$LoginEventChangeCode implements LoginEventChangeCode {
  const _$LoginEventChangeCode(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.changeCode(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventChangeCode &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $LoginEventChangeCodeCopyWith<LoginEventChangeCode> get copyWith =>
      _$LoginEventChangeCodeCopyWithImpl<LoginEventChangeCode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeStatus(Status status),
    @required Result changeEmail(String value),
    @required Result changeCode(String value),
    @required Result submitEmail(),
    @required Result submitCode(),
    @required Result error(),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return changeCode(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeStatus(Status status),
    Result changeEmail(String value),
    Result changeCode(String value),
    Result submitEmail(),
    Result submitCode(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeCode != null) {
      return changeCode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeStatus(LoginEventChangeStatus value),
    @required Result changeEmail(LoginEventChangeEmail value),
    @required Result changeCode(LoginEventChangeCode value),
    @required Result submitEmail(LoginEventSubmitEmail value),
    @required Result submitCode(LoginEventSubmitCode value),
    @required Result error(LoginEventError value),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return changeCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeStatus(LoginEventChangeStatus value),
    Result changeEmail(LoginEventChangeEmail value),
    Result changeCode(LoginEventChangeCode value),
    Result submitEmail(LoginEventSubmitEmail value),
    Result submitCode(LoginEventSubmitCode value),
    Result error(LoginEventError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeCode != null) {
      return changeCode(this);
    }
    return orElse();
  }
}

abstract class LoginEventChangeCode implements LoginEvent {
  const factory LoginEventChangeCode(String value) = _$LoginEventChangeCode;

  String get value;
  $LoginEventChangeCodeCopyWith<LoginEventChangeCode> get copyWith;
}

abstract class $LoginEventSubmitEmailCopyWith<$Res> {
  factory $LoginEventSubmitEmailCopyWith(LoginEventSubmitEmail value,
          $Res Function(LoginEventSubmitEmail) then) =
      _$LoginEventSubmitEmailCopyWithImpl<$Res>;
}

class _$LoginEventSubmitEmailCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventSubmitEmailCopyWith<$Res> {
  _$LoginEventSubmitEmailCopyWithImpl(
      LoginEventSubmitEmail _value, $Res Function(LoginEventSubmitEmail) _then)
      : super(_value, (v) => _then(v as LoginEventSubmitEmail));

  @override
  LoginEventSubmitEmail get _value => super._value as LoginEventSubmitEmail;
}

class _$LoginEventSubmitEmail implements LoginEventSubmitEmail {
  const _$LoginEventSubmitEmail();

  @override
  String toString() {
    return 'LoginEvent.submitEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginEventSubmitEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeStatus(Status status),
    @required Result changeEmail(String value),
    @required Result changeCode(String value),
    @required Result submitEmail(),
    @required Result submitCode(),
    @required Result error(),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return submitEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeStatus(Status status),
    Result changeEmail(String value),
    Result changeCode(String value),
    Result submitEmail(),
    Result submitCode(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEmail != null) {
      return submitEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeStatus(LoginEventChangeStatus value),
    @required Result changeEmail(LoginEventChangeEmail value),
    @required Result changeCode(LoginEventChangeCode value),
    @required Result submitEmail(LoginEventSubmitEmail value),
    @required Result submitCode(LoginEventSubmitCode value),
    @required Result error(LoginEventError value),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return submitEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeStatus(LoginEventChangeStatus value),
    Result changeEmail(LoginEventChangeEmail value),
    Result changeCode(LoginEventChangeCode value),
    Result submitEmail(LoginEventSubmitEmail value),
    Result submitCode(LoginEventSubmitCode value),
    Result error(LoginEventError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEmail != null) {
      return submitEmail(this);
    }
    return orElse();
  }
}

abstract class LoginEventSubmitEmail implements LoginEvent {
  const factory LoginEventSubmitEmail() = _$LoginEventSubmitEmail;
}

abstract class $LoginEventSubmitCodeCopyWith<$Res> {
  factory $LoginEventSubmitCodeCopyWith(LoginEventSubmitCode value,
          $Res Function(LoginEventSubmitCode) then) =
      _$LoginEventSubmitCodeCopyWithImpl<$Res>;
}

class _$LoginEventSubmitCodeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventSubmitCodeCopyWith<$Res> {
  _$LoginEventSubmitCodeCopyWithImpl(
      LoginEventSubmitCode _value, $Res Function(LoginEventSubmitCode) _then)
      : super(_value, (v) => _then(v as LoginEventSubmitCode));

  @override
  LoginEventSubmitCode get _value => super._value as LoginEventSubmitCode;
}

class _$LoginEventSubmitCode implements LoginEventSubmitCode {
  const _$LoginEventSubmitCode();

  @override
  String toString() {
    return 'LoginEvent.submitCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginEventSubmitCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeStatus(Status status),
    @required Result changeEmail(String value),
    @required Result changeCode(String value),
    @required Result submitEmail(),
    @required Result submitCode(),
    @required Result error(),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return submitCode();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeStatus(Status status),
    Result changeEmail(String value),
    Result changeCode(String value),
    Result submitEmail(),
    Result submitCode(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitCode != null) {
      return submitCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeStatus(LoginEventChangeStatus value),
    @required Result changeEmail(LoginEventChangeEmail value),
    @required Result changeCode(LoginEventChangeCode value),
    @required Result submitEmail(LoginEventSubmitEmail value),
    @required Result submitCode(LoginEventSubmitCode value),
    @required Result error(LoginEventError value),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return submitCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeStatus(LoginEventChangeStatus value),
    Result changeEmail(LoginEventChangeEmail value),
    Result changeCode(LoginEventChangeCode value),
    Result submitEmail(LoginEventSubmitEmail value),
    Result submitCode(LoginEventSubmitCode value),
    Result error(LoginEventError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitCode != null) {
      return submitCode(this);
    }
    return orElse();
  }
}

abstract class LoginEventSubmitCode implements LoginEvent {
  const factory LoginEventSubmitCode() = _$LoginEventSubmitCode;
}

abstract class $LoginEventErrorCopyWith<$Res> {
  factory $LoginEventErrorCopyWith(
          LoginEventError value, $Res Function(LoginEventError) then) =
      _$LoginEventErrorCopyWithImpl<$Res>;
}

class _$LoginEventErrorCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventErrorCopyWith<$Res> {
  _$LoginEventErrorCopyWithImpl(
      LoginEventError _value, $Res Function(LoginEventError) _then)
      : super(_value, (v) => _then(v as LoginEventError));

  @override
  LoginEventError get _value => super._value as LoginEventError;
}

class _$LoginEventError implements LoginEventError {
  const _$LoginEventError();

  @override
  String toString() {
    return 'LoginEvent.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginEventError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeStatus(Status status),
    @required Result changeEmail(String value),
    @required Result changeCode(String value),
    @required Result submitEmail(),
    @required Result submitCode(),
    @required Result error(),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeStatus(Status status),
    Result changeEmail(String value),
    Result changeCode(String value),
    Result submitEmail(),
    Result submitCode(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeStatus(LoginEventChangeStatus value),
    @required Result changeEmail(LoginEventChangeEmail value),
    @required Result changeCode(LoginEventChangeCode value),
    @required Result submitEmail(LoginEventSubmitEmail value),
    @required Result submitCode(LoginEventSubmitCode value),
    @required Result error(LoginEventError value),
  }) {
    assert(changeStatus != null);
    assert(changeEmail != null);
    assert(changeCode != null);
    assert(submitEmail != null);
    assert(submitCode != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeStatus(LoginEventChangeStatus value),
    Result changeEmail(LoginEventChangeEmail value),
    Result changeCode(LoginEventChangeCode value),
    Result submitEmail(LoginEventSubmitEmail value),
    Result submitCode(LoginEventSubmitCode value),
    Result error(LoginEventError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginEventError implements LoginEvent {
  const factory LoginEventError() = _$LoginEventError;
}
