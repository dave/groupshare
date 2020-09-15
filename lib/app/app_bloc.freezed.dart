// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AppStateTearOff {
  const _$AppStateTearOff();

// ignore: unused_element
  AppStateLoading loading() {
    return const AppStateLoading();
  }

// ignore: unused_element
  AppStateLogin login(bool auth) {
    return AppStateLogin(
      auth,
    );
  }

// ignore: unused_element
  AppStateDone done() {
    return const AppStateDone();
  }

// ignore: unused_element
  AppStateOffline offline() {
    return const AppStateOffline();
  }

// ignore: unused_element
  AppStateError error(dynamic error, StackTrace stack, AppState retryState) {
    return AppStateError(
      error,
      stack,
      retryState,
    );
  }
}

// ignore: unused_element
const $AppState = _$AppStateTearOff();

mixin _$AppState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result login(bool auth),
    @required Result done(),
    @required Result offline(),
    @required
        Result error(dynamic error, StackTrace stack, AppState retryState),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
    Result done(),
    Result offline(),
    Result error(dynamic error, StackTrace stack, AppState retryState),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AppStateLoading value),
    @required Result login(AppStateLogin value),
    @required Result done(AppStateDone value),
    @required Result offline(AppStateOffline value),
    @required Result error(AppStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
    Result offline(AppStateOffline value),
    Result error(AppStateError value),
    @required Result orElse(),
  });
}

abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

abstract class $AppStateLoadingCopyWith<$Res> {
  factory $AppStateLoadingCopyWith(
          AppStateLoading value, $Res Function(AppStateLoading) then) =
      _$AppStateLoadingCopyWithImpl<$Res>;
}

class _$AppStateLoadingCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateLoadingCopyWith<$Res> {
  _$AppStateLoadingCopyWithImpl(
      AppStateLoading _value, $Res Function(AppStateLoading) _then)
      : super(_value, (v) => _then(v as AppStateLoading));

  @override
  AppStateLoading get _value => super._value as AppStateLoading;
}

class _$AppStateLoading implements AppStateLoading {
  const _$AppStateLoading();

  @override
  String toString() {
    return 'AppState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result login(bool auth),
    @required Result done(),
    @required Result offline(),
    @required
        Result error(dynamic error, StackTrace stack, AppState retryState),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
    Result done(),
    Result offline(),
    Result error(dynamic error, StackTrace stack, AppState retryState),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AppStateLoading value),
    @required Result login(AppStateLogin value),
    @required Result done(AppStateDone value),
    @required Result offline(AppStateOffline value),
    @required Result error(AppStateError value),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
    Result offline(AppStateOffline value),
    Result error(AppStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppStateLoading implements AppState {
  const factory AppStateLoading() = _$AppStateLoading;
}

abstract class $AppStateLoginCopyWith<$Res> {
  factory $AppStateLoginCopyWith(
          AppStateLogin value, $Res Function(AppStateLogin) then) =
      _$AppStateLoginCopyWithImpl<$Res>;
  $Res call({bool auth});
}

class _$AppStateLoginCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateLoginCopyWith<$Res> {
  _$AppStateLoginCopyWithImpl(
      AppStateLogin _value, $Res Function(AppStateLogin) _then)
      : super(_value, (v) => _then(v as AppStateLogin));

  @override
  AppStateLogin get _value => super._value as AppStateLogin;

  @override
  $Res call({
    Object auth = freezed,
  }) {
    return _then(AppStateLogin(
      auth == freezed ? _value.auth : auth as bool,
    ));
  }
}

class _$AppStateLogin implements AppStateLogin {
  const _$AppStateLogin(this.auth) : assert(auth != null);

  @override
  final bool auth;

  @override
  String toString() {
    return 'AppState.login(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppStateLogin &&
            (identical(other.auth, auth) ||
                const DeepCollectionEquality().equals(other.auth, auth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(auth);

  @override
  $AppStateLoginCopyWith<AppStateLogin> get copyWith =>
      _$AppStateLoginCopyWithImpl<AppStateLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result login(bool auth),
    @required Result done(),
    @required Result offline(),
    @required
        Result error(dynamic error, StackTrace stack, AppState retryState),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return login(auth);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
    Result done(),
    Result offline(),
    Result error(dynamic error, StackTrace stack, AppState retryState),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AppStateLoading value),
    @required Result login(AppStateLogin value),
    @required Result done(AppStateDone value),
    @required Result offline(AppStateOffline value),
    @required Result error(AppStateError value),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
    Result offline(AppStateOffline value),
    Result error(AppStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AppStateLogin implements AppState {
  const factory AppStateLogin(bool auth) = _$AppStateLogin;

  bool get auth;
  $AppStateLoginCopyWith<AppStateLogin> get copyWith;
}

abstract class $AppStateDoneCopyWith<$Res> {
  factory $AppStateDoneCopyWith(
          AppStateDone value, $Res Function(AppStateDone) then) =
      _$AppStateDoneCopyWithImpl<$Res>;
}

class _$AppStateDoneCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateDoneCopyWith<$Res> {
  _$AppStateDoneCopyWithImpl(
      AppStateDone _value, $Res Function(AppStateDone) _then)
      : super(_value, (v) => _then(v as AppStateDone));

  @override
  AppStateDone get _value => super._value as AppStateDone;
}

class _$AppStateDone implements AppStateDone {
  const _$AppStateDone();

  @override
  String toString() {
    return 'AppState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result login(bool auth),
    @required Result done(),
    @required Result offline(),
    @required
        Result error(dynamic error, StackTrace stack, AppState retryState),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
    Result done(),
    Result offline(),
    Result error(dynamic error, StackTrace stack, AppState retryState),
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
    @required Result loading(AppStateLoading value),
    @required Result login(AppStateLogin value),
    @required Result done(AppStateDone value),
    @required Result offline(AppStateOffline value),
    @required Result error(AppStateError value),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
    Result offline(AppStateOffline value),
    Result error(AppStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class AppStateDone implements AppState {
  const factory AppStateDone() = _$AppStateDone;
}

abstract class $AppStateOfflineCopyWith<$Res> {
  factory $AppStateOfflineCopyWith(
          AppStateOffline value, $Res Function(AppStateOffline) then) =
      _$AppStateOfflineCopyWithImpl<$Res>;
}

class _$AppStateOfflineCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateOfflineCopyWith<$Res> {
  _$AppStateOfflineCopyWithImpl(
      AppStateOffline _value, $Res Function(AppStateOffline) _then)
      : super(_value, (v) => _then(v as AppStateOffline));

  @override
  AppStateOffline get _value => super._value as AppStateOffline;
}

class _$AppStateOffline implements AppStateOffline {
  const _$AppStateOffline();

  @override
  String toString() {
    return 'AppState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppStateOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result login(bool auth),
    @required Result done(),
    @required Result offline(),
    @required
        Result error(dynamic error, StackTrace stack, AppState retryState),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return offline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
    Result done(),
    Result offline(),
    Result error(dynamic error, StackTrace stack, AppState retryState),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AppStateLoading value),
    @required Result login(AppStateLogin value),
    @required Result done(AppStateDone value),
    @required Result offline(AppStateOffline value),
    @required Result error(AppStateError value),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return offline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
    Result offline(AppStateOffline value),
    Result error(AppStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class AppStateOffline implements AppState {
  const factory AppStateOffline() = _$AppStateOffline;
}

abstract class $AppStateErrorCopyWith<$Res> {
  factory $AppStateErrorCopyWith(
          AppStateError value, $Res Function(AppStateError) then) =
      _$AppStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, StackTrace stack, AppState retryState});
}

class _$AppStateErrorCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateErrorCopyWith<$Res> {
  _$AppStateErrorCopyWithImpl(
      AppStateError _value, $Res Function(AppStateError) _then)
      : super(_value, (v) => _then(v as AppStateError));

  @override
  AppStateError get _value => super._value as AppStateError;

  @override
  $Res call({
    Object error = freezed,
    Object stack = freezed,
    Object retryState = freezed,
  }) {
    return _then(AppStateError(
      error == freezed ? _value.error : error as dynamic,
      stack == freezed ? _value.stack : stack as StackTrace,
      retryState == freezed ? _value.retryState : retryState as AppState,
    ));
  }
}

class _$AppStateError implements AppStateError {
  const _$AppStateError(this.error, this.stack, this.retryState)
      : assert(error != null),
        assert(stack != null),
        assert(retryState != null);

  @override
  final dynamic error;
  @override
  final StackTrace stack;
  @override
  final AppState retryState;

  @override
  String toString() {
    return 'AppState.error(error: $error, stack: $stack, retryState: $retryState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stack, stack) ||
                const DeepCollectionEquality().equals(other.stack, stack)) &&
            (identical(other.retryState, retryState) ||
                const DeepCollectionEquality()
                    .equals(other.retryState, retryState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stack) ^
      const DeepCollectionEquality().hash(retryState);

  @override
  $AppStateErrorCopyWith<AppStateError> get copyWith =>
      _$AppStateErrorCopyWithImpl<AppStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result login(bool auth),
    @required Result done(),
    @required Result offline(),
    @required
        Result error(dynamic error, StackTrace stack, AppState retryState),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return error(this.error, stack, retryState);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
    Result done(),
    Result offline(),
    Result error(dynamic error, StackTrace stack, AppState retryState),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, stack, retryState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AppStateLoading value),
    @required Result login(AppStateLogin value),
    @required Result done(AppStateDone value),
    @required Result offline(AppStateOffline value),
    @required Result error(AppStateError value),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    assert(offline != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
    Result offline(AppStateOffline value),
    Result error(AppStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AppStateError implements AppState {
  const factory AppStateError(
      dynamic error, StackTrace stack, AppState retryState) = _$AppStateError;

  dynamic get error;
  StackTrace get stack;
  AppState get retryState;
  $AppStateErrorCopyWith<AppStateError> get copyWith;
}
