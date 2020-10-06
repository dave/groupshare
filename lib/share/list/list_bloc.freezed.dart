// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ListStateTearOff {
  const _$ListStateTearOff();

// ignore: unused_element
  ListStateLoading loading() {
    return const ListStateLoading();
  }

// ignore: unused_element
  ListStateFlush flush() {
    return const ListStateFlush();
  }

// ignore: unused_element
  ListStateRefreshFinished refreshFinished() {
    return const ListStateRefreshFinished();
  }

// ignore: unused_element
  ListStateList list(List<Item> items) {
    return ListStateList(
      items,
    );
  }
}

// ignore: unused_element
const $ListState = _$ListStateTearOff();

mixin _$ListState {
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
    @required Result loading(ListStateLoading value),
    @required Result flush(ListStateFlush value),
    @required Result refreshFinished(ListStateRefreshFinished value),
    @required Result list(ListStateList value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ListStateLoading value),
    Result flush(ListStateFlush value),
    Result refreshFinished(ListStateRefreshFinished value),
    Result list(ListStateList value),
    @required Result orElse(),
  });
}

abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
}

class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;
}

abstract class $ListStateLoadingCopyWith<$Res> {
  factory $ListStateLoadingCopyWith(
          ListStateLoading value, $Res Function(ListStateLoading) then) =
      _$ListStateLoadingCopyWithImpl<$Res>;
}

class _$ListStateLoadingCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements $ListStateLoadingCopyWith<$Res> {
  _$ListStateLoadingCopyWithImpl(
      ListStateLoading _value, $Res Function(ListStateLoading) _then)
      : super(_value, (v) => _then(v as ListStateLoading));

  @override
  ListStateLoading get _value => super._value as ListStateLoading;
}

@Implements(Incomplete)
class _$ListStateLoading implements ListStateLoading {
  const _$ListStateLoading();

  @override
  String toString() {
    return 'ListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListStateLoading);
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
    @required Result loading(ListStateLoading value),
    @required Result flush(ListStateFlush value),
    @required Result refreshFinished(ListStateRefreshFinished value),
    @required Result list(ListStateList value),
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
    Result loading(ListStateLoading value),
    Result flush(ListStateFlush value),
    Result refreshFinished(ListStateRefreshFinished value),
    Result list(ListStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ListStateLoading implements ListState, Incomplete {
  const factory ListStateLoading() = _$ListStateLoading;
}

abstract class $ListStateFlushCopyWith<$Res> {
  factory $ListStateFlushCopyWith(
          ListStateFlush value, $Res Function(ListStateFlush) then) =
      _$ListStateFlushCopyWithImpl<$Res>;
}

class _$ListStateFlushCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements $ListStateFlushCopyWith<$Res> {
  _$ListStateFlushCopyWithImpl(
      ListStateFlush _value, $Res Function(ListStateFlush) _then)
      : super(_value, (v) => _then(v as ListStateFlush));

  @override
  ListStateFlush get _value => super._value as ListStateFlush;
}

class _$ListStateFlush implements ListStateFlush {
  const _$ListStateFlush();

  @override
  String toString() {
    return 'ListState.flush()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListStateFlush);
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
    @required Result loading(ListStateLoading value),
    @required Result flush(ListStateFlush value),
    @required Result refreshFinished(ListStateRefreshFinished value),
    @required Result list(ListStateList value),
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
    Result loading(ListStateLoading value),
    Result flush(ListStateFlush value),
    Result refreshFinished(ListStateRefreshFinished value),
    Result list(ListStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flush != null) {
      return flush(this);
    }
    return orElse();
  }
}

abstract class ListStateFlush implements ListState {
  const factory ListStateFlush() = _$ListStateFlush;
}

abstract class $ListStateRefreshFinishedCopyWith<$Res> {
  factory $ListStateRefreshFinishedCopyWith(ListStateRefreshFinished value,
          $Res Function(ListStateRefreshFinished) then) =
      _$ListStateRefreshFinishedCopyWithImpl<$Res>;
}

class _$ListStateRefreshFinishedCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res>
    implements $ListStateRefreshFinishedCopyWith<$Res> {
  _$ListStateRefreshFinishedCopyWithImpl(ListStateRefreshFinished _value,
      $Res Function(ListStateRefreshFinished) _then)
      : super(_value, (v) => _then(v as ListStateRefreshFinished));

  @override
  ListStateRefreshFinished get _value =>
      super._value as ListStateRefreshFinished;
}

class _$ListStateRefreshFinished implements ListStateRefreshFinished {
  const _$ListStateRefreshFinished();

  @override
  String toString() {
    return 'ListState.refreshFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListStateRefreshFinished);
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
    @required Result loading(ListStateLoading value),
    @required Result flush(ListStateFlush value),
    @required Result refreshFinished(ListStateRefreshFinished value),
    @required Result list(ListStateList value),
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
    Result loading(ListStateLoading value),
    Result flush(ListStateFlush value),
    Result refreshFinished(ListStateRefreshFinished value),
    Result list(ListStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshFinished != null) {
      return refreshFinished(this);
    }
    return orElse();
  }
}

abstract class ListStateRefreshFinished implements ListState {
  const factory ListStateRefreshFinished() = _$ListStateRefreshFinished;
}

abstract class $ListStateListCopyWith<$Res> {
  factory $ListStateListCopyWith(
          ListStateList value, $Res Function(ListStateList) then) =
      _$ListStateListCopyWithImpl<$Res>;
  $Res call({List<Item> items});
}

class _$ListStateListCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements $ListStateListCopyWith<$Res> {
  _$ListStateListCopyWithImpl(
      ListStateList _value, $Res Function(ListStateList) _then)
      : super(_value, (v) => _then(v as ListStateList));

  @override
  ListStateList get _value => super._value as ListStateList;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(ListStateList(
      items == freezed ? _value.items : items as List<Item>,
    ));
  }
}

@Implements(Complete)
class _$ListStateList implements ListStateList {
  const _$ListStateList(this.items) : assert(items != null);

  @override
  final List<Item> items;

  @override
  String toString() {
    return 'ListState.list(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListStateList &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  $ListStateListCopyWith<ListStateList> get copyWith =>
      _$ListStateListCopyWithImpl<ListStateList>(this, _$identity);

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
    @required Result loading(ListStateLoading value),
    @required Result flush(ListStateFlush value),
    @required Result refreshFinished(ListStateRefreshFinished value),
    @required Result list(ListStateList value),
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
    Result loading(ListStateLoading value),
    Result flush(ListStateFlush value),
    Result refreshFinished(ListStateRefreshFinished value),
    Result list(ListStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class ListStateList implements ListState, Complete {
  const factory ListStateList(List<Item> items) = _$ListStateList;

  List<Item> get items;
  $ListStateListCopyWith<ListStateList> get copyWith;
}

class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(String id, String name, bool local) {
    return _Item(
      id,
      name,
      local,
    );
  }
}

// ignore: unused_element
const $Item = _$ItemTearOff();

mixin _$Item {
  String get id;
  String get name;
  bool get local;

  $ItemCopyWith<Item> get copyWith;
}

abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call({String id, String name, bool local});
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
    Object local = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      local: local == freezed ? _value.local : local as bool,
    ));
  }
}

abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, bool local});
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
    Object local = freezed,
  }) {
    return _then(_Item(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
      local == freezed ? _value.local : local as bool,
    ));
  }
}

class _$_Item implements _Item {
  const _$_Item(this.id, this.name, this.local)
      : assert(id != null),
        assert(name != null),
        assert(local != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool local;

  @override
  String toString() {
    return 'Item(id: $id, name: $name, local: $local)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.local, local) ||
                const DeepCollectionEquality().equals(other.local, local)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(local);

  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item implements Item {
  const factory _Item(String id, String name, bool local) = _$_Item;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get local;
  @override
  _$ItemCopyWith<_Item> get copyWith;
}

class _$ListEventTearOff {
  const _$ListEventTearOff();

// ignore: unused_element
  ListEventInit init() {
    return const ListEventInit();
  }

// ignore: unused_element
  ListEventUpdate update() {
    return const ListEventUpdate();
  }

// ignore: unused_element
  ListEventRefresh refresh() {
    return const ListEventRefresh();
  }

// ignore: unused_element
  ListEventItem item(String id) {
    return ListEventItem(
      id,
    );
  }

// ignore: unused_element
  ListEventReorder reorder(int from, int to) {
    return ListEventReorder(
      from,
      to,
    );
  }
}

// ignore: unused_element
const $ListEvent = _$ListEventTearOff();

mixin _$ListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result item(String id),
    @required Result reorder(int from, int to),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result item(String id),
    Result reorder(int from, int to),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(ListEventInit value),
    @required Result update(ListEventUpdate value),
    @required Result refresh(ListEventRefresh value),
    @required Result item(ListEventItem value),
    @required Result reorder(ListEventReorder value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ListEventInit value),
    Result update(ListEventUpdate value),
    Result refresh(ListEventRefresh value),
    Result item(ListEventItem value),
    Result reorder(ListEventReorder value),
    @required Result orElse(),
  });
}

abstract class $ListEventCopyWith<$Res> {
  factory $ListEventCopyWith(ListEvent value, $Res Function(ListEvent) then) =
      _$ListEventCopyWithImpl<$Res>;
}

class _$ListEventCopyWithImpl<$Res> implements $ListEventCopyWith<$Res> {
  _$ListEventCopyWithImpl(this._value, this._then);

  final ListEvent _value;
  // ignore: unused_field
  final $Res Function(ListEvent) _then;
}

abstract class $ListEventInitCopyWith<$Res> {
  factory $ListEventInitCopyWith(
          ListEventInit value, $Res Function(ListEventInit) then) =
      _$ListEventInitCopyWithImpl<$Res>;
}

class _$ListEventInitCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements $ListEventInitCopyWith<$Res> {
  _$ListEventInitCopyWithImpl(
      ListEventInit _value, $Res Function(ListEventInit) _then)
      : super(_value, (v) => _then(v as ListEventInit));

  @override
  ListEventInit get _value => super._value as ListEventInit;
}

class _$ListEventInit implements ListEventInit {
  const _$ListEventInit();

  @override
  String toString() {
    return 'ListEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result item(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result item(String id),
    Result reorder(int from, int to),
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
    @required Result init(ListEventInit value),
    @required Result update(ListEventUpdate value),
    @required Result refresh(ListEventRefresh value),
    @required Result item(ListEventItem value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ListEventInit value),
    Result update(ListEventUpdate value),
    Result refresh(ListEventRefresh value),
    Result item(ListEventItem value),
    Result reorder(ListEventReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ListEventInit implements ListEvent {
  const factory ListEventInit() = _$ListEventInit;
}

abstract class $ListEventUpdateCopyWith<$Res> {
  factory $ListEventUpdateCopyWith(
          ListEventUpdate value, $Res Function(ListEventUpdate) then) =
      _$ListEventUpdateCopyWithImpl<$Res>;
}

class _$ListEventUpdateCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements $ListEventUpdateCopyWith<$Res> {
  _$ListEventUpdateCopyWithImpl(
      ListEventUpdate _value, $Res Function(ListEventUpdate) _then)
      : super(_value, (v) => _then(v as ListEventUpdate));

  @override
  ListEventUpdate get _value => super._value as ListEventUpdate;
}

class _$ListEventUpdate implements ListEventUpdate {
  const _$ListEventUpdate();

  @override
  String toString() {
    return 'ListEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListEventUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result item(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return update();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result item(String id),
    Result reorder(int from, int to),
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
    @required Result init(ListEventInit value),
    @required Result update(ListEventUpdate value),
    @required Result refresh(ListEventRefresh value),
    @required Result item(ListEventItem value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ListEventInit value),
    Result update(ListEventUpdate value),
    Result refresh(ListEventRefresh value),
    Result item(ListEventItem value),
    Result reorder(ListEventReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ListEventUpdate implements ListEvent {
  const factory ListEventUpdate() = _$ListEventUpdate;
}

abstract class $ListEventRefreshCopyWith<$Res> {
  factory $ListEventRefreshCopyWith(
          ListEventRefresh value, $Res Function(ListEventRefresh) then) =
      _$ListEventRefreshCopyWithImpl<$Res>;
}

class _$ListEventRefreshCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements $ListEventRefreshCopyWith<$Res> {
  _$ListEventRefreshCopyWithImpl(
      ListEventRefresh _value, $Res Function(ListEventRefresh) _then)
      : super(_value, (v) => _then(v as ListEventRefresh));

  @override
  ListEventRefresh get _value => super._value as ListEventRefresh;
}

class _$ListEventRefresh implements ListEventRefresh {
  const _$ListEventRefresh();

  @override
  String toString() {
    return 'ListEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListEventRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result item(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result item(String id),
    Result reorder(int from, int to),
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
    @required Result init(ListEventInit value),
    @required Result update(ListEventUpdate value),
    @required Result refresh(ListEventRefresh value),
    @required Result item(ListEventItem value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ListEventInit value),
    Result update(ListEventUpdate value),
    Result refresh(ListEventRefresh value),
    Result item(ListEventItem value),
    Result reorder(ListEventReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class ListEventRefresh implements ListEvent {
  const factory ListEventRefresh() = _$ListEventRefresh;
}

abstract class $ListEventItemCopyWith<$Res> {
  factory $ListEventItemCopyWith(
          ListEventItem value, $Res Function(ListEventItem) then) =
      _$ListEventItemCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$ListEventItemCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements $ListEventItemCopyWith<$Res> {
  _$ListEventItemCopyWithImpl(
      ListEventItem _value, $Res Function(ListEventItem) _then)
      : super(_value, (v) => _then(v as ListEventItem));

  @override
  ListEventItem get _value => super._value as ListEventItem;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(ListEventItem(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$ListEventItem implements ListEventItem {
  const _$ListEventItem(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'ListEvent.item(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListEventItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $ListEventItemCopyWith<ListEventItem> get copyWith =>
      _$ListEventItemCopyWithImpl<ListEventItem>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result item(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return item(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result item(String id),
    Result reorder(int from, int to),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (item != null) {
      return item(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(ListEventInit value),
    @required Result update(ListEventUpdate value),
    @required Result refresh(ListEventRefresh value),
    @required Result item(ListEventItem value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return item(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ListEventInit value),
    Result update(ListEventUpdate value),
    Result refresh(ListEventRefresh value),
    Result item(ListEventItem value),
    Result reorder(ListEventReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (item != null) {
      return item(this);
    }
    return orElse();
  }
}

abstract class ListEventItem implements ListEvent {
  const factory ListEventItem(String id) = _$ListEventItem;

  String get id;
  $ListEventItemCopyWith<ListEventItem> get copyWith;
}

abstract class $ListEventReorderCopyWith<$Res> {
  factory $ListEventReorderCopyWith(
          ListEventReorder value, $Res Function(ListEventReorder) then) =
      _$ListEventReorderCopyWithImpl<$Res>;
  $Res call({int from, int to});
}

class _$ListEventReorderCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements $ListEventReorderCopyWith<$Res> {
  _$ListEventReorderCopyWithImpl(
      ListEventReorder _value, $Res Function(ListEventReorder) _then)
      : super(_value, (v) => _then(v as ListEventReorder));

  @override
  ListEventReorder get _value => super._value as ListEventReorder;

  @override
  $Res call({
    Object from = freezed,
    Object to = freezed,
  }) {
    return _then(ListEventReorder(
      from == freezed ? _value.from : from as int,
      to == freezed ? _value.to : to as int,
    ));
  }
}

class _$ListEventReorder implements ListEventReorder {
  const _$ListEventReorder(this.from, this.to)
      : assert(from != null),
        assert(to != null);

  @override
  final int from;
  @override
  final int to;

  @override
  String toString() {
    return 'ListEvent.reorder(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListEventReorder &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @override
  $ListEventReorderCopyWith<ListEventReorder> get copyWith =>
      _$ListEventReorderCopyWithImpl<ListEventReorder>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result item(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return reorder(from, to);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result item(String id),
    Result reorder(int from, int to),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reorder != null) {
      return reorder(from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(ListEventInit value),
    @required Result update(ListEventUpdate value),
    @required Result refresh(ListEventRefresh value),
    @required Result item(ListEventItem value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(reorder != null);
    return reorder(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ListEventInit value),
    Result update(ListEventUpdate value),
    Result refresh(ListEventRefresh value),
    Result item(ListEventItem value),
    Result reorder(ListEventReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reorder != null) {
      return reorder(this);
    }
    return orElse();
  }
}

abstract class ListEventReorder implements ListEvent {
  const factory ListEventReorder(int from, int to) = _$ListEventReorder;

  int get from;
  int get to;
  $ListEventReorderCopyWith<ListEventReorder> get copyWith;
}
