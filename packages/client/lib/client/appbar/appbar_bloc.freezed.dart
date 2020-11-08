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

class _$AppBarEventTearOff {
  const _$AppBarEventTearOff();

// ignore: unused_element
  AppBarEventSetup setup() {
    return const AppBarEventSetup();
  }

// ignore: unused_element
  AppBarEventChange change(ConnectionStatus status) {
    return AppBarEventChange(
      status,
    );
  }

// ignore: unused_element
  AppBarEventDisconnect disconnect() {
    return const AppBarEventDisconnect();
  }

// ignore: unused_element
  AppBarEventReconnect reconnect() {
    return const AppBarEventReconnect();
  }
}

// ignore: unused_element
const $AppBarEvent = _$AppBarEventTearOff();

mixin _$AppBarEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result change(ConnectionStatus status),
    @required Result disconnect(),
    @required Result reconnect(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result change(ConnectionStatus status),
    Result disconnect(),
    Result reconnect(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setup(AppBarEventSetup value),
    @required Result change(AppBarEventChange value),
    @required Result disconnect(AppBarEventDisconnect value),
    @required Result reconnect(AppBarEventReconnect value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(AppBarEventSetup value),
    Result change(AppBarEventChange value),
    Result disconnect(AppBarEventDisconnect value),
    Result reconnect(AppBarEventReconnect value),
    @required Result orElse(),
  });
}

abstract class $AppBarEventCopyWith<$Res> {
  factory $AppBarEventCopyWith(
          AppBarEvent value, $Res Function(AppBarEvent) then) =
      _$AppBarEventCopyWithImpl<$Res>;
}

class _$AppBarEventCopyWithImpl<$Res> implements $AppBarEventCopyWith<$Res> {
  _$AppBarEventCopyWithImpl(this._value, this._then);

  final AppBarEvent _value;
  // ignore: unused_field
  final $Res Function(AppBarEvent) _then;
}

abstract class $AppBarEventSetupCopyWith<$Res> {
  factory $AppBarEventSetupCopyWith(
          AppBarEventSetup value, $Res Function(AppBarEventSetup) then) =
      _$AppBarEventSetupCopyWithImpl<$Res>;
}

class _$AppBarEventSetupCopyWithImpl<$Res>
    extends _$AppBarEventCopyWithImpl<$Res>
    implements $AppBarEventSetupCopyWith<$Res> {
  _$AppBarEventSetupCopyWithImpl(
      AppBarEventSetup _value, $Res Function(AppBarEventSetup) _then)
      : super(_value, (v) => _then(v as AppBarEventSetup));

  @override
  AppBarEventSetup get _value => super._value as AppBarEventSetup;
}

class _$AppBarEventSetup implements AppBarEventSetup {
  const _$AppBarEventSetup();

  @override
  String toString() {
    return 'AppBarEvent.setup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppBarEventSetup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result change(ConnectionStatus status),
    @required Result disconnect(),
    @required Result reconnect(),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(disconnect != null);
    assert(reconnect != null);
    return setup();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result change(ConnectionStatus status),
    Result disconnect(),
    Result reconnect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setup != null) {
      return setup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setup(AppBarEventSetup value),
    @required Result change(AppBarEventChange value),
    @required Result disconnect(AppBarEventDisconnect value),
    @required Result reconnect(AppBarEventReconnect value),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(disconnect != null);
    assert(reconnect != null);
    return setup(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(AppBarEventSetup value),
    Result change(AppBarEventChange value),
    Result disconnect(AppBarEventDisconnect value),
    Result reconnect(AppBarEventReconnect value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class AppBarEventSetup implements AppBarEvent {
  const factory AppBarEventSetup() = _$AppBarEventSetup;
}

abstract class $AppBarEventChangeCopyWith<$Res> {
  factory $AppBarEventChangeCopyWith(
          AppBarEventChange value, $Res Function(AppBarEventChange) then) =
      _$AppBarEventChangeCopyWithImpl<$Res>;
  $Res call({ConnectionStatus status});
}

class _$AppBarEventChangeCopyWithImpl<$Res>
    extends _$AppBarEventCopyWithImpl<$Res>
    implements $AppBarEventChangeCopyWith<$Res> {
  _$AppBarEventChangeCopyWithImpl(
      AppBarEventChange _value, $Res Function(AppBarEventChange) _then)
      : super(_value, (v) => _then(v as AppBarEventChange));

  @override
  AppBarEventChange get _value => super._value as AppBarEventChange;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(AppBarEventChange(
      status == freezed ? _value.status : status as ConnectionStatus,
    ));
  }
}

class _$AppBarEventChange implements AppBarEventChange {
  const _$AppBarEventChange(this.status) : assert(status != null);

  @override
  final ConnectionStatus status;

  @override
  String toString() {
    return 'AppBarEvent.change(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppBarEventChange &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @override
  $AppBarEventChangeCopyWith<AppBarEventChange> get copyWith =>
      _$AppBarEventChangeCopyWithImpl<AppBarEventChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result change(ConnectionStatus status),
    @required Result disconnect(),
    @required Result reconnect(),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(disconnect != null);
    assert(reconnect != null);
    return change(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result change(ConnectionStatus status),
    Result disconnect(),
    Result reconnect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setup(AppBarEventSetup value),
    @required Result change(AppBarEventChange value),
    @required Result disconnect(AppBarEventDisconnect value),
    @required Result reconnect(AppBarEventReconnect value),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(disconnect != null);
    assert(reconnect != null);
    return change(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(AppBarEventSetup value),
    Result change(AppBarEventChange value),
    Result disconnect(AppBarEventDisconnect value),
    Result reconnect(AppBarEventReconnect value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class AppBarEventChange implements AppBarEvent {
  const factory AppBarEventChange(ConnectionStatus status) =
      _$AppBarEventChange;

  ConnectionStatus get status;
  $AppBarEventChangeCopyWith<AppBarEventChange> get copyWith;
}

abstract class $AppBarEventDisconnectCopyWith<$Res> {
  factory $AppBarEventDisconnectCopyWith(AppBarEventDisconnect value,
          $Res Function(AppBarEventDisconnect) then) =
      _$AppBarEventDisconnectCopyWithImpl<$Res>;
}

class _$AppBarEventDisconnectCopyWithImpl<$Res>
    extends _$AppBarEventCopyWithImpl<$Res>
    implements $AppBarEventDisconnectCopyWith<$Res> {
  _$AppBarEventDisconnectCopyWithImpl(
      AppBarEventDisconnect _value, $Res Function(AppBarEventDisconnect) _then)
      : super(_value, (v) => _then(v as AppBarEventDisconnect));

  @override
  AppBarEventDisconnect get _value => super._value as AppBarEventDisconnect;
}

class _$AppBarEventDisconnect implements AppBarEventDisconnect {
  const _$AppBarEventDisconnect();

  @override
  String toString() {
    return 'AppBarEvent.disconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppBarEventDisconnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result change(ConnectionStatus status),
    @required Result disconnect(),
    @required Result reconnect(),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(disconnect != null);
    assert(reconnect != null);
    return disconnect();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result change(ConnectionStatus status),
    Result disconnect(),
    Result reconnect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setup(AppBarEventSetup value),
    @required Result change(AppBarEventChange value),
    @required Result disconnect(AppBarEventDisconnect value),
    @required Result reconnect(AppBarEventReconnect value),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(disconnect != null);
    assert(reconnect != null);
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(AppBarEventSetup value),
    Result change(AppBarEventChange value),
    Result disconnect(AppBarEventDisconnect value),
    Result reconnect(AppBarEventReconnect value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class AppBarEventDisconnect implements AppBarEvent {
  const factory AppBarEventDisconnect() = _$AppBarEventDisconnect;
}

abstract class $AppBarEventReconnectCopyWith<$Res> {
  factory $AppBarEventReconnectCopyWith(AppBarEventReconnect value,
          $Res Function(AppBarEventReconnect) then) =
      _$AppBarEventReconnectCopyWithImpl<$Res>;
}

class _$AppBarEventReconnectCopyWithImpl<$Res>
    extends _$AppBarEventCopyWithImpl<$Res>
    implements $AppBarEventReconnectCopyWith<$Res> {
  _$AppBarEventReconnectCopyWithImpl(
      AppBarEventReconnect _value, $Res Function(AppBarEventReconnect) _then)
      : super(_value, (v) => _then(v as AppBarEventReconnect));

  @override
  AppBarEventReconnect get _value => super._value as AppBarEventReconnect;
}

class _$AppBarEventReconnect implements AppBarEventReconnect {
  const _$AppBarEventReconnect();

  @override
  String toString() {
    return 'AppBarEvent.reconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppBarEventReconnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result change(ConnectionStatus status),
    @required Result disconnect(),
    @required Result reconnect(),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(disconnect != null);
    assert(reconnect != null);
    return reconnect();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result change(ConnectionStatus status),
    Result disconnect(),
    Result reconnect(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reconnect != null) {
      return reconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setup(AppBarEventSetup value),
    @required Result change(AppBarEventChange value),
    @required Result disconnect(AppBarEventDisconnect value),
    @required Result reconnect(AppBarEventReconnect value),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(disconnect != null);
    assert(reconnect != null);
    return reconnect(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(AppBarEventSetup value),
    Result change(AppBarEventChange value),
    Result disconnect(AppBarEventDisconnect value),
    Result reconnect(AppBarEventReconnect value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reconnect != null) {
      return reconnect(this);
    }
    return orElse();
  }
}

abstract class AppBarEventReconnect implements AppBarEvent {
  const factory AppBarEventReconnect() = _$AppBarEventReconnect;
}
