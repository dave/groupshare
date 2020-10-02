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
  _ListState call(
      {@required PageState page,
      @required List<AvailableShare> items,
      ListAction action}) {
    return _ListState(
      page: page,
      items: items,
      action: action,
    );
  }
}

// ignore: unused_element
const $ListState = _$ListStateTearOff();

mixin _$ListState {
  PageState get page;
  List<AvailableShare> get items;
  ListAction get action;

  $ListStateCopyWith<ListState> get copyWith;
}

abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
  $Res call({PageState page, List<AvailableShare> items, ListAction action});

  $PageStateCopyWith<$Res> get page;
  $ListActionCopyWith<$Res> get action;
}

class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;

  @override
  $Res call({
    Object page = freezed,
    Object items = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as PageState,
      items: items == freezed ? _value.items : items as List<AvailableShare>,
      action: action == freezed ? _value.action : action as ListAction,
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
  $ListActionCopyWith<$Res> get action {
    if (_value.action == null) {
      return null;
    }
    return $ListActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }
}

abstract class _$ListStateCopyWith<$Res> implements $ListStateCopyWith<$Res> {
  factory _$ListStateCopyWith(
          _ListState value, $Res Function(_ListState) then) =
      __$ListStateCopyWithImpl<$Res>;
  @override
  $Res call({PageState page, List<AvailableShare> items, ListAction action});

  @override
  $PageStateCopyWith<$Res> get page;
  @override
  $ListActionCopyWith<$Res> get action;
}

class __$ListStateCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements _$ListStateCopyWith<$Res> {
  __$ListStateCopyWithImpl(_ListState _value, $Res Function(_ListState) _then)
      : super(_value, (v) => _then(v as _ListState));

  @override
  _ListState get _value => super._value as _ListState;

  @override
  $Res call({
    Object page = freezed,
    Object items = freezed,
    Object action = freezed,
  }) {
    return _then(_ListState(
      page: page == freezed ? _value.page : page as PageState,
      items: items == freezed ? _value.items : items as List<AvailableShare>,
      action: action == freezed ? _value.action : action as ListAction,
    ));
  }
}

@Implements(PageHolder)
@Implements(ActionHolder)
class _$_ListState implements _ListState {
  const _$_ListState({@required this.page, @required this.items, this.action})
      : assert(page != null),
        assert(items != null);

  @override
  final PageState page;
  @override
  final List<AvailableShare> items;
  @override
  final ListAction action;

  @override
  String toString() {
    return 'ListState(page: $page, items: $items, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(action);

  @override
  _$ListStateCopyWith<_ListState> get copyWith =>
      __$ListStateCopyWithImpl<_ListState>(this, _$identity);
}

abstract class _ListState implements ListState, PageHolder, ActionHolder {
  const factory _ListState(
      {@required PageState page,
      @required List<AvailableShare> items,
      ListAction action}) = _$_ListState;

  @override
  PageState get page;
  @override
  List<AvailableShare> get items;
  @override
  ListAction get action;
  @override
  _$ListStateCopyWith<_ListState> get copyWith;
}

class _$ListActionTearOff {
  const _$ListActionTearOff();

// ignore: unused_element
  ListActionRefreshComplete refreshComplete() {
    return const ListActionRefreshComplete();
  }
}

// ignore: unused_element
const $ListAction = _$ListActionTearOff();

mixin _$ListAction {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refreshComplete(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refreshComplete(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refreshComplete(ListActionRefreshComplete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refreshComplete(ListActionRefreshComplete value),
    @required Result orElse(),
  });
}

abstract class $ListActionCopyWith<$Res> {
  factory $ListActionCopyWith(
          ListAction value, $Res Function(ListAction) then) =
      _$ListActionCopyWithImpl<$Res>;
}

class _$ListActionCopyWithImpl<$Res> implements $ListActionCopyWith<$Res> {
  _$ListActionCopyWithImpl(this._value, this._then);

  final ListAction _value;
  // ignore: unused_field
  final $Res Function(ListAction) _then;
}

abstract class $ListActionRefreshCompleteCopyWith<$Res> {
  factory $ListActionRefreshCompleteCopyWith(ListActionRefreshComplete value,
          $Res Function(ListActionRefreshComplete) then) =
      _$ListActionRefreshCompleteCopyWithImpl<$Res>;
}

class _$ListActionRefreshCompleteCopyWithImpl<$Res>
    extends _$ListActionCopyWithImpl<$Res>
    implements $ListActionRefreshCompleteCopyWith<$Res> {
  _$ListActionRefreshCompleteCopyWithImpl(ListActionRefreshComplete _value,
      $Res Function(ListActionRefreshComplete) _then)
      : super(_value, (v) => _then(v as ListActionRefreshComplete));

  @override
  ListActionRefreshComplete get _value =>
      super._value as ListActionRefreshComplete;
}

class _$ListActionRefreshComplete implements ListActionRefreshComplete {
  const _$ListActionRefreshComplete();

  @override
  String toString() {
    return 'ListAction.refreshComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListActionRefreshComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refreshComplete(),
  }) {
    assert(refreshComplete != null);
    return refreshComplete();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refreshComplete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshComplete != null) {
      return refreshComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refreshComplete(ListActionRefreshComplete value),
  }) {
    assert(refreshComplete != null);
    return refreshComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refreshComplete(ListActionRefreshComplete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshComplete != null) {
      return refreshComplete(this);
    }
    return orElse();
  }
}

abstract class ListActionRefreshComplete implements ListAction {
  const factory ListActionRefreshComplete() = _$ListActionRefreshComplete;
}

class _$PageStateTearOff {
  const _$PageStateTearOff();

// ignore: unused_element
  PageStateLoading loading() {
    return const PageStateLoading();
  }

// ignore: unused_element
  PageStateList list() {
    return const PageStateList();
  }
}

// ignore: unused_element
const $PageState = _$PageStateTearOff();

mixin _$PageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result list(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result list(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(PageStateLoading value),
    @required Result list(PageStateList value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
    Result list(PageStateList value),
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

abstract class $PageStateLoadingCopyWith<$Res> {
  factory $PageStateLoadingCopyWith(
          PageStateLoading value, $Res Function(PageStateLoading) then) =
      _$PageStateLoadingCopyWithImpl<$Res>;
}

class _$PageStateLoadingCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateLoadingCopyWith<$Res> {
  _$PageStateLoadingCopyWithImpl(
      PageStateLoading _value, $Res Function(PageStateLoading) _then)
      : super(_value, (v) => _then(v as PageStateLoading));

  @override
  PageStateLoading get _value => super._value as PageStateLoading;
}

@Implements(PageIncomplete)
class _$PageStateLoading implements PageStateLoading {
  const _$PageStateLoading();

  @override
  String toString() {
    return 'PageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result list(),
  }) {
    assert(loading != null);
    assert(list != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result list(),
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
    @required Result loading(PageStateLoading value),
    @required Result list(PageStateList value),
  }) {
    assert(loading != null);
    assert(list != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
    Result list(PageStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PageStateLoading implements PageState, PageIncomplete {
  const factory PageStateLoading() = _$PageStateLoading;
}

abstract class $PageStateListCopyWith<$Res> {
  factory $PageStateListCopyWith(
          PageStateList value, $Res Function(PageStateList) then) =
      _$PageStateListCopyWithImpl<$Res>;
}

class _$PageStateListCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateListCopyWith<$Res> {
  _$PageStateListCopyWithImpl(
      PageStateList _value, $Res Function(PageStateList) _then)
      : super(_value, (v) => _then(v as PageStateList));

  @override
  PageStateList get _value => super._value as PageStateList;
}

class _$PageStateList implements PageStateList {
  const _$PageStateList();

  @override
  String toString() {
    return 'PageState.list()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result list(),
  }) {
    assert(loading != null);
    assert(list != null);
    return list();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result list(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(PageStateLoading value),
    @required Result list(PageStateList value),
  }) {
    assert(loading != null);
    assert(list != null);
    return list(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
    Result list(PageStateList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class PageStateList implements PageState {
  const factory PageStateList() = _$PageStateList;
}

class _$AvailableShareTearOff {
  const _$AvailableShareTearOff();

// ignore: unused_element
  _AvailableShare call(
      String id, String name, bool local, bool dirty, bool sending) {
    return _AvailableShare(
      id,
      name,
      local,
      dirty,
      sending,
    );
  }
}

// ignore: unused_element
const $AvailableShare = _$AvailableShareTearOff();

mixin _$AvailableShare {
  String get id;
  String get name;
  bool get local;
  bool get dirty;
  bool get sending;

  $AvailableShareCopyWith<AvailableShare> get copyWith;
}

abstract class $AvailableShareCopyWith<$Res> {
  factory $AvailableShareCopyWith(
          AvailableShare value, $Res Function(AvailableShare) then) =
      _$AvailableShareCopyWithImpl<$Res>;
  $Res call({String id, String name, bool local, bool dirty, bool sending});
}

class _$AvailableShareCopyWithImpl<$Res>
    implements $AvailableShareCopyWith<$Res> {
  _$AvailableShareCopyWithImpl(this._value, this._then);

  final AvailableShare _value;
  // ignore: unused_field
  final $Res Function(AvailableShare) _then;

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

abstract class _$AvailableShareCopyWith<$Res>
    implements $AvailableShareCopyWith<$Res> {
  factory _$AvailableShareCopyWith(
          _AvailableShare value, $Res Function(_AvailableShare) then) =
      __$AvailableShareCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, bool local, bool dirty, bool sending});
}

class __$AvailableShareCopyWithImpl<$Res>
    extends _$AvailableShareCopyWithImpl<$Res>
    implements _$AvailableShareCopyWith<$Res> {
  __$AvailableShareCopyWithImpl(
      _AvailableShare _value, $Res Function(_AvailableShare) _then)
      : super(_value, (v) => _then(v as _AvailableShare));

  @override
  _AvailableShare get _value => super._value as _AvailableShare;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object local = freezed,
    Object dirty = freezed,
    Object sending = freezed,
  }) {
    return _then(_AvailableShare(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
      local == freezed ? _value.local : local as bool,
      dirty == freezed ? _value.dirty : dirty as bool,
      sending == freezed ? _value.sending : sending as bool,
    ));
  }
}

class _$_AvailableShare implements _AvailableShare {
  const _$_AvailableShare(
      this.id, this.name, this.local, this.dirty, this.sending)
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
    return 'AvailableShare(id: $id, name: $name, local: $local, dirty: $dirty, sending: $sending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableShare &&
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
  _$AvailableShareCopyWith<_AvailableShare> get copyWith =>
      __$AvailableShareCopyWithImpl<_AvailableShare>(this, _$identity);
}

abstract class _AvailableShare implements AvailableShare {
  const factory _AvailableShare(
          String id, String name, bool local, bool dirty, bool sending) =
      _$_AvailableShare;

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
  _$AvailableShareCopyWith<_AvailableShare> get copyWith;
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
  ListEventDelete delete(String id) {
    return ListEventDelete(
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
    @required Result delete(String id),
    @required Result reorder(int from, int to),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result item(String id),
    Result delete(String id),
    Result reorder(int from, int to),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(ListEventInit value),
    @required Result update(ListEventUpdate value),
    @required Result refresh(ListEventRefresh value),
    @required Result item(ListEventItem value),
    @required Result delete(ListEventDelete value),
    @required Result reorder(ListEventReorder value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ListEventInit value),
    Result update(ListEventUpdate value),
    Result refresh(ListEventRefresh value),
    Result item(ListEventItem value),
    Result delete(ListEventDelete value),
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
    @required Result delete(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(String id),
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
    @required Result delete(ListEventDelete value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(ListEventDelete value),
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
    @required Result delete(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(String id),
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
    @required Result delete(ListEventDelete value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(ListEventDelete value),
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
    @required Result delete(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(String id),
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
    @required Result delete(ListEventDelete value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(ListEventDelete value),
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
    @required Result delete(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(String id),
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
    @required Result delete(ListEventDelete value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(ListEventDelete value),
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

abstract class $ListEventDeleteCopyWith<$Res> {
  factory $ListEventDeleteCopyWith(
          ListEventDelete value, $Res Function(ListEventDelete) then) =
      _$ListEventDeleteCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$ListEventDeleteCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements $ListEventDeleteCopyWith<$Res> {
  _$ListEventDeleteCopyWithImpl(
      ListEventDelete _value, $Res Function(ListEventDelete) _then)
      : super(_value, (v) => _then(v as ListEventDelete));

  @override
  ListEventDelete get _value => super._value as ListEventDelete;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(ListEventDelete(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$ListEventDelete implements ListEventDelete {
  const _$ListEventDelete(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'ListEvent.delete(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListEventDelete &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $ListEventDeleteCopyWith<ListEventDelete> get copyWith =>
      _$ListEventDeleteCopyWithImpl<ListEventDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result update(),
    @required Result refresh(),
    @required Result item(String id),
    @required Result delete(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
    assert(reorder != null);
    return delete(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result update(),
    Result refresh(),
    Result item(String id),
    Result delete(String id),
    Result reorder(int from, int to),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(id);
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
    @required Result delete(ListEventDelete value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
    assert(reorder != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(ListEventInit value),
    Result update(ListEventUpdate value),
    Result refresh(ListEventRefresh value),
    Result item(ListEventItem value),
    Result delete(ListEventDelete value),
    Result reorder(ListEventReorder value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ListEventDelete implements ListEvent {
  const factory ListEventDelete(String id) = _$ListEventDelete;

  String get id;
  $ListEventDeleteCopyWith<ListEventDelete> get copyWith;
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
    @required Result delete(String id),
    @required Result reorder(int from, int to),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(String id),
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
    @required Result delete(ListEventDelete value),
    @required Result reorder(ListEventReorder value),
  }) {
    assert(init != null);
    assert(update != null);
    assert(refresh != null);
    assert(item != null);
    assert(delete != null);
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
    Result delete(ListEventDelete value),
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
