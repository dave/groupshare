// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'share_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ShareListStateTearOff {
  const _$ShareListStateTearOff();

// ignore: unused_element
  ShareListStateOffline offline() {
    return const ShareListStateOffline();
  }

// ignore: unused_element
  ShareListStateLoading loading() {
    return const ShareListStateLoading();
  }

// ignore: unused_element
  ShareListStateList list({List<User_AvailableShare> shares}) {
    return ShareListStateList(
      shares: shares,
    );
  }

// ignore: unused_element
  ShareListStateError error(dynamic error) {
    return ShareListStateError(
      error,
    );
  }
}

// ignore: unused_element
const $ShareListState = _$ShareListStateTearOff();

mixin _$ShareListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<User_AvailableShare> shares),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result offline(),
    Result loading(),
    Result list(List<User_AvailableShare> shares),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result offline(ShareListStateOffline value),
    @required Result loading(ShareListStateLoading value),
    @required Result list(ShareListStateList value),
    @required Result error(ShareListStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result offline(ShareListStateOffline value),
    Result loading(ShareListStateLoading value),
    Result list(ShareListStateList value),
    Result error(ShareListStateError value),
    @required Result orElse(),
  });
}

abstract class $ShareListStateCopyWith<$Res> {
  factory $ShareListStateCopyWith(
          ShareListState value, $Res Function(ShareListState) then) =
      _$ShareListStateCopyWithImpl<$Res>;
}

class _$ShareListStateCopyWithImpl<$Res>
    implements $ShareListStateCopyWith<$Res> {
  _$ShareListStateCopyWithImpl(this._value, this._then);

  final ShareListState _value;
  // ignore: unused_field
  final $Res Function(ShareListState) _then;
}

abstract class $ShareListStateOfflineCopyWith<$Res> {
  factory $ShareListStateOfflineCopyWith(ShareListStateOffline value,
          $Res Function(ShareListStateOffline) then) =
      _$ShareListStateOfflineCopyWithImpl<$Res>;
}

class _$ShareListStateOfflineCopyWithImpl<$Res>
    extends _$ShareListStateCopyWithImpl<$Res>
    implements $ShareListStateOfflineCopyWith<$Res> {
  _$ShareListStateOfflineCopyWithImpl(
      ShareListStateOffline _value, $Res Function(ShareListStateOffline) _then)
      : super(_value, (v) => _then(v as ShareListStateOffline));

  @override
  ShareListStateOffline get _value => super._value as ShareListStateOffline;
}

class _$ShareListStateOffline implements ShareListStateOffline {
  const _$ShareListStateOffline();

  @override
  String toString() {
    return 'ShareListState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShareListStateOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<User_AvailableShare> shares),
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
    Result list(List<User_AvailableShare> shares),
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
    @required Result offline(ShareListStateOffline value),
    @required Result loading(ShareListStateLoading value),
    @required Result list(ShareListStateList value),
    @required Result error(ShareListStateError value),
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
    Result offline(ShareListStateOffline value),
    Result loading(ShareListStateLoading value),
    Result list(ShareListStateList value),
    Result error(ShareListStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class ShareListStateOffline implements ShareListState {
  const factory ShareListStateOffline() = _$ShareListStateOffline;
}

abstract class $ShareListStateLoadingCopyWith<$Res> {
  factory $ShareListStateLoadingCopyWith(ShareListStateLoading value,
          $Res Function(ShareListStateLoading) then) =
      _$ShareListStateLoadingCopyWithImpl<$Res>;
}

class _$ShareListStateLoadingCopyWithImpl<$Res>
    extends _$ShareListStateCopyWithImpl<$Res>
    implements $ShareListStateLoadingCopyWith<$Res> {
  _$ShareListStateLoadingCopyWithImpl(
      ShareListStateLoading _value, $Res Function(ShareListStateLoading) _then)
      : super(_value, (v) => _then(v as ShareListStateLoading));

  @override
  ShareListStateLoading get _value => super._value as ShareListStateLoading;
}

class _$ShareListStateLoading implements ShareListStateLoading {
  const _$ShareListStateLoading();

  @override
  String toString() {
    return 'ShareListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShareListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<User_AvailableShare> shares),
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
    Result list(List<User_AvailableShare> shares),
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
    @required Result offline(ShareListStateOffline value),
    @required Result loading(ShareListStateLoading value),
    @required Result list(ShareListStateList value),
    @required Result error(ShareListStateError value),
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
    Result offline(ShareListStateOffline value),
    Result loading(ShareListStateLoading value),
    Result list(ShareListStateList value),
    Result error(ShareListStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ShareListStateLoading implements ShareListState {
  const factory ShareListStateLoading() = _$ShareListStateLoading;
}

abstract class $ShareListStateListCopyWith<$Res> {
  factory $ShareListStateListCopyWith(
          ShareListStateList value, $Res Function(ShareListStateList) then) =
      _$ShareListStateListCopyWithImpl<$Res>;
  $Res call({List<User_AvailableShare> shares});
}

class _$ShareListStateListCopyWithImpl<$Res>
    extends _$ShareListStateCopyWithImpl<$Res>
    implements $ShareListStateListCopyWith<$Res> {
  _$ShareListStateListCopyWithImpl(
      ShareListStateList _value, $Res Function(ShareListStateList) _then)
      : super(_value, (v) => _then(v as ShareListStateList));

  @override
  ShareListStateList get _value => super._value as ShareListStateList;

  @override
  $Res call({
    Object shares = freezed,
  }) {
    return _then(ShareListStateList(
      shares: shares == freezed
          ? _value.shares
          : shares as List<User_AvailableShare>,
    ));
  }
}

class _$ShareListStateList implements ShareListStateList {
  const _$ShareListStateList({this.shares});

  @override
  final List<User_AvailableShare> shares;

  @override
  String toString() {
    return 'ShareListState.list(shares: $shares)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShareListStateList &&
            (identical(other.shares, shares) ||
                const DeepCollectionEquality().equals(other.shares, shares)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shares);

  @override
  $ShareListStateListCopyWith<ShareListStateList> get copyWith =>
      _$ShareListStateListCopyWithImpl<ShareListStateList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<User_AvailableShare> shares),
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
    Result list(List<User_AvailableShare> shares),
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
    @required Result offline(ShareListStateOffline value),
    @required Result loading(ShareListStateLoading value),
    @required Result list(ShareListStateList value),
    @required Result error(ShareListStateError value),
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
    Result offline(ShareListStateOffline value),
    Result loading(ShareListStateLoading value),
    Result list(ShareListStateList value),
    Result error(ShareListStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class ShareListStateList implements ShareListState {
  const factory ShareListStateList({List<User_AvailableShare> shares}) =
      _$ShareListStateList;

  List<User_AvailableShare> get shares;
  $ShareListStateListCopyWith<ShareListStateList> get copyWith;
}

abstract class $ShareListStateErrorCopyWith<$Res> {
  factory $ShareListStateErrorCopyWith(
          ShareListStateError value, $Res Function(ShareListStateError) then) =
      _$ShareListStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

class _$ShareListStateErrorCopyWithImpl<$Res>
    extends _$ShareListStateCopyWithImpl<$Res>
    implements $ShareListStateErrorCopyWith<$Res> {
  _$ShareListStateErrorCopyWithImpl(
      ShareListStateError _value, $Res Function(ShareListStateError) _then)
      : super(_value, (v) => _then(v as ShareListStateError));

  @override
  ShareListStateError get _value => super._value as ShareListStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ShareListStateError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

class _$ShareListStateError implements ShareListStateError {
  const _$ShareListStateError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ShareListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShareListStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ShareListStateErrorCopyWith<ShareListStateError> get copyWith =>
      _$ShareListStateErrorCopyWithImpl<ShareListStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result offline(),
    @required Result loading(),
    @required Result list(List<User_AvailableShare> shares),
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
    Result list(List<User_AvailableShare> shares),
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
    @required Result offline(ShareListStateOffline value),
    @required Result loading(ShareListStateLoading value),
    @required Result list(ShareListStateList value),
    @required Result error(ShareListStateError value),
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
    Result offline(ShareListStateOffline value),
    Result loading(ShareListStateLoading value),
    Result list(ShareListStateList value),
    Result error(ShareListStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ShareListStateError implements ShareListState {
  const factory ShareListStateError(dynamic error) = _$ShareListStateError;

  dynamic get error;
  $ShareListStateErrorCopyWith<ShareListStateError> get copyWith;
}
