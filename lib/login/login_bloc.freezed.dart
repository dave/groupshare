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
  _LoginState call(PageState page, EmailFormState email, CodeFormState code) {
    return _LoginState(
      page,
      email,
      code,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  PageState get page;
  EmailFormState get email;
  CodeFormState get code;

  $LoginStateCopyWith<LoginState> get copyWith;
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({PageState page, EmailFormState email, CodeFormState code});

  $PageStateCopyWith<$Res> get page;
  $EmailFormStateCopyWith<$Res> get email;
  $CodeFormStateCopyWith<$Res> get code;
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object page = freezed,
    Object email = freezed,
    Object code = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as PageState,
      email: email == freezed ? _value.email : email as EmailFormState,
      code: code == freezed ? _value.code : code as CodeFormState,
    ));
  }

  @override
  $PageStateCopyWith<$Res> get page {
    if (_value.page == null) {
      return null;
    }
    return $PageStateCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }

  @override
  $EmailFormStateCopyWith<$Res> get email {
    if (_value.email == null) {
      return null;
    }
    return $EmailFormStateCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value));
    });
  }

  @override
  $CodeFormStateCopyWith<$Res> get code {
    if (_value.code == null) {
      return null;
    }
    return $CodeFormStateCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value));
    });
  }
}

abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({PageState page, EmailFormState email, CodeFormState code});

  @override
  $PageStateCopyWith<$Res> get page;
  @override
  $EmailFormStateCopyWith<$Res> get email;
  @override
  $CodeFormStateCopyWith<$Res> get code;
}

class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object page = freezed,
    Object email = freezed,
    Object code = freezed,
  }) {
    return _then(_LoginState(
      page == freezed ? _value.page : page as PageState,
      email == freezed ? _value.email : email as EmailFormState,
      code == freezed ? _value.code : code as CodeFormState,
    ));
  }
}

class _$_LoginState implements _LoginState {
  const _$_LoginState(this.page, this.email, this.code)
      : assert(page != null),
        assert(email != null),
        assert(code != null);

  @override
  final PageState page;
  @override
  final EmailFormState email;
  @override
  final CodeFormState code;

  @override
  String toString() {
    return 'LoginState(page: $page, email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code);

  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      PageState page, EmailFormState email, CodeFormState code) = _$_LoginState;

  @override
  PageState get page;
  @override
  EmailFormState get email;
  @override
  CodeFormState get code;
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith;
}

class _$PageStateTearOff {
  const _$PageStateTearOff();

// ignore: unused_element
  PageStateEmail email() {
    return const PageStateEmail();
  }

// ignore: unused_element
  PageStateCode code() {
    return const PageStateCode();
  }

// ignore: unused_element
  PageStateDone done() {
    return const PageStateDone();
  }
}

// ignore: unused_element
const $PageState = _$PageStateTearOff();

mixin _$PageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result email(),
    @required Result code(),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(),
    Result code(),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result email(PageStateEmail value),
    @required Result code(PageStateCode value),
    @required Result done(PageStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(PageStateEmail value),
    Result code(PageStateCode value),
    Result done(PageStateDone value),
    @required Result orElse(),
  });
}

abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res>;
}

class _$PageStateCopyWithImpl<$Res> implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  final PageState _value;
  // ignore: unused_field
  final $Res Function(PageState) _then;
}

abstract class $PageStateEmailCopyWith<$Res> {
  factory $PageStateEmailCopyWith(
          PageStateEmail value, $Res Function(PageStateEmail) then) =
      _$PageStateEmailCopyWithImpl<$Res>;
}

class _$PageStateEmailCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateEmailCopyWith<$Res> {
  _$PageStateEmailCopyWithImpl(
      PageStateEmail _value, $Res Function(PageStateEmail) _then)
      : super(_value, (v) => _then(v as PageStateEmail));

  @override
  PageStateEmail get _value => super._value as PageStateEmail;
}

class _$PageStateEmail implements PageStateEmail {
  const _$PageStateEmail();

  @override
  String toString() {
    return 'PageState.email()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result email(),
    @required Result code(),
    @required Result done(),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return email();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(),
    Result code(),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (email != null) {
      return email();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result email(PageStateEmail value),
    @required Result code(PageStateCode value),
    @required Result done(PageStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return email(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(PageStateEmail value),
    Result code(PageStateCode value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class PageStateEmail implements PageState {
  const factory PageStateEmail() = _$PageStateEmail;
}

abstract class $PageStateCodeCopyWith<$Res> {
  factory $PageStateCodeCopyWith(
          PageStateCode value, $Res Function(PageStateCode) then) =
      _$PageStateCodeCopyWithImpl<$Res>;
}

class _$PageStateCodeCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateCodeCopyWith<$Res> {
  _$PageStateCodeCopyWithImpl(
      PageStateCode _value, $Res Function(PageStateCode) _then)
      : super(_value, (v) => _then(v as PageStateCode));

  @override
  PageStateCode get _value => super._value as PageStateCode;
}

class _$PageStateCode implements PageStateCode {
  const _$PageStateCode();

  @override
  String toString() {
    return 'PageState.code()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result email(),
    @required Result code(),
    @required Result done(),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return code();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result email(),
    Result code(),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (code != null) {
      return code();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result email(PageStateEmail value),
    @required Result code(PageStateCode value),
    @required Result done(PageStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return code(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(PageStateEmail value),
    Result code(PageStateCode value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (code != null) {
      return code(this);
    }
    return orElse();
  }
}

abstract class PageStateCode implements PageState {
  const factory PageStateCode() = _$PageStateCode;
}

abstract class $PageStateDoneCopyWith<$Res> {
  factory $PageStateDoneCopyWith(
          PageStateDone value, $Res Function(PageStateDone) then) =
      _$PageStateDoneCopyWithImpl<$Res>;
}

class _$PageStateDoneCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateDoneCopyWith<$Res> {
  _$PageStateDoneCopyWithImpl(
      PageStateDone _value, $Res Function(PageStateDone) _then)
      : super(_value, (v) => _then(v as PageStateDone));

  @override
  PageStateDone get _value => super._value as PageStateDone;
}

class _$PageStateDone implements PageStateDone {
  const _$PageStateDone();

  @override
  String toString() {
    return 'PageState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result email(),
    @required Result code(),
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
    Result email(),
    Result code(),
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
    @required Result email(PageStateEmail value),
    @required Result code(PageStateCode value),
    @required Result done(PageStateDone value),
  }) {
    assert(email != null);
    assert(code != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result email(PageStateEmail value),
    Result code(PageStateCode value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class PageStateDone implements PageState {
  const factory PageStateDone() = _$PageStateDone;
}

class _$EmailFormStateTearOff {
  const _$EmailFormStateTearOff();

// ignore: unused_element
  _EmailFormState call(
      {FormzStatus status = FormzStatus.pure,
      Email email = const Email.pure()}) {
    return _EmailFormState(
      status: status,
      email: email,
    );
  }
}

// ignore: unused_element
const $EmailFormState = _$EmailFormStateTearOff();

mixin _$EmailFormState {
  FormzStatus get status;
  Email get email;

  $EmailFormStateCopyWith<EmailFormState> get copyWith;
}

abstract class $EmailFormStateCopyWith<$Res> {
  factory $EmailFormStateCopyWith(
          EmailFormState value, $Res Function(EmailFormState) then) =
      _$EmailFormStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Email email});
}

class _$EmailFormStateCopyWithImpl<$Res>
    implements $EmailFormStateCopyWith<$Res> {
  _$EmailFormStateCopyWithImpl(this._value, this._then);

  final EmailFormState _value;
  // ignore: unused_field
  final $Res Function(EmailFormState) _then;

  @override
  $Res call({
    Object status = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as FormzStatus,
      email: email == freezed ? _value.email : email as Email,
    ));
  }
}

abstract class _$EmailFormStateCopyWith<$Res>
    implements $EmailFormStateCopyWith<$Res> {
  factory _$EmailFormStateCopyWith(
          _EmailFormState value, $Res Function(_EmailFormState) then) =
      __$EmailFormStateCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, Email email});
}

class __$EmailFormStateCopyWithImpl<$Res>
    extends _$EmailFormStateCopyWithImpl<$Res>
    implements _$EmailFormStateCopyWith<$Res> {
  __$EmailFormStateCopyWithImpl(
      _EmailFormState _value, $Res Function(_EmailFormState) _then)
      : super(_value, (v) => _then(v as _EmailFormState));

  @override
  _EmailFormState get _value => super._value as _EmailFormState;

  @override
  $Res call({
    Object status = freezed,
    Object email = freezed,
  }) {
    return _then(_EmailFormState(
      status: status == freezed ? _value.status : status as FormzStatus,
      email: email == freezed ? _value.email : email as Email,
    ));
  }
}

class _$_EmailFormState implements _EmailFormState {
  const _$_EmailFormState(
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
    return 'EmailFormState(status: $status, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailFormState &&
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
  _$EmailFormStateCopyWith<_EmailFormState> get copyWith =>
      __$EmailFormStateCopyWithImpl<_EmailFormState>(this, _$identity);
}

abstract class _EmailFormState implements EmailFormState {
  const factory _EmailFormState({FormzStatus status, Email email}) =
      _$_EmailFormState;

  @override
  FormzStatus get status;
  @override
  Email get email;
  @override
  _$EmailFormStateCopyWith<_EmailFormState> get copyWith;
}

class _$CodeFormStateTearOff {
  const _$CodeFormStateTearOff();

// ignore: unused_element
  _CodeFormState call(
      {FormzStatus status = FormzStatus.pure, Code code = const Code.pure()}) {
    return _CodeFormState(
      status: status,
      code: code,
    );
  }
}

// ignore: unused_element
const $CodeFormState = _$CodeFormStateTearOff();

mixin _$CodeFormState {
  FormzStatus get status;
  Code get code;

  $CodeFormStateCopyWith<CodeFormState> get copyWith;
}

abstract class $CodeFormStateCopyWith<$Res> {
  factory $CodeFormStateCopyWith(
          CodeFormState value, $Res Function(CodeFormState) then) =
      _$CodeFormStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Code code});
}

class _$CodeFormStateCopyWithImpl<$Res>
    implements $CodeFormStateCopyWith<$Res> {
  _$CodeFormStateCopyWithImpl(this._value, this._then);

  final CodeFormState _value;
  // ignore: unused_field
  final $Res Function(CodeFormState) _then;

  @override
  $Res call({
    Object status = freezed,
    Object code = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as FormzStatus,
      code: code == freezed ? _value.code : code as Code,
    ));
  }
}

abstract class _$CodeFormStateCopyWith<$Res>
    implements $CodeFormStateCopyWith<$Res> {
  factory _$CodeFormStateCopyWith(
          _CodeFormState value, $Res Function(_CodeFormState) then) =
      __$CodeFormStateCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, Code code});
}

class __$CodeFormStateCopyWithImpl<$Res>
    extends _$CodeFormStateCopyWithImpl<$Res>
    implements _$CodeFormStateCopyWith<$Res> {
  __$CodeFormStateCopyWithImpl(
      _CodeFormState _value, $Res Function(_CodeFormState) _then)
      : super(_value, (v) => _then(v as _CodeFormState));

  @override
  _CodeFormState get _value => super._value as _CodeFormState;

  @override
  $Res call({
    Object status = freezed,
    Object code = freezed,
  }) {
    return _then(_CodeFormState(
      status: status == freezed ? _value.status : status as FormzStatus,
      code: code == freezed ? _value.code : code as Code,
    ));
  }
}

class _$_CodeFormState implements _CodeFormState {
  const _$_CodeFormState(
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
    return 'CodeFormState(status: $status, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeFormState &&
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
  _$CodeFormStateCopyWith<_CodeFormState> get copyWith =>
      __$CodeFormStateCopyWithImpl<_CodeFormState>(this, _$identity);
}

abstract class _CodeFormState implements CodeFormState {
  const factory _CodeFormState({FormzStatus status, Code code}) =
      _$_CodeFormState;

  @override
  FormzStatus get status;
  @override
  Code get code;
  @override
  _$CodeFormStateCopyWith<_CodeFormState> get copyWith;
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
