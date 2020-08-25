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
  _ListState call(PageState page, [SharesState shares]) {
    return _ListState(
      page,
      shares,
    );
  }
}

// ignore: unused_element
const $ListState = _$ListStateTearOff();

mixin _$ListState {
  PageState get page;
  SharesState get shares;

  $ListStateCopyWith<ListState> get copyWith;
}

abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
  $Res call({PageState page, SharesState shares});

  $PageStateCopyWith<$Res> get page;
  $SharesStateCopyWith<$Res> get shares;
}

class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;

  @override
  $Res call({
    Object page = freezed,
    Object shares = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as PageState,
      shares: shares == freezed ? _value.shares : shares as SharesState,
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
  $SharesStateCopyWith<$Res> get shares {
    if (_value.shares == null) {
      return null;
    }
    return $SharesStateCopyWith<$Res>(_value.shares, (value) {
      return _then(_value.copyWith(shares: value));
    });
  }
}

abstract class _$ListStateCopyWith<$Res> implements $ListStateCopyWith<$Res> {
  factory _$ListStateCopyWith(
          _ListState value, $Res Function(_ListState) then) =
      __$ListStateCopyWithImpl<$Res>;
  @override
  $Res call({PageState page, SharesState shares});

  @override
  $PageStateCopyWith<$Res> get page;
  @override
  $SharesStateCopyWith<$Res> get shares;
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
    Object shares = freezed,
  }) {
    return _then(_ListState(
      page == freezed ? _value.page : page as PageState,
      shares == freezed ? _value.shares : shares as SharesState,
    ));
  }
}

class _$_ListState implements _ListState {
  const _$_ListState(this.page, [this.shares]) : assert(page != null);

  @override
  final PageState page;
  @override
  final SharesState shares;

  @override
  String toString() {
    return 'ListState(page: $page, shares: $shares)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.shares, shares) ||
                const DeepCollectionEquality().equals(other.shares, shares)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(shares);

  @override
  _$ListStateCopyWith<_ListState> get copyWith =>
      __$ListStateCopyWithImpl<_ListState>(this, _$identity);
}

abstract class _ListState implements ListState {
  const factory _ListState(PageState page, [SharesState shares]) = _$_ListState;

  @override
  PageState get page;
  @override
  SharesState get shares;
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
  PageStateError error(dynamic error) {
    return PageStateError(
      error,
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
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(),
    Result error(dynamic error),
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
    @required Result error(dynamic error),
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
    Result error(dynamic error),
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
    @required Result error(dynamic error),
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
    Result error(dynamic error),
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
    @required Result error(dynamic error),
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
    Result error(dynamic error),
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
  $Res call({dynamic error});
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
    Object error = freezed,
  }) {
    return _then(PageStateError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

class _$PageStateError implements PageStateError {
  const _$PageStateError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'PageState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $PageStateErrorCopyWith<PageStateError> get copyWith =>
      _$PageStateErrorCopyWithImpl<PageStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(),
    @required Result error(dynamic error),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
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
  const factory PageStateError(dynamic error) = _$PageStateError;

  dynamic get error;
  $PageStateErrorCopyWith<PageStateError> get copyWith;
}

class _$SharesStateTearOff {
  const _$SharesStateTearOff();

// ignore: unused_element
  _SharesState call(
      {@required List<AvailableShare> items,
      Map<String, bool> refreshing = const {}}) {
    return _SharesState(
      items: items,
      refreshing: refreshing,
    );
  }
}

// ignore: unused_element
const $SharesState = _$SharesStateTearOff();

mixin _$SharesState {
  List<AvailableShare> get items;
  Map<String, bool> get refreshing;

  $SharesStateCopyWith<SharesState> get copyWith;
}

abstract class $SharesStateCopyWith<$Res> {
  factory $SharesStateCopyWith(
          SharesState value, $Res Function(SharesState) then) =
      _$SharesStateCopyWithImpl<$Res>;
  $Res call({List<AvailableShare> items, Map<String, bool> refreshing});
}

class _$SharesStateCopyWithImpl<$Res> implements $SharesStateCopyWith<$Res> {
  _$SharesStateCopyWithImpl(this._value, this._then);

  final SharesState _value;
  // ignore: unused_field
  final $Res Function(SharesState) _then;

  @override
  $Res call({
    Object items = freezed,
    Object refreshing = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<AvailableShare>,
      refreshing: refreshing == freezed
          ? _value.refreshing
          : refreshing as Map<String, bool>,
    ));
  }
}

abstract class _$SharesStateCopyWith<$Res>
    implements $SharesStateCopyWith<$Res> {
  factory _$SharesStateCopyWith(
          _SharesState value, $Res Function(_SharesState) then) =
      __$SharesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<AvailableShare> items, Map<String, bool> refreshing});
}

class __$SharesStateCopyWithImpl<$Res> extends _$SharesStateCopyWithImpl<$Res>
    implements _$SharesStateCopyWith<$Res> {
  __$SharesStateCopyWithImpl(
      _SharesState _value, $Res Function(_SharesState) _then)
      : super(_value, (v) => _then(v as _SharesState));

  @override
  _SharesState get _value => super._value as _SharesState;

  @override
  $Res call({
    Object items = freezed,
    Object refreshing = freezed,
  }) {
    return _then(_SharesState(
      items: items == freezed ? _value.items : items as List<AvailableShare>,
      refreshing: refreshing == freezed
          ? _value.refreshing
          : refreshing as Map<String, bool>,
    ));
  }
}

class _$_SharesState implements _SharesState {
  const _$_SharesState({@required this.items, this.refreshing = const {}})
      : assert(items != null),
        assert(refreshing != null);

  @override
  final List<AvailableShare> items;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, bool> refreshing;

  @override
  String toString() {
    return 'SharesState(items: $items, refreshing: $refreshing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SharesState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.refreshing, refreshing) ||
                const DeepCollectionEquality()
                    .equals(other.refreshing, refreshing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(refreshing);

  @override
  _$SharesStateCopyWith<_SharesState> get copyWith =>
      __$SharesStateCopyWithImpl<_SharesState>(this, _$identity);
}

abstract class _SharesState implements SharesState {
  const factory _SharesState(
      {@required List<AvailableShare> items,
      Map<String, bool> refreshing}) = _$_SharesState;

  @override
  List<AvailableShare> get items;
  @override
  Map<String, bool> get refreshing;
  @override
  _$SharesStateCopyWith<_SharesState> get copyWith;
}

class _$AvailableShareTearOff {
  const _$AvailableShareTearOff();

// ignore: unused_element
  _AvailableShare call(String id, String name) {
    return _AvailableShare(
      id,
      name,
    );
  }
}

// ignore: unused_element
const $AvailableShare = _$AvailableShareTearOff();

mixin _$AvailableShare {
  String get id;
  String get name;

  $AvailableShareCopyWith<AvailableShare> get copyWith;
}

abstract class $AvailableShareCopyWith<$Res> {
  factory $AvailableShareCopyWith(
          AvailableShare value, $Res Function(AvailableShare) then) =
      _$AvailableShareCopyWithImpl<$Res>;
  $Res call({String id, String name});
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
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$AvailableShareCopyWith<$Res>
    implements $AvailableShareCopyWith<$Res> {
  factory _$AvailableShareCopyWith(
          _AvailableShare value, $Res Function(_AvailableShare) then) =
      __$AvailableShareCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
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
  }) {
    return _then(_AvailableShare(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_AvailableShare implements _AvailableShare {
  const _$_AvailableShare(this.id, this.name)
      : assert(id != null),
        assert(name != null);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'AvailableShare(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableShare &&
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
  _$AvailableShareCopyWith<_AvailableShare> get copyWith =>
      __$AvailableShareCopyWithImpl<_AvailableShare>(this, _$identity);
}

abstract class _AvailableShare implements AvailableShare {
  const factory _AvailableShare(String id, String name) = _$_AvailableShare;

  @override
  String get id;
  @override
  String get name;
  @override
  _$AvailableShareCopyWith<_AvailableShare> get copyWith;
}
