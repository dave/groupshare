// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

// ignore: unused_element
  DetailsStateLoading loading() {
    return const DetailsStateLoading();
  }

// ignore: unused_element
  DetailsStateDone done(String id, String name) {
    return DetailsStateDone(
      id,
      name,
    );
  }

// ignore: unused_element
  DetailsStateFlush flush() {
    return const DetailsStateFlush();
  }

// ignore: unused_element
  DetailsStateRefreshFinished refreshFinished() {
    return const DetailsStateRefreshFinished();
  }
}

// ignore: unused_element
const $DetailsState = _$DetailsStateTearOff();

mixin _$DetailsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result done(String id, String name),
    @required Result flush(),
    @required Result refreshFinished(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
    Result flush(),
    Result refreshFinished(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(DetailsStateLoading value),
    @required Result done(DetailsStateDone value),
    @required Result flush(DetailsStateFlush value),
    @required Result refreshFinished(DetailsStateRefreshFinished value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(DetailsStateLoading value),
    Result done(DetailsStateDone value),
    Result flush(DetailsStateFlush value),
    Result refreshFinished(DetailsStateRefreshFinished value),
    @required Result orElse(),
  });
}

abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
}

class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;
}

abstract class $DetailsStateLoadingCopyWith<$Res> {
  factory $DetailsStateLoadingCopyWith(
          DetailsStateLoading value, $Res Function(DetailsStateLoading) then) =
      _$DetailsStateLoadingCopyWithImpl<$Res>;
}

class _$DetailsStateLoadingCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsStateLoadingCopyWith<$Res> {
  _$DetailsStateLoadingCopyWithImpl(
      DetailsStateLoading _value, $Res Function(DetailsStateLoading) _then)
      : super(_value, (v) => _then(v as DetailsStateLoading));

  @override
  DetailsStateLoading get _value => super._value as DetailsStateLoading;
}

@Implements(Incomplete)
class _$DetailsStateLoading implements DetailsStateLoading {
  const _$DetailsStateLoading();

  @override
  String toString() {
    return 'DetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result done(String id, String name),
    @required Result flush(),
    @required Result refreshFinished(),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(flush != null);
    assert(refreshFinished != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
    Result flush(),
    Result refreshFinished(),
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
    @required Result loading(DetailsStateLoading value),
    @required Result done(DetailsStateDone value),
    @required Result flush(DetailsStateFlush value),
    @required Result refreshFinished(DetailsStateRefreshFinished value),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(flush != null);
    assert(refreshFinished != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(DetailsStateLoading value),
    Result done(DetailsStateDone value),
    Result flush(DetailsStateFlush value),
    Result refreshFinished(DetailsStateRefreshFinished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DetailsStateLoading implements DetailsState, Incomplete {
  const factory DetailsStateLoading() = _$DetailsStateLoading;
}

abstract class $DetailsStateDoneCopyWith<$Res> {
  factory $DetailsStateDoneCopyWith(
          DetailsStateDone value, $Res Function(DetailsStateDone) then) =
      _$DetailsStateDoneCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

class _$DetailsStateDoneCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsStateDoneCopyWith<$Res> {
  _$DetailsStateDoneCopyWithImpl(
      DetailsStateDone _value, $Res Function(DetailsStateDone) _then)
      : super(_value, (v) => _then(v as DetailsStateDone));

  @override
  DetailsStateDone get _value => super._value as DetailsStateDone;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(DetailsStateDone(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
    ));
  }
}

@Implements(Complete)
class _$DetailsStateDone implements DetailsStateDone {
  const _$DetailsStateDone(this.id, this.name)
      : assert(id != null),
        assert(name != null);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'DetailsState.done(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailsStateDone &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  $DetailsStateDoneCopyWith<DetailsStateDone> get copyWith =>
      _$DetailsStateDoneCopyWithImpl<DetailsStateDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result done(String id, String name),
    @required Result flush(),
    @required Result refreshFinished(),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(flush != null);
    assert(refreshFinished != null);
    return done(id, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
    Result flush(),
    Result refreshFinished(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(DetailsStateLoading value),
    @required Result done(DetailsStateDone value),
    @required Result flush(DetailsStateFlush value),
    @required Result refreshFinished(DetailsStateRefreshFinished value),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(flush != null);
    assert(refreshFinished != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(DetailsStateLoading value),
    Result done(DetailsStateDone value),
    Result flush(DetailsStateFlush value),
    Result refreshFinished(DetailsStateRefreshFinished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class DetailsStateDone implements DetailsState, Complete {
  const factory DetailsStateDone(String id, String name) = _$DetailsStateDone;

  String get id;
  String get name;
  $DetailsStateDoneCopyWith<DetailsStateDone> get copyWith;
}

abstract class $DetailsStateFlushCopyWith<$Res> {
  factory $DetailsStateFlushCopyWith(
          DetailsStateFlush value, $Res Function(DetailsStateFlush) then) =
      _$DetailsStateFlushCopyWithImpl<$Res>;
}

class _$DetailsStateFlushCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsStateFlushCopyWith<$Res> {
  _$DetailsStateFlushCopyWithImpl(
      DetailsStateFlush _value, $Res Function(DetailsStateFlush) _then)
      : super(_value, (v) => _then(v as DetailsStateFlush));

  @override
  DetailsStateFlush get _value => super._value as DetailsStateFlush;
}

class _$DetailsStateFlush implements DetailsStateFlush {
  const _$DetailsStateFlush();

  @override
  String toString() {
    return 'DetailsState.flush()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsStateFlush);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result done(String id, String name),
    @required Result flush(),
    @required Result refreshFinished(),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(flush != null);
    assert(refreshFinished != null);
    return flush();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
    Result flush(),
    Result refreshFinished(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flush != null) {
      return flush();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(DetailsStateLoading value),
    @required Result done(DetailsStateDone value),
    @required Result flush(DetailsStateFlush value),
    @required Result refreshFinished(DetailsStateRefreshFinished value),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(flush != null);
    assert(refreshFinished != null);
    return flush(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(DetailsStateLoading value),
    Result done(DetailsStateDone value),
    Result flush(DetailsStateFlush value),
    Result refreshFinished(DetailsStateRefreshFinished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flush != null) {
      return flush(this);
    }
    return orElse();
  }
}

abstract class DetailsStateFlush implements DetailsState {
  const factory DetailsStateFlush() = _$DetailsStateFlush;
}

abstract class $DetailsStateRefreshFinishedCopyWith<$Res> {
  factory $DetailsStateRefreshFinishedCopyWith(
          DetailsStateRefreshFinished value,
          $Res Function(DetailsStateRefreshFinished) then) =
      _$DetailsStateRefreshFinishedCopyWithImpl<$Res>;
}

class _$DetailsStateRefreshFinishedCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsStateRefreshFinishedCopyWith<$Res> {
  _$DetailsStateRefreshFinishedCopyWithImpl(DetailsStateRefreshFinished _value,
      $Res Function(DetailsStateRefreshFinished) _then)
      : super(_value, (v) => _then(v as DetailsStateRefreshFinished));

  @override
  DetailsStateRefreshFinished get _value =>
      super._value as DetailsStateRefreshFinished;
}

class _$DetailsStateRefreshFinished implements DetailsStateRefreshFinished {
  const _$DetailsStateRefreshFinished();

  @override
  String toString() {
    return 'DetailsState.refreshFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsStateRefreshFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result done(String id, String name),
    @required Result flush(),
    @required Result refreshFinished(),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(flush != null);
    assert(refreshFinished != null);
    return refreshFinished();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
    Result flush(),
    Result refreshFinished(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshFinished != null) {
      return refreshFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(DetailsStateLoading value),
    @required Result done(DetailsStateDone value),
    @required Result flush(DetailsStateFlush value),
    @required Result refreshFinished(DetailsStateRefreshFinished value),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(flush != null);
    assert(refreshFinished != null);
    return refreshFinished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(DetailsStateLoading value),
    Result done(DetailsStateDone value),
    Result flush(DetailsStateFlush value),
    Result refreshFinished(DetailsStateRefreshFinished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshFinished != null) {
      return refreshFinished(this);
    }
    return orElse();
  }
}

abstract class DetailsStateRefreshFinished implements DetailsState {
  const factory DetailsStateRefreshFinished() = _$DetailsStateRefreshFinished;
}

class _$DetailsEventTearOff {
  const _$DetailsEventTearOff();

// ignore: unused_element
  DetailsEventInit init() {
    return const DetailsEventInit();
  }

// ignore: unused_element
  DetailsEventRefresh refresh() {
    return const DetailsEventRefresh();
  }
}

// ignore: unused_element
const $DetailsEvent = _$DetailsEventTearOff();

mixin _$DetailsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result refresh(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result refresh(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(DetailsEventInit value),
    @required Result refresh(DetailsEventRefresh value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(DetailsEventInit value),
    Result refresh(DetailsEventRefresh value),
    @required Result orElse(),
  });
}

abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res>;
}

class _$DetailsEventCopyWithImpl<$Res> implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  final DetailsEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsEvent) _then;
}

abstract class $DetailsEventInitCopyWith<$Res> {
  factory $DetailsEventInitCopyWith(
          DetailsEventInit value, $Res Function(DetailsEventInit) then) =
      _$DetailsEventInitCopyWithImpl<$Res>;
}

class _$DetailsEventInitCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res>
    implements $DetailsEventInitCopyWith<$Res> {
  _$DetailsEventInitCopyWithImpl(
      DetailsEventInit _value, $Res Function(DetailsEventInit) _then)
      : super(_value, (v) => _then(v as DetailsEventInit));

  @override
  DetailsEventInit get _value => super._value as DetailsEventInit;
}

class _$DetailsEventInit implements DetailsEventInit {
  const _$DetailsEventInit();

  @override
  String toString() {
    return 'DetailsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result refresh(),
  }) {
    assert(init != null);
    assert(refresh != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result refresh(),
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
    @required Result init(DetailsEventInit value),
    @required Result refresh(DetailsEventRefresh value),
  }) {
    assert(init != null);
    assert(refresh != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(DetailsEventInit value),
    Result refresh(DetailsEventRefresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class DetailsEventInit implements DetailsEvent {
  const factory DetailsEventInit() = _$DetailsEventInit;
}

abstract class $DetailsEventRefreshCopyWith<$Res> {
  factory $DetailsEventRefreshCopyWith(
          DetailsEventRefresh value, $Res Function(DetailsEventRefresh) then) =
      _$DetailsEventRefreshCopyWithImpl<$Res>;
}

class _$DetailsEventRefreshCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res>
    implements $DetailsEventRefreshCopyWith<$Res> {
  _$DetailsEventRefreshCopyWithImpl(
      DetailsEventRefresh _value, $Res Function(DetailsEventRefresh) _then)
      : super(_value, (v) => _then(v as DetailsEventRefresh));

  @override
  DetailsEventRefresh get _value => super._value as DetailsEventRefresh;
}

class _$DetailsEventRefresh implements DetailsEventRefresh {
  const _$DetailsEventRefresh();

  @override
  String toString() {
    return 'DetailsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsEventRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result refresh(),
  }) {
    assert(init != null);
    assert(refresh != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result refresh(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(DetailsEventInit value),
    @required Result refresh(DetailsEventRefresh value),
  }) {
    assert(init != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(DetailsEventInit value),
    Result refresh(DetailsEventRefresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class DetailsEventRefresh implements DetailsEvent {
  const factory DetailsEventRefresh() = _$DetailsEventRefresh;
}
