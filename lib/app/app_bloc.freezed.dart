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
}

// ignore: unused_element
const $AppState = _$AppStateTearOff();

mixin _$AppState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result login(bool auth),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(AppStateLoading value),
    @required Result login(AppStateLogin value),
    @required Result done(AppStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
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

@Implements(PageIncomplete)
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
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
    Result done(),
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
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AppStateLoading implements AppState, PageIncomplete {
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
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    return login(auth);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
    Result done(),
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
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
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

@Implements(PageIncomplete)
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
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result login(bool auth),
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
    @required Result loading(AppStateLoading value),
    @required Result login(AppStateLogin value),
    @required Result done(AppStateDone value),
  }) {
    assert(loading != null);
    assert(login != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(AppStateLoading value),
    Result login(AppStateLogin value),
    Result done(AppStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class AppStateDone implements AppState, PageIncomplete {
  const factory AppStateDone() = _$AppStateDone;
}

class _$AppEventTearOff {
  const _$AppEventTearOff();

// ignore: unused_element
  AppEventInit init() {
    return const AppEventInit();
  }

// ignore: unused_element
  AppEventReset reset() {
    return const AppEventReset();
  }

// ignore: unused_element
  AppEventLogoff logoff() {
    return const AppEventLogoff();
  }
}

// ignore: unused_element
const $AppEvent = _$AppEventTearOff();

mixin _$AppEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result reset(),
    @required Result logoff(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result reset(),
    Result logoff(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(AppEventInit value),
    @required Result reset(AppEventReset value),
    @required Result logoff(AppEventLogoff value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(AppEventInit value),
    Result reset(AppEventReset value),
    Result logoff(AppEventLogoff value),
    @required Result orElse(),
  });
}

abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

abstract class $AppEventInitCopyWith<$Res> {
  factory $AppEventInitCopyWith(
          AppEventInit value, $Res Function(AppEventInit) then) =
      _$AppEventInitCopyWithImpl<$Res>;
}

class _$AppEventInitCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $AppEventInitCopyWith<$Res> {
  _$AppEventInitCopyWithImpl(
      AppEventInit _value, $Res Function(AppEventInit) _then)
      : super(_value, (v) => _then(v as AppEventInit));

  @override
  AppEventInit get _value => super._value as AppEventInit;
}

class _$AppEventInit implements AppEventInit {
  const _$AppEventInit();

  @override
  String toString() {
    return 'AppEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result reset(),
    @required Result logoff(),
  }) {
    assert(init != null);
    assert(reset != null);
    assert(logoff != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result reset(),
    Result logoff(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(AppEventInit value),
    @required Result reset(AppEventReset value),
    @required Result logoff(AppEventLogoff value),
  }) {
    assert(init != null);
    assert(reset != null);
    assert(logoff != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(AppEventInit value),
    Result reset(AppEventReset value),
    Result logoff(AppEventLogoff value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AppEventInit implements AppEvent {
  const factory AppEventInit() = _$AppEventInit;
}

abstract class $AppEventResetCopyWith<$Res> {
  factory $AppEventResetCopyWith(
          AppEventReset value, $Res Function(AppEventReset) then) =
      _$AppEventResetCopyWithImpl<$Res>;
}

class _$AppEventResetCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $AppEventResetCopyWith<$Res> {
  _$AppEventResetCopyWithImpl(
      AppEventReset _value, $Res Function(AppEventReset) _then)
      : super(_value, (v) => _then(v as AppEventReset));

  @override
  AppEventReset get _value => super._value as AppEventReset;
}

class _$AppEventReset implements AppEventReset {
  const _$AppEventReset();

  @override
  String toString() {
    return 'AppEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppEventReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result reset(),
    @required Result logoff(),
  }) {
    assert(init != null);
    assert(reset != null);
    assert(logoff != null);
    return reset();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result reset(),
    Result logoff(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(AppEventInit value),
    @required Result reset(AppEventReset value),
    @required Result logoff(AppEventLogoff value),
  }) {
    assert(init != null);
    assert(reset != null);
    assert(logoff != null);
    return reset(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(AppEventInit value),
    Result reset(AppEventReset value),
    Result logoff(AppEventLogoff value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class AppEventReset implements AppEvent {
  const factory AppEventReset() = _$AppEventReset;
}

abstract class $AppEventLogoffCopyWith<$Res> {
  factory $AppEventLogoffCopyWith(
          AppEventLogoff value, $Res Function(AppEventLogoff) then) =
      _$AppEventLogoffCopyWithImpl<$Res>;
}

class _$AppEventLogoffCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $AppEventLogoffCopyWith<$Res> {
  _$AppEventLogoffCopyWithImpl(
      AppEventLogoff _value, $Res Function(AppEventLogoff) _then)
      : super(_value, (v) => _then(v as AppEventLogoff));

  @override
  AppEventLogoff get _value => super._value as AppEventLogoff;
}

class _$AppEventLogoff implements AppEventLogoff {
  const _$AppEventLogoff();

  @override
  String toString() {
    return 'AppEvent.logoff()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppEventLogoff);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result reset(),
    @required Result logoff(),
  }) {
    assert(init != null);
    assert(reset != null);
    assert(logoff != null);
    return logoff();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result reset(),
    Result logoff(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logoff != null) {
      return logoff();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(AppEventInit value),
    @required Result reset(AppEventReset value),
    @required Result logoff(AppEventLogoff value),
  }) {
    assert(init != null);
    assert(reset != null);
    assert(logoff != null);
    return logoff(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(AppEventInit value),
    Result reset(AppEventReset value),
    Result logoff(AppEventLogoff value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logoff != null) {
      return logoff(this);
    }
    return orElse();
  }
}

abstract class AppEventLogoff implements AppEvent {
  const factory AppEventLogoff() = _$AppEventLogoff;
}
