// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemStateTearOff {
  const _$ItemStateTearOff();

// ignore: unused_element
  _ItemState call(
      String id, String name, bool local, bool dirty, bool sending) {
    return _ItemState(
      id,
      name,
      local,
      dirty,
      sending,
    );
  }
}

// ignore: unused_element
const $ItemState = _$ItemStateTearOff();

mixin _$ItemState {
  String get id;
  String get name;
  bool get local;
  bool get dirty;
  bool get sending;

  $ItemStateCopyWith<ItemState> get copyWith;
}

abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res>;
  $Res call({String id, String name, bool local, bool dirty, bool sending});
}

class _$ItemStateCopyWithImpl<$Res> implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  final ItemState _value;
  // ignore: unused_field
  final $Res Function(ItemState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object local = freezed,
    Object dirty = freezed,
    Object sending = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      local: local == freezed ? _value.local : local as bool,
      dirty: dirty == freezed ? _value.dirty : dirty as bool,
      sending: sending == freezed ? _value.sending : sending as bool,
    ));
  }
}

abstract class _$ItemStateCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory _$ItemStateCopyWith(
          _ItemState value, $Res Function(_ItemState) then) =
      __$ItemStateCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, bool local, bool dirty, bool sending});
}

class __$ItemStateCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$ItemStateCopyWith<$Res> {
  __$ItemStateCopyWithImpl(_ItemState _value, $Res Function(_ItemState) _then)
      : super(_value, (v) => _then(v as _ItemState));

  @override
  _ItemState get _value => super._value as _ItemState;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object local = freezed,
    Object dirty = freezed,
    Object sending = freezed,
  }) {
    return _then(_ItemState(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
      local == freezed ? _value.local : local as bool,
      dirty == freezed ? _value.dirty : dirty as bool,
      sending == freezed ? _value.sending : sending as bool,
    ));
  }
}

class _$_ItemState implements _ItemState {
  const _$_ItemState(this.id, this.name, this.local, this.dirty, this.sending)
      : assert(id != null),
        assert(name != null),
        assert(local != null),
        assert(dirty != null),
        assert(sending != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool local;
  @override
  final bool dirty;
  @override
  final bool sending;

  @override
  String toString() {
    return 'ItemState(id: $id, name: $name, local: $local, dirty: $dirty, sending: $sending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.local, local) ||
                const DeepCollectionEquality().equals(other.local, local)) &&
            (identical(other.dirty, dirty) ||
                const DeepCollectionEquality().equals(other.dirty, dirty)) &&
            (identical(other.sending, sending) ||
                const DeepCollectionEquality().equals(other.sending, sending)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(local) ^
      const DeepCollectionEquality().hash(dirty) ^
      const DeepCollectionEquality().hash(sending);

  @override
  _$ItemStateCopyWith<_ItemState> get copyWith =>
      __$ItemStateCopyWithImpl<_ItemState>(this, _$identity);
}

abstract class _ItemState implements ItemState {
  const factory _ItemState(
          String id, String name, bool local, bool dirty, bool sending) =
      _$_ItemState;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get local;
  @override
  bool get dirty;
  @override
  bool get sending;
  @override
  _$ItemStateCopyWith<_ItemState> get copyWith;
}

class _$ItemEventTearOff {
  const _$ItemEventTearOff();

// ignore: unused_element
  ItemEventInit init() {
    return const ItemEventInit();
  }
}

// ignore: unused_element
const $ItemEvent = _$ItemEventTearOff();

mixin _$ItemEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(ItemEventInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ItemEventInit value),
    @required Result orElse(),
  });
}

abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res>;
}

class _$ItemEventCopyWithImpl<$Res> implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  final ItemEvent _value;
  // ignore: unused_field
  final $Res Function(ItemEvent) _then;
}

abstract class $ItemEventInitCopyWith<$Res> {
  factory $ItemEventInitCopyWith(
          ItemEventInit value, $Res Function(ItemEventInit) then) =
      _$ItemEventInitCopyWithImpl<$Res>;
}

class _$ItemEventInitCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements $ItemEventInitCopyWith<$Res> {
  _$ItemEventInitCopyWithImpl(
      ItemEventInit _value, $Res Function(ItemEventInit) _then)
      : super(_value, (v) => _then(v as ItemEventInit));

  @override
  ItemEventInit get _value => super._value as ItemEventInit;
}

class _$ItemEventInit implements ItemEventInit {
  const _$ItemEventInit();

  @override
  String toString() {
    return 'ItemEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ItemEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
  }) {
    assert(init != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
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
    @required Result init(ItemEventInit value),
  }) {
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ItemEventInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ItemEventInit implements ItemEvent {
  const factory ItemEventInit() = _$ItemEventInit;
}
