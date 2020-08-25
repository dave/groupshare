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
  ListStateOffline offline() {
    return const ListStateOffline();
  }

// ignore: unused_element
  ListStateLoading loading() {
    return const ListStateLoading();
  }

// ignore: unused_element
  ListStateList list({List<AvailableShare> shares}) {
    return ListStateList(
      shares: shares,
    );
  }

// ignore: unused_element
  ListStateError error(dynamic error) {
    return ListStateError(
      error,
    );
  }
}

// ignore: unused_element
const $ListState = _$ListStateTearOff();

mixin _$ListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<AvailableShare> shares),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(List<AvailableShare> shares),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result offline(ListStateOffline value),
    @required Result loading(ListStateLoading value),
    @required Result list(ListStateList value),
    @required Result error(ListStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result offline(ListStateOffline value),
    Result loading(ListStateLoading value),
    Result list(ListStateList value),
    Result error(ListStateError value),
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

abstract class $ListStateOfflineCopyWith<$Res> {
  factory $ListStateOfflineCopyWith(
          ListStateOffline value, $Res Function(ListStateOffline) then) =
      _$ListStateOfflineCopyWithImpl<$Res>;
}

class _$ListStateOfflineCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements $ListStateOfflineCopyWith<$Res> {
  _$ListStateOfflineCopyWithImpl(
      ListStateOffline _value, $Res Function(ListStateOffline) _then)
      : super(_value, (v) => _then(v as ListStateOffline));

  @override
  ListStateOffline get _value => super._value as ListStateOffline;
}

class _$ListStateOffline implements ListStateOffline {
  const _$ListStateOffline();

  @override
  String toString() {
    return 'ListState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListStateOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<AvailableShare> shares),
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
    Result list(List<AvailableShare> shares),
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
    @required Result offline(ListStateOffline value),
    @required Result loading(ListStateLoading value),
    @required Result list(ListStateList value),
    @required Result error(ListStateError value),
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
    Result offline(ListStateOffline value),
    Result loading(ListStateLoading value),
    Result list(ListStateList value),
    Result error(ListStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class ListStateOffline implements ListState {
  const factory ListStateOffline() = _$ListStateOffline;
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
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<AvailableShare> shares),
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
    Result list(List<AvailableShare> shares),
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
    @required Result offline(ListStateOffline value),
    @required Result loading(ListStateLoading value),
    @required Result list(ListStateList value),
    @required Result error(ListStateError value),
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
    Result offline(ListStateOffline value),
    Result loading(ListStateLoading value),
    Result list(ListStateList value),
    Result error(ListStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ListStateLoading implements ListState {
  const factory ListStateLoading() = _$ListStateLoading;
}

abstract class $ListStateListCopyWith<$Res> {
  factory $ListStateListCopyWith(
          ListStateList value, $Res Function(ListStateList) then) =
      _$ListStateListCopyWithImpl<$Res>;
  $Res call({List<AvailableShare> shares});
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
    Object shares = freezed,
  }) {
    return _then(ListStateList(
      shares:
          shares == freezed ? _value.shares : shares as List<AvailableShare>,
    ));
  }
}

class _$ListStateList implements ListStateList {
  const _$ListStateList({this.shares});

  @override
  final List<AvailableShare> shares;

  @override
  String toString() {
    return 'ListState.list(shares: $shares)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListStateList &&
            (identical(other.shares, shares) ||
                const DeepCollectionEquality().equals(other.shares, shares)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shares);

  @override
  $ListStateListCopyWith<ListStateList> get copyWith =>
      _$ListStateListCopyWithImpl<ListStateList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<AvailableShare> shares),
    @required Result error(dynamic error),
  }) {
    assert(offline != null);
    assert(loading != null);
    assert(list != null);
    assert(error != null);
    return list(shares);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(List<AvailableShare> shares),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(shares);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result offline(ListStateOffline value),
    @required Result loading(ListStateLoading value),
    @required Result list(ListStateList value),
    @required Result error(ListStateError value),
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
    Result offline(ListStateOffline value),
    Result loading(ListStateLoading value),
    Result list(ListStateList value),
    Result error(ListStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class ListStateList implements ListState {
  const factory ListStateList({List<AvailableShare> shares}) = _$ListStateList;

  List<AvailableShare> get shares;
  $ListStateListCopyWith<ListStateList> get copyWith;
}

abstract class $ListStateErrorCopyWith<$Res> {
  factory $ListStateErrorCopyWith(
          ListStateError value, $Res Function(ListStateError) then) =
      _$ListStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

class _$ListStateErrorCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements $ListStateErrorCopyWith<$Res> {
  _$ListStateErrorCopyWithImpl(
      ListStateError _value, $Res Function(ListStateError) _then)
      : super(_value, (v) => _then(v as ListStateError));

  @override
  ListStateError get _value => super._value as ListStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ListStateError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

class _$ListStateError implements ListStateError {
  const _$ListStateError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ListStateErrorCopyWith<ListStateError> get copyWith =>
      _$ListStateErrorCopyWithImpl<ListStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<AvailableShare> shares),
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
    Result list(List<AvailableShare> shares),
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
    @required Result offline(ListStateOffline value),
    @required Result loading(ListStateLoading value),
    @required Result list(ListStateList value),
    @required Result error(ListStateError value),
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
    Result offline(ListStateOffline value),
    Result loading(ListStateLoading value),
    Result list(ListStateList value),
    Result error(ListStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListStateError implements ListState {
  const factory ListStateError(dynamic error) = _$ListStateError;

  dynamic get error;
  $ListStateErrorCopyWith<ListStateError> get copyWith;
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
