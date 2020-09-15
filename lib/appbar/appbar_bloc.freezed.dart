// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'appbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AppBarStateTearOff {
  const _$AppBarStateTearOff();

// ignore: unused_element
  AppbarStateSaved saved() {
    return const AppbarStateSaved();
  }

// ignore: unused_element
  AppbarStateConnecting connecting() {
    return const AppbarStateConnecting();
  }

// ignore: unused_element
  AppbarStateWaiting waiting() {
    return const AppbarStateWaiting();
  }

// ignore: unused_element
  AppbarStateOffline offline() {
    return const AppbarStateOffline();
  }

// ignore: unused_element
  AppbarStateFailed failed() {
    return const AppbarStateFailed();
  }
}

// ignore: unused_element
const $AppBarState = _$AppBarStateTearOff();

mixin _$AppBarState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(),
    @required Result connecting(),
    @required Result waiting(),
    @required Result offline(),
    @required Result failed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(),
    Result connecting(),
    Result waiting(),
    Result offline(),
    Result failed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(AppbarStateSaved value),
    @required Result connecting(AppbarStateConnecting value),
    @required Result waiting(AppbarStateWaiting value),
    @required Result offline(AppbarStateOffline value),
    @required Result failed(AppbarStateFailed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(AppbarStateSaved value),
    Result connecting(AppbarStateConnecting value),
    Result waiting(AppbarStateWaiting value),
    Result offline(AppbarStateOffline value),
    Result failed(AppbarStateFailed value),
    @required Result orElse(),
  });
}

abstract class $AppBarStateCopyWith<$Res> {
  factory $AppBarStateCopyWith(
          AppBarState value, $Res Function(AppBarState) then) =
      _$AppBarStateCopyWithImpl<$Res>;
}

class _$AppBarStateCopyWithImpl<$Res> implements $AppBarStateCopyWith<$Res> {
  _$AppBarStateCopyWithImpl(this._value, this._then);

  final AppBarState _value;
  // ignore: unused_field
  final $Res Function(AppBarState) _then;
}

abstract class $AppbarStateSavedCopyWith<$Res> {
  factory $AppbarStateSavedCopyWith(
          AppbarStateSaved value, $Res Function(AppbarStateSaved) then) =
      _$AppbarStateSavedCopyWithImpl<$Res>;
}

class _$AppbarStateSavedCopyWithImpl<$Res>
    extends _$AppBarStateCopyWithImpl<$Res>
    implements $AppbarStateSavedCopyWith<$Res> {
  _$AppbarStateSavedCopyWithImpl(
      AppbarStateSaved _value, $Res Function(AppbarStateSaved) _then)
      : super(_value, (v) => _then(v as AppbarStateSaved));

  @override
  AppbarStateSaved get _value => super._value as AppbarStateSaved;
}

class _$AppbarStateSaved implements AppbarStateSaved {
  const _$AppbarStateSaved();

  @override
  String toString() {
    return 'AppBarState.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppbarStateSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(),
    @required Result connecting(),
    @required Result waiting(),
    @required Result offline(),
    @required Result failed(),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(),
    Result connecting(),
    Result waiting(),
    Result offline(),
    Result failed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(AppbarStateSaved value),
    @required Result connecting(AppbarStateConnecting value),
    @required Result waiting(AppbarStateWaiting value),
    @required Result offline(AppbarStateOffline value),
    @required Result failed(AppbarStateFailed value),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(AppbarStateSaved value),
    Result connecting(AppbarStateConnecting value),
    Result waiting(AppbarStateWaiting value),
    Result offline(AppbarStateOffline value),
    Result failed(AppbarStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class AppbarStateSaved implements AppBarState {
  const factory AppbarStateSaved() = _$AppbarStateSaved;
}

abstract class $AppbarStateConnectingCopyWith<$Res> {
  factory $AppbarStateConnectingCopyWith(AppbarStateConnecting value,
          $Res Function(AppbarStateConnecting) then) =
      _$AppbarStateConnectingCopyWithImpl<$Res>;
}

class _$AppbarStateConnectingCopyWithImpl<$Res>
    extends _$AppBarStateCopyWithImpl<$Res>
    implements $AppbarStateConnectingCopyWith<$Res> {
  _$AppbarStateConnectingCopyWithImpl(
      AppbarStateConnecting _value, $Res Function(AppbarStateConnecting) _then)
      : super(_value, (v) => _then(v as AppbarStateConnecting));

  @override
  AppbarStateConnecting get _value => super._value as AppbarStateConnecting;
}

class _$AppbarStateConnecting implements AppbarStateConnecting {
  const _$AppbarStateConnecting();

  @override
  String toString() {
    return 'AppBarState.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppbarStateConnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(),
    @required Result connecting(),
    @required Result waiting(),
    @required Result offline(),
    @required Result failed(),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return connecting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(),
    Result connecting(),
    Result waiting(),
    Result offline(),
    Result failed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(AppbarStateSaved value),
    @required Result connecting(AppbarStateConnecting value),
    @required Result waiting(AppbarStateWaiting value),
    @required Result offline(AppbarStateOffline value),
    @required Result failed(AppbarStateFailed value),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(AppbarStateSaved value),
    Result connecting(AppbarStateConnecting value),
    Result waiting(AppbarStateWaiting value),
    Result offline(AppbarStateOffline value),
    Result failed(AppbarStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class AppbarStateConnecting implements AppBarState {
  const factory AppbarStateConnecting() = _$AppbarStateConnecting;
}

abstract class $AppbarStateWaitingCopyWith<$Res> {
  factory $AppbarStateWaitingCopyWith(
          AppbarStateWaiting value, $Res Function(AppbarStateWaiting) then) =
      _$AppbarStateWaitingCopyWithImpl<$Res>;
}

class _$AppbarStateWaitingCopyWithImpl<$Res>
    extends _$AppBarStateCopyWithImpl<$Res>
    implements $AppbarStateWaitingCopyWith<$Res> {
  _$AppbarStateWaitingCopyWithImpl(
      AppbarStateWaiting _value, $Res Function(AppbarStateWaiting) _then)
      : super(_value, (v) => _then(v as AppbarStateWaiting));

  @override
  AppbarStateWaiting get _value => super._value as AppbarStateWaiting;
}

class _$AppbarStateWaiting implements AppbarStateWaiting {
  const _$AppbarStateWaiting();

  @override
  String toString() {
    return 'AppBarState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppbarStateWaiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(),
    @required Result connecting(),
    @required Result waiting(),
    @required Result offline(),
    @required Result failed(),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return waiting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(),
    Result connecting(),
    Result waiting(),
    Result offline(),
    Result failed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(AppbarStateSaved value),
    @required Result connecting(AppbarStateConnecting value),
    @required Result waiting(AppbarStateWaiting value),
    @required Result offline(AppbarStateOffline value),
    @required Result failed(AppbarStateFailed value),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(AppbarStateSaved value),
    Result connecting(AppbarStateConnecting value),
    Result waiting(AppbarStateWaiting value),
    Result offline(AppbarStateOffline value),
    Result failed(AppbarStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class AppbarStateWaiting implements AppBarState {
  const factory AppbarStateWaiting() = _$AppbarStateWaiting;
}

abstract class $AppbarStateOfflineCopyWith<$Res> {
  factory $AppbarStateOfflineCopyWith(
          AppbarStateOffline value, $Res Function(AppbarStateOffline) then) =
      _$AppbarStateOfflineCopyWithImpl<$Res>;
}

class _$AppbarStateOfflineCopyWithImpl<$Res>
    extends _$AppBarStateCopyWithImpl<$Res>
    implements $AppbarStateOfflineCopyWith<$Res> {
  _$AppbarStateOfflineCopyWithImpl(
      AppbarStateOffline _value, $Res Function(AppbarStateOffline) _then)
      : super(_value, (v) => _then(v as AppbarStateOffline));

  @override
  AppbarStateOffline get _value => super._value as AppbarStateOffline;
}

class _$AppbarStateOffline implements AppbarStateOffline {
  const _$AppbarStateOffline();

  @override
  String toString() {
    return 'AppBarState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppbarStateOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(),
    @required Result connecting(),
    @required Result waiting(),
    @required Result offline(),
    @required Result failed(),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return offline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(),
    Result connecting(),
    Result waiting(),
    Result offline(),
    Result failed(),
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
    @required Result saved(AppbarStateSaved value),
    @required Result connecting(AppbarStateConnecting value),
    @required Result waiting(AppbarStateWaiting value),
    @required Result offline(AppbarStateOffline value),
    @required Result failed(AppbarStateFailed value),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return offline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(AppbarStateSaved value),
    Result connecting(AppbarStateConnecting value),
    Result waiting(AppbarStateWaiting value),
    Result offline(AppbarStateOffline value),
    Result failed(AppbarStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class AppbarStateOffline implements AppBarState {
  const factory AppbarStateOffline() = _$AppbarStateOffline;
}

abstract class $AppbarStateFailedCopyWith<$Res> {
  factory $AppbarStateFailedCopyWith(
          AppbarStateFailed value, $Res Function(AppbarStateFailed) then) =
      _$AppbarStateFailedCopyWithImpl<$Res>;
}

class _$AppbarStateFailedCopyWithImpl<$Res>
    extends _$AppBarStateCopyWithImpl<$Res>
    implements $AppbarStateFailedCopyWith<$Res> {
  _$AppbarStateFailedCopyWithImpl(
      AppbarStateFailed _value, $Res Function(AppbarStateFailed) _then)
      : super(_value, (v) => _then(v as AppbarStateFailed));

  @override
  AppbarStateFailed get _value => super._value as AppbarStateFailed;
}

class _$AppbarStateFailed implements AppbarStateFailed {
  const _$AppbarStateFailed();

  @override
  String toString() {
    return 'AppBarState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppbarStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(),
    @required Result connecting(),
    @required Result waiting(),
    @required Result offline(),
    @required Result failed(),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return failed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(),
    Result connecting(),
    Result waiting(),
    Result offline(),
    Result failed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(AppbarStateSaved value),
    @required Result connecting(AppbarStateConnecting value),
    @required Result waiting(AppbarStateWaiting value),
    @required Result offline(AppbarStateOffline value),
    @required Result failed(AppbarStateFailed value),
  }) {
    assert(saved != null);
    assert(connecting != null);
    assert(waiting != null);
    assert(offline != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(AppbarStateSaved value),
    Result connecting(AppbarStateConnecting value),
    Result waiting(AppbarStateWaiting value),
    Result offline(AppbarStateOffline value),
    Result failed(AppbarStateFailed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class AppbarStateFailed implements AppBarState {
  const factory AppbarStateFailed() = _$AppbarStateFailed;
}
