// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'open_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OpenStateTearOff {
  const _$OpenStateTearOff();

// ignore: unused_element
  OpenStateLoading loading() {
    return const OpenStateLoading();
  }

// ignore: unused_element
  OpenStateFlush flush() {
    return const OpenStateFlush();
  }

// ignore: unused_element
  OpenStateRefreshFinished refreshFinished() {
    return const OpenStateRefreshFinished();
  }

// ignore: unused_element
  OpenStateList list(List<Item> items) {
    return OpenStateList(
      items,
    );
  }
}

// ignore: unused_element
const $OpenState = _$OpenStateTearOff();

mixin _$OpenState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result flush(),
    @required Result refreshFinished(),
    @required Result list(List<Item> items),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result flush(),
    Result refreshFinished(),
    Result list(List<Item> items),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(OpenStateLoading value),
    @required Result flush(OpenStateFlush value),
    @required Result refreshFinished(OpenStateRefreshFinished value),
    @required Result list(OpenStateList value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(OpenStateLoading value),
    Result flush(OpenStateFlush value),
    Result refreshFinished(OpenStateRefreshFinished value),
    Result list(OpenStateList value),
    @required Result orElse(),
  });
}

abstract class $OpenStateCopyWith<$Res> {
  factory $OpenStateCopyWith(OpenState value, $Res Function(OpenState) then) =
      _$OpenStateCopyWithImpl<$Res>;
}

class _$OpenStateCopyWithImpl<$Res> implements $OpenStateCopyWith<$Res> {
  _$OpenStateCopyWithImpl(this._value, this._then);

  final OpenState _value;
  // ignore: unused_field
  final $Res Function(OpenState) _then;
}

abstract class $OpenStateLoadingCopyWith<$Res> {
  factory $OpenStateLoadingCopyWith(
          OpenStateLoading value, $Res Function(OpenStateLoading) then) =
      _$OpenStateLoadingCopyWithImpl<$Res>;
}

class _$OpenStateLoadingCopyWithImpl<$Res> extends _$OpenStateCopyWithImpl<$Res>
    implements $OpenStateLoadingCopyWith<$Res> {
  _$OpenStateLoadingCopyWithImpl(
      OpenStateLoading _value, $Res Function(OpenStateLoading) _then)
      : super(_value, (v) => _then(v as OpenStateLoading));

  @override
  OpenStateLoading get _value => super._value as OpenStateLoading;
}

@Implements(Incomplete)
class _$OpenStateLoading
    with DiagnosticableTreeMixin
    implements OpenStateLoading {
  const _$OpenStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OpenState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result flush(),
    @required Result refreshFinished(),
    @required Result list(List<Item> items),
  }) {
    assert(loading != null);
    assert(flush != null);
    assert(refreshFinished != null);
    assert(list != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result flush(),
    Result refreshFinished(),
    Result list(List<Item> items),
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
    @required Result loading(OpenStateLoading value),
    @required Result flush(OpenStateFlush value),
    @required Result refreshFinished(OpenStateRefreshFinished value),
    @required Result list(OpenStateList value),
  }) {
    assert(loading != null);
    assert(flush != null);
    assert(refreshFinished != null);
    assert(list != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(OpenStateLoading value),
    Result flush(OpenStateFlush value),
    Result refreshFinished(OpenStateRefreshFinished value),
    Result list(OpenStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OpenStateLoading implements OpenState, Incomplete {
  const factory OpenStateLoading() = _$OpenStateLoading;
}

abstract class $OpenStateFlushCopyWith<$Res> {
  factory $OpenStateFlushCopyWith(
          OpenStateFlush value, $Res Function(OpenStateFlush) then) =
      _$OpenStateFlushCopyWithImpl<$Res>;
}

class _$OpenStateFlushCopyWithImpl<$Res> extends _$OpenStateCopyWithImpl<$Res>
    implements $OpenStateFlushCopyWith<$Res> {
  _$OpenStateFlushCopyWithImpl(
      OpenStateFlush _value, $Res Function(OpenStateFlush) _then)
      : super(_value, (v) => _then(v as OpenStateFlush));

  @override
  OpenStateFlush get _value => super._value as OpenStateFlush;
}

class _$OpenStateFlush with DiagnosticableTreeMixin implements OpenStateFlush {
  const _$OpenStateFlush();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenState.flush()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OpenState.flush'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenStateFlush);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result flush(),
    @required Result refreshFinished(),
    @required Result list(List<Item> items),
  }) {
    assert(loading != null);
    assert(flush != null);
    assert(refreshFinished != null);
    assert(list != null);
    return flush();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result flush(),
    Result refreshFinished(),
    Result list(List<Item> items),
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
    @required Result loading(OpenStateLoading value),
    @required Result flush(OpenStateFlush value),
    @required Result refreshFinished(OpenStateRefreshFinished value),
    @required Result list(OpenStateList value),
  }) {
    assert(loading != null);
    assert(flush != null);
    assert(refreshFinished != null);
    assert(list != null);
    return flush(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(OpenStateLoading value),
    Result flush(OpenStateFlush value),
    Result refreshFinished(OpenStateRefreshFinished value),
    Result list(OpenStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flush != null) {
      return flush(this);
    }
    return orElse();
  }
}

abstract class OpenStateFlush implements OpenState {
  const factory OpenStateFlush() = _$OpenStateFlush;
}

abstract class $OpenStateRefreshFinishedCopyWith<$Res> {
  factory $OpenStateRefreshFinishedCopyWith(OpenStateRefreshFinished value,
          $Res Function(OpenStateRefreshFinished) then) =
      _$OpenStateRefreshFinishedCopyWithImpl<$Res>;
}

class _$OpenStateRefreshFinishedCopyWithImpl<$Res>
    extends _$OpenStateCopyWithImpl<$Res>
    implements $OpenStateRefreshFinishedCopyWith<$Res> {
  _$OpenStateRefreshFinishedCopyWithImpl(OpenStateRefreshFinished _value,
      $Res Function(OpenStateRefreshFinished) _then)
      : super(_value, (v) => _then(v as OpenStateRefreshFinished));

  @override
  OpenStateRefreshFinished get _value =>
      super._value as OpenStateRefreshFinished;
}

class _$OpenStateRefreshFinished
    with DiagnosticableTreeMixin
    implements OpenStateRefreshFinished {
  const _$OpenStateRefreshFinished();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenState.refreshFinished()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OpenState.refreshFinished'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenStateRefreshFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result flush(),
    @required Result refreshFinished(),
    @required Result list(List<Item> items),
  }) {
    assert(loading != null);
    assert(flush != null);
    assert(refreshFinished != null);
    assert(list != null);
    return refreshFinished();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result flush(),
    Result refreshFinished(),
    Result list(List<Item> items),
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
    @required Result loading(OpenStateLoading value),
    @required Result flush(OpenStateFlush value),
    @required Result refreshFinished(OpenStateRefreshFinished value),
    @required Result list(OpenStateList value),
  }) {
    assert(loading != null);
    assert(flush != null);
    assert(refreshFinished != null);
    assert(list != null);
    return refreshFinished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(OpenStateLoading value),
    Result flush(OpenStateFlush value),
    Result refreshFinished(OpenStateRefreshFinished value),
    Result list(OpenStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshFinished != null) {
      return refreshFinished(this);
    }
    return orElse();
  }
}

abstract class OpenStateRefreshFinished implements OpenState {
  const factory OpenStateRefreshFinished() = _$OpenStateRefreshFinished;
}

abstract class $OpenStateListCopyWith<$Res> {
  factory $OpenStateListCopyWith(
          OpenStateList value, $Res Function(OpenStateList) then) =
      _$OpenStateListCopyWithImpl<$Res>;
  $Res call({List<Item> items});
}

class _$OpenStateListCopyWithImpl<$Res> extends _$OpenStateCopyWithImpl<$Res>
    implements $OpenStateListCopyWith<$Res> {
  _$OpenStateListCopyWithImpl(
      OpenStateList _value, $Res Function(OpenStateList) _then)
      : super(_value, (v) => _then(v as OpenStateList));

  @override
  OpenStateList get _value => super._value as OpenStateList;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(OpenStateList(
      items == freezed ? _value.items : items as List<Item>,
    ));
  }
}

@Implements(Complete)
class _$OpenStateList with DiagnosticableTreeMixin implements OpenStateList {
  const _$OpenStateList(this.items) : assert(items != null);

  @override
  final List<Item> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenState.list(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenState.list'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenStateList &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  $OpenStateListCopyWith<OpenStateList> get copyWith =>
      _$OpenStateListCopyWithImpl<OpenStateList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result flush(),
    @required Result refreshFinished(),
    @required Result list(List<Item> items),
  }) {
    assert(loading != null);
    assert(flush != null);
    assert(refreshFinished != null);
    assert(list != null);
    return list(items);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result flush(),
    Result refreshFinished(),
    Result list(List<Item> items),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(OpenStateLoading value),
    @required Result flush(OpenStateFlush value),
    @required Result refreshFinished(OpenStateRefreshFinished value),
    @required Result list(OpenStateList value),
  }) {
    assert(loading != null);
    assert(flush != null);
    assert(refreshFinished != null);
    assert(list != null);
    return list(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(OpenStateLoading value),
    Result flush(OpenStateFlush value),
    Result refreshFinished(OpenStateRefreshFinished value),
    Result list(OpenStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class OpenStateList implements OpenState, Complete {
  const factory OpenStateList(List<Item> items) = _$OpenStateList;

  List<Item> get items;
  $OpenStateListCopyWith<OpenStateList> get copyWith;
}

class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(String id, String name, bool favourite) {
    return _Item(
      id,
      name,
      favourite,
    );
  }
}

// ignore: unused_element
const $Item = _$ItemTearOff();

mixin _$Item {
  String get id;
  String get name;
  bool get favourite;

  $ItemCopyWith<Item> get copyWith;
}

abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call({String id, String name, bool favourite});
}

class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object favourite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      favourite: favourite == freezed ? _value.favourite : favourite as bool,
    ));
  }
}

abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, bool favourite});
}

class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object favourite = freezed,
  }) {
    return _then(_Item(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
      favourite == freezed ? _value.favourite : favourite as bool,
    ));
  }
}

class _$_Item with DiagnosticableTreeMixin implements _Item {
  const _$_Item(this.id, this.name, this.favourite)
      : assert(id != null),
        assert(name != null),
        assert(favourite != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool favourite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(id: $id, name: $name, favourite: $favourite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('favourite', favourite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.favourite, favourite) ||
                const DeepCollectionEquality()
                    .equals(other.favourite, favourite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(favourite);

  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item implements Item {
  const factory _Item(String id, String name, bool favourite) = _$_Item;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get favourite;
  @override
  _$ItemCopyWith<_Item> get copyWith;
}

class _$OpenEventTearOff {
  const _$OpenEventTearOff();

// ignore: unused_element
  OpenEventInit init() {
    return const OpenEventInit();
  }

// ignore: unused_element
  OpenEventUpdate update() {
    return const OpenEventUpdate();
  }

// ignore: unused_element
  OpenEventRefresh refresh() {
    return const OpenEventRefresh();
  }

// ignore: unused_element
  OpenEventAdd add(String id) {
    return OpenEventAdd(
      id,
    );
  }

// ignore: unused_element
  OpenEventRemove remove(String id) {
    return OpenEventRemove(
      id,
    );
  }
}

// ignore: unused_element
const $OpenEvent = _$OpenEventTearOff();

mixin _$OpenEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result add(String id),
    @required Result remove(String id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result add(String id),
    Result remove(String id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(OpenEventInit value),
    @required Result update(OpenEventUpdate value),
    @required Result refresh(OpenEventRefresh value),
    @required Result add(OpenEventAdd value),
    @required Result remove(OpenEventRemove value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(OpenEventInit value),
    Result update(OpenEventUpdate value),
    Result refresh(OpenEventRefresh value),
    Result add(OpenEventAdd value),
    Result remove(OpenEventRemove value),
    @required Result orElse(),
  });
}

abstract class $OpenEventCopyWith<$Res> {
  factory $OpenEventCopyWith(OpenEvent value, $Res Function(OpenEvent) then) =
      _$OpenEventCopyWithImpl<$Res>;
}

class _$OpenEventCopyWithImpl<$Res> implements $OpenEventCopyWith<$Res> {
  _$OpenEventCopyWithImpl(this._value, this._then);

  final OpenEvent _value;
  // ignore: unused_field
  final $Res Function(OpenEvent) _then;
}

abstract class $OpenEventInitCopyWith<$Res> {
  factory $OpenEventInitCopyWith(
          OpenEventInit value, $Res Function(OpenEventInit) then) =
      _$OpenEventInitCopyWithImpl<$Res>;
}

class _$OpenEventInitCopyWithImpl<$Res> extends _$OpenEventCopyWithImpl<$Res>
    implements $OpenEventInitCopyWith<$Res> {
  _$OpenEventInitCopyWithImpl(
      OpenEventInit _value, $Res Function(OpenEventInit) _then)
      : super(_value, (v) => _then(v as OpenEventInit));

  @override
  OpenEventInit get _value => super._value as OpenEventInit;
}

class _$OpenEventInit with DiagnosticableTreeMixin implements OpenEventInit {
  const _$OpenEventInit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenEvent.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OpenEvent.init'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result add(String id),
    @required Result remove(String id),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result add(String id),
    Result remove(String id),
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
    @required Result init(OpenEventInit value),
    @required Result update(OpenEventUpdate value),
    @required Result refresh(OpenEventRefresh value),
    @required Result add(OpenEventAdd value),
    @required Result remove(OpenEventRemove value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(OpenEventInit value),
    Result update(OpenEventUpdate value),
    Result refresh(OpenEventRefresh value),
    Result add(OpenEventAdd value),
    Result remove(OpenEventRemove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class OpenEventInit implements OpenEvent {
  const factory OpenEventInit() = _$OpenEventInit;
}

abstract class $OpenEventUpdateCopyWith<$Res> {
  factory $OpenEventUpdateCopyWith(
          OpenEventUpdate value, $Res Function(OpenEventUpdate) then) =
      _$OpenEventUpdateCopyWithImpl<$Res>;
}

class _$OpenEventUpdateCopyWithImpl<$Res> extends _$OpenEventCopyWithImpl<$Res>
    implements $OpenEventUpdateCopyWith<$Res> {
  _$OpenEventUpdateCopyWithImpl(
      OpenEventUpdate _value, $Res Function(OpenEventUpdate) _then)
      : super(_value, (v) => _then(v as OpenEventUpdate));

  @override
  OpenEventUpdate get _value => super._value as OpenEventUpdate;
}

class _$OpenEventUpdate
    with DiagnosticableTreeMixin
    implements OpenEventUpdate {
  const _$OpenEventUpdate();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenEvent.update()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OpenEvent.update'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result add(String id),
    @required Result remove(String id),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return update();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result add(String id),
    Result remove(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(OpenEventInit value),
    @required Result update(OpenEventUpdate value),
    @required Result refresh(OpenEventRefresh value),
    @required Result add(OpenEventAdd value),
    @required Result remove(OpenEventRemove value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(OpenEventInit value),
    Result update(OpenEventUpdate value),
    Result refresh(OpenEventRefresh value),
    Result add(OpenEventAdd value),
    Result remove(OpenEventRemove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class OpenEventUpdate implements OpenEvent {
  const factory OpenEventUpdate() = _$OpenEventUpdate;
}

abstract class $OpenEventRefreshCopyWith<$Res> {
  factory $OpenEventRefreshCopyWith(
          OpenEventRefresh value, $Res Function(OpenEventRefresh) then) =
      _$OpenEventRefreshCopyWithImpl<$Res>;
}

class _$OpenEventRefreshCopyWithImpl<$Res> extends _$OpenEventCopyWithImpl<$Res>
    implements $OpenEventRefreshCopyWith<$Res> {
  _$OpenEventRefreshCopyWithImpl(
      OpenEventRefresh _value, $Res Function(OpenEventRefresh) _then)
      : super(_value, (v) => _then(v as OpenEventRefresh));

  @override
  OpenEventRefresh get _value => super._value as OpenEventRefresh;
}

class _$OpenEventRefresh
    with DiagnosticableTreeMixin
    implements OpenEventRefresh {
  const _$OpenEventRefresh();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OpenEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenEventRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result add(String id),
    @required Result remove(String id),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result add(String id),
    Result remove(String id),
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
    @required Result init(OpenEventInit value),
    @required Result update(OpenEventUpdate value),
    @required Result refresh(OpenEventRefresh value),
    @required Result add(OpenEventAdd value),
    @required Result remove(OpenEventRemove value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(OpenEventInit value),
    Result update(OpenEventUpdate value),
    Result refresh(OpenEventRefresh value),
    Result add(OpenEventAdd value),
    Result remove(OpenEventRemove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class OpenEventRefresh implements OpenEvent {
  const factory OpenEventRefresh() = _$OpenEventRefresh;
}

abstract class $OpenEventAddCopyWith<$Res> {
  factory $OpenEventAddCopyWith(
          OpenEventAdd value, $Res Function(OpenEventAdd) then) =
      _$OpenEventAddCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$OpenEventAddCopyWithImpl<$Res> extends _$OpenEventCopyWithImpl<$Res>
    implements $OpenEventAddCopyWith<$Res> {
  _$OpenEventAddCopyWithImpl(
      OpenEventAdd _value, $Res Function(OpenEventAdd) _then)
      : super(_value, (v) => _then(v as OpenEventAdd));

  @override
  OpenEventAdd get _value => super._value as OpenEventAdd;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(OpenEventAdd(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$OpenEventAdd with DiagnosticableTreeMixin implements OpenEventAdd {
  const _$OpenEventAdd(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenEvent.add(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenEvent.add'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenEventAdd &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $OpenEventAddCopyWith<OpenEventAdd> get copyWith =>
      _$OpenEventAddCopyWithImpl<OpenEventAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result add(String id),
    @required Result remove(String id),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return add(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result add(String id),
    Result remove(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(OpenEventInit value),
    @required Result update(OpenEventUpdate value),
    @required Result refresh(OpenEventRefresh value),
    @required Result add(OpenEventAdd value),
    @required Result remove(OpenEventRemove value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(OpenEventInit value),
    Result update(OpenEventUpdate value),
    Result refresh(OpenEventRefresh value),
    Result add(OpenEventAdd value),
    Result remove(OpenEventRemove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class OpenEventAdd implements OpenEvent {
  const factory OpenEventAdd(String id) = _$OpenEventAdd;

  String get id;
  $OpenEventAddCopyWith<OpenEventAdd> get copyWith;
}

abstract class $OpenEventRemoveCopyWith<$Res> {
  factory $OpenEventRemoveCopyWith(
          OpenEventRemove value, $Res Function(OpenEventRemove) then) =
      _$OpenEventRemoveCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$OpenEventRemoveCopyWithImpl<$Res> extends _$OpenEventCopyWithImpl<$Res>
    implements $OpenEventRemoveCopyWith<$Res> {
  _$OpenEventRemoveCopyWithImpl(
      OpenEventRemove _value, $Res Function(OpenEventRemove) _then)
      : super(_value, (v) => _then(v as OpenEventRemove));

  @override
  OpenEventRemove get _value => super._value as OpenEventRemove;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(OpenEventRemove(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$OpenEventRemove
    with DiagnosticableTreeMixin
    implements OpenEventRemove {
  const _$OpenEventRemove(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenEvent.remove(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenEvent.remove'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenEventRemove &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $OpenEventRemoveCopyWith<OpenEventRemove> get copyWith =>
      _$OpenEventRemoveCopyWithImpl<OpenEventRemove>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result add(String id),
    @required Result remove(String id),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return remove(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result add(String id),
    Result remove(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(OpenEventInit value),
    @required Result update(OpenEventUpdate value),
    @required Result refresh(OpenEventRefresh value),
    @required Result add(OpenEventAdd value),
    @required Result remove(OpenEventRemove value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(add != null);
    assert(remove != null);
    return remove(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(OpenEventInit value),
    Result update(OpenEventUpdate value),
    Result refresh(OpenEventRefresh value),
    Result add(OpenEventAdd value),
    Result remove(OpenEventRemove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class OpenEventRemove implements OpenEvent {
  const factory OpenEventRemove(String id) = _$OpenEventRemove;

  String get id;
  $OpenEventRemoveCopyWith<OpenEventRemove> get copyWith;
}
