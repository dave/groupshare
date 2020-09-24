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
      {@required PageState page, @required List<AvailableShare> items}) {
    return _ListState(
      page: page,
      items: items,
    );
  }
}

// ignore: unused_element
const $ListState = _$ListStateTearOff();

mixin _$ListState {
  PageState get page;
  List<AvailableShare> get items;

  $ListStateCopyWith<ListState> get copyWith;
}

abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
  $Res call({PageState page, List<AvailableShare> items});

  $PageStateCopyWith<$Res> get page;
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
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as PageState,
      items: items == freezed ? _value.items : items as List<AvailableShare>,
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
}

abstract class _$ListStateCopyWith<$Res> implements $ListStateCopyWith<$Res> {
  factory _$ListStateCopyWith(
          _ListState value, $Res Function(_ListState) then) =
      __$ListStateCopyWithImpl<$Res>;
  @override
  $Res call({PageState page, List<AvailableShare> items});

  @override
  $PageStateCopyWith<$Res> get page;
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
  }) {
    return _then(_ListState(
      page: page == freezed ? _value.page : page as PageState,
      items: items == freezed ? _value.items : items as List<AvailableShare>,
    ));
  }
}

class _$_ListState implements _ListState {
  const _$_ListState({@required this.page, @required this.items})
      : assert(page != null),
        assert(items != null);

  @override
  final PageState page;
  @override
  final List<AvailableShare> items;

  @override
  String toString() {
    return 'ListState(page: $page, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(items);

  @override
  _$ListStateCopyWith<_ListState> get copyWith =>
      __$ListStateCopyWithImpl<_ListState>(this, _$identity);
}

abstract class _ListState implements ListState {
  const factory _ListState(
      {@required PageState page,
      @required List<AvailableShare> items}) = _$_ListState;

  @override
  PageState get page;
  @override
  List<AvailableShare> get items;
  @override
  _$ListStateCopyWith<_ListState> get copyWith;
}

class _$PageStateTearOff {
  const _$PageStateTearOff();

// ignore: unused_element
  PageStateOffline offline() {
    return const PageStateOffline();
  }

// ignore: unused_element
  PageStateLoading loading() {
    return const PageStateLoading();
  }

// ignore: unused_element
  PageStateList list() {
    return const PageStateList();
  }

// ignore: unused_element
  PageStateError error(dynamic ex, StackTrace stack) {
    return PageStateError(
      ex,
      stack,
    );
  }
}

// ignore: unused_element
const $PageState = _$PageStateTearOff();

mixin _$PageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(),
    @required Result error(dynamic ex, StackTrace stack),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(),
    Result error(dynamic ex, StackTrace stack),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result offline(PageStateOffline value),
    @required Result loading(PageStateLoading value),
    @required Result list(PageStateList value),
    @required Result error(PageStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result offline(PageStateOffline value),
    Result loading(PageStateLoading value),
    Result list(PageStateList value),
    Result error(PageStateError value),
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

abstract class $PageStateOfflineCopyWith<$Res> {
  factory $PageStateOfflineCopyWith(
          PageStateOffline value, $Res Function(PageStateOffline) then) =
      _$PageStateOfflineCopyWithImpl<$Res>;
}

class _$PageStateOfflineCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateOfflineCopyWith<$Res> {
  _$PageStateOfflineCopyWithImpl(
      PageStateOffline _value, $Res Function(PageStateOffline) _then)
      : super(_value, (v) => _then(v as PageStateOffline));

  @override
  PageStateOffline get _value => super._value as PageStateOffline;
}

class _$PageStateOffline implements PageStateOffline {
  const _$PageStateOffline();

  @override
  String toString() {
    return 'PageState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(),
    @required Result error(dynamic ex, StackTrace stack),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return offline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(),
    Result error(dynamic ex, StackTrace stack),
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
    @required Result offline(PageStateOffline value),
    @required Result loading(PageStateLoading value),
    @required Result list(PageStateList value),
    @required Result error(PageStateError value),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return offline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result offline(PageStateOffline value),
    Result loading(PageStateLoading value),
    Result list(PageStateList value),
    Result error(PageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class PageStateOffline implements PageState {
  const factory PageStateOffline() = _$PageStateOffline;
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
    @required Result offline(),
    @required Result loading(),
    @required Result list(),
    @required Result error(dynamic ex, StackTrace stack),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(),
    Result error(dynamic ex, StackTrace stack),
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
    @required Result offline(PageStateOffline value),
    @required Result loading(PageStateLoading value),
    @required Result list(PageStateList value),
    @required Result error(PageStateError value),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result offline(PageStateOffline value),
    Result loading(PageStateLoading value),
    Result list(PageStateList value),
    Result error(PageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PageStateLoading implements PageState {
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
    @required Result offline(),
    @required Result loading(),
    @required Result list(),
    @required Result error(dynamic ex, StackTrace stack),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return list();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(),
    Result error(dynamic ex, StackTrace stack),
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
    @required Result offline(PageStateOffline value),
    @required Result loading(PageStateLoading value),
    @required Result list(PageStateList value),
    @required Result error(PageStateError value),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return list(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result offline(PageStateOffline value),
    Result loading(PageStateLoading value),
    Result list(PageStateList value),
    Result error(PageStateError value),
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

abstract class $PageStateErrorCopyWith<$Res> {
  factory $PageStateErrorCopyWith(
          PageStateError value, $Res Function(PageStateError) then) =
      _$PageStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic ex, StackTrace stack});
}

class _$PageStateErrorCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateErrorCopyWith<$Res> {
  _$PageStateErrorCopyWithImpl(
      PageStateError _value, $Res Function(PageStateError) _then)
      : super(_value, (v) => _then(v as PageStateError));

  @override
  PageStateError get _value => super._value as PageStateError;

  @override
  $Res call({
    Object ex = freezed,
    Object stack = freezed,
  }) {
    return _then(PageStateError(
      ex == freezed ? _value.ex : ex as dynamic,
      stack == freezed ? _value.stack : stack as StackTrace,
    ));
  }
}

class _$PageStateError implements PageStateError {
  const _$PageStateError(this.ex, this.stack)
      : assert(ex != null),
        assert(stack != null);

  @override
  final dynamic ex;
  @override
  final StackTrace stack;

  @override
  String toString() {
    return 'PageState.error(ex: $ex, stack: $stack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageStateError &&
            (identical(other.ex, ex) ||
                const DeepCollectionEquality().equals(other.ex, ex)) &&
            (identical(other.stack, stack) ||
                const DeepCollectionEquality().equals(other.stack, stack)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ex) ^
      const DeepCollectionEquality().hash(stack);

  @override
  $PageStateErrorCopyWith<PageStateError> get copyWith =>
      _$PageStateErrorCopyWithImpl<PageStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(),
    @required Result error(dynamic ex, StackTrace stack),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return error(ex, stack);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(),
    Result error(dynamic ex, StackTrace stack),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(ex, stack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result offline(PageStateOffline value),
    @required Result loading(PageStateLoading value),
    @required Result list(PageStateList value),
    @required Result error(PageStateError value),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result offline(PageStateOffline value),
    Result loading(PageStateLoading value),
    Result list(PageStateList value),
    Result error(PageStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PageStateError implements PageState {
  const factory PageStateError(dynamic ex, StackTrace stack) = _$PageStateError;

  dynamic get ex;
  StackTrace get stack;
  $PageStateErrorCopyWith<PageStateError> get copyWith;
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
