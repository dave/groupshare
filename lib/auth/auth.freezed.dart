// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  AuthStateEmpty empty() {
    return const AuthStateEmpty();
  }

// ignore: unused_element
  AuthStateAuth auth() {
    return const AuthStateAuth();
  }

// ignore: unused_element
  AuthStateDone done() {
    return const AuthStateDone();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result auth(),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result auth(),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(AuthStateEmpty value),
    @required Result auth(AuthStateAuth value),
    @required Result done(AuthStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(AuthStateEmpty value),
    Result auth(AuthStateAuth value),
    Result done(AuthStateDone value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $AuthStateEmptyCopyWith<$Res> {
  factory $AuthStateEmptyCopyWith(
          AuthStateEmpty value, $Res Function(AuthStateEmpty) then) =
      _$AuthStateEmptyCopyWithImpl<$Res>;
}

class _$AuthStateEmptyCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateEmptyCopyWith<$Res> {
  _$AuthStateEmptyCopyWithImpl(
      AuthStateEmpty _value, $Res Function(AuthStateEmpty) _then)
      : super(_value, (v) => _then(v as AuthStateEmpty));

  @override
  AuthStateEmpty get _value => super._value as AuthStateEmpty;
}

class _$AuthStateEmpty implements AuthStateEmpty {
  const _$AuthStateEmpty();

  @override
  String toString() {
    return 'AuthState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result auth(),
    @required Result done(),
  }) {
    assert(empty != null);
    assert(auth != null);
    assert(done != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result auth(),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(AuthStateEmpty value),
    @required Result auth(AuthStateAuth value),
    @required Result done(AuthStateDone value),
  }) {
    assert(empty != null);
    assert(auth != null);
    assert(done != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(AuthStateEmpty value),
    Result auth(AuthStateAuth value),
    Result done(AuthStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class AuthStateEmpty implements AuthState {
  const factory AuthStateEmpty() = _$AuthStateEmpty;
}

abstract class $AuthStateAuthCopyWith<$Res> {
  factory $AuthStateAuthCopyWith(
          AuthStateAuth value, $Res Function(AuthStateAuth) then) =
      _$AuthStateAuthCopyWithImpl<$Res>;
}

class _$AuthStateAuthCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateAuthCopyWith<$Res> {
  _$AuthStateAuthCopyWithImpl(
      AuthStateAuth _value, $Res Function(AuthStateAuth) _then)
      : super(_value, (v) => _then(v as AuthStateAuth));

  @override
  AuthStateAuth get _value => super._value as AuthStateAuth;
}

class _$AuthStateAuth implements AuthStateAuth {
  const _$AuthStateAuth();

  @override
  String toString() {
    return 'AuthState.auth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result auth(),
    @required Result done(),
  }) {
    assert(empty != null);
    assert(auth != null);
    assert(done != null);
    return auth();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result auth(),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(AuthStateEmpty value),
    @required Result auth(AuthStateAuth value),
    @required Result done(AuthStateDone value),
  }) {
    assert(empty != null);
    assert(auth != null);
    assert(done != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(AuthStateEmpty value),
    Result auth(AuthStateAuth value),
    Result done(AuthStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuth implements AuthState {
  const factory AuthStateAuth() = _$AuthStateAuth;
}

abstract class $AuthStateDoneCopyWith<$Res> {
  factory $AuthStateDoneCopyWith(
          AuthStateDone value, $Res Function(AuthStateDone) then) =
      _$AuthStateDoneCopyWithImpl<$Res>;
}

class _$AuthStateDoneCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateDoneCopyWith<$Res> {
  _$AuthStateDoneCopyWithImpl(
      AuthStateDone _value, $Res Function(AuthStateDone) _then)
      : super(_value, (v) => _then(v as AuthStateDone));

  @override
  AuthStateDone get _value => super._value as AuthStateDone;
}

class _$AuthStateDone implements AuthStateDone {
  const _$AuthStateDone();

  @override
  String toString() {
    return 'AuthState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result auth(),
    @required Result done(),
  }) {
    assert(empty != null);
    assert(auth != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result auth(),
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
    @required Result empty(AuthStateEmpty value),
    @required Result auth(AuthStateAuth value),
    @required Result done(AuthStateDone value),
  }) {
    assert(empty != null);
    assert(auth != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(AuthStateEmpty value),
    Result auth(AuthStateAuth value),
    Result done(AuthStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class AuthStateDone implements AuthState {
  const factory AuthStateDone() = _$AuthStateDone;
}
