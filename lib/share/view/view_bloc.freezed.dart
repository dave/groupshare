// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ViewStateTearOff {
  const _$ViewStateTearOff();

// ignore: unused_element
  ViewStateInitial initial(String id) {
    return ViewStateInitial(
      id,
    );
  }

// ignore: unused_element
  ViewStateLoading loading(String id) {
    return ViewStateLoading(
      id,
    );
  }

// ignore: unused_element
  ViewStateOffline offline(String id) {
    return ViewStateOffline(
      id,
    );
  }

// ignore: unused_element
  ViewStateError error(
      String id, dynamic error, StackTrace stack, ViewState retryState) {
    return ViewStateError(
      id,
      error,
      stack,
      retryState,
    );
  }

// ignore: unused_element
  ViewStateDone done(String id, String name) {
    return ViewStateDone(
      id,
      name,
    );
  }
}

// ignore: unused_element
const $ViewState = _$ViewStateTearOff();

mixin _$ViewState {
  String get id;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result loading(String id),
    @required Result offline(String id),
    @required
        Result error(
            String id, dynamic error, StackTrace stack, ViewState retryState),
    @required Result done(String id, String name),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result loading(String id),
    Result offline(String id),
    Result error(
        String id, dynamic error, StackTrace stack, ViewState retryState),
    Result done(String id, String name),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ViewStateInitial value),
    @required Result loading(ViewStateLoading value),
    @required Result offline(ViewStateOffline value),
    @required Result error(ViewStateError value),
    @required Result done(ViewStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ViewStateInitial value),
    Result loading(ViewStateLoading value),
    Result offline(ViewStateOffline value),
    Result error(ViewStateError value),
    Result done(ViewStateDone value),
    @required Result orElse(),
  });

  $ViewStateCopyWith<ViewState> get copyWith;
}

abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$ViewStateCopyWithImpl<$Res> implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState _value;
  // ignore: unused_field
  final $Res Function(ViewState) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class $ViewStateInitialCopyWith<$Res>
    implements $ViewStateCopyWith<$Res> {
  factory $ViewStateInitialCopyWith(
          ViewStateInitial value, $Res Function(ViewStateInitial) then) =
      _$ViewStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

class _$ViewStateInitialCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements $ViewStateInitialCopyWith<$Res> {
  _$ViewStateInitialCopyWithImpl(
      ViewStateInitial _value, $Res Function(ViewStateInitial) _then)
      : super(_value, (v) => _then(v as ViewStateInitial));

  @override
  ViewStateInitial get _value => super._value as ViewStateInitial;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(ViewStateInitial(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$ViewStateInitial implements ViewStateInitial {
  const _$ViewStateInitial(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'ViewState.initial(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewStateInitial &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $ViewStateInitialCopyWith<ViewStateInitial> get copyWith =>
      _$ViewStateInitialCopyWithImpl<ViewStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result loading(String id),
    @required Result offline(String id),
    @required
        Result error(
            String id, dynamic error, StackTrace stack, ViewState retryState),
    @required Result done(String id, String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return initial(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result loading(String id),
    Result offline(String id),
    Result error(
        String id, dynamic error, StackTrace stack, ViewState retryState),
    Result done(String id, String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ViewStateInitial value),
    @required Result loading(ViewStateLoading value),
    @required Result offline(ViewStateOffline value),
    @required Result error(ViewStateError value),
    @required Result done(ViewStateDone value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ViewStateInitial value),
    Result loading(ViewStateLoading value),
    Result offline(ViewStateOffline value),
    Result error(ViewStateError value),
    Result done(ViewStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ViewStateInitial implements ViewState {
  const factory ViewStateInitial(String id) = _$ViewStateInitial;

  @override
  String get id;
  @override
  $ViewStateInitialCopyWith<ViewStateInitial> get copyWith;
}

abstract class $ViewStateLoadingCopyWith<$Res>
    implements $ViewStateCopyWith<$Res> {
  factory $ViewStateLoadingCopyWith(
          ViewStateLoading value, $Res Function(ViewStateLoading) then) =
      _$ViewStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

class _$ViewStateLoadingCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements $ViewStateLoadingCopyWith<$Res> {
  _$ViewStateLoadingCopyWithImpl(
      ViewStateLoading _value, $Res Function(ViewStateLoading) _then)
      : super(_value, (v) => _then(v as ViewStateLoading));

  @override
  ViewStateLoading get _value => super._value as ViewStateLoading;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(ViewStateLoading(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$ViewStateLoading implements ViewStateLoading {
  const _$ViewStateLoading(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'ViewState.loading(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewStateLoading &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $ViewStateLoadingCopyWith<ViewStateLoading> get copyWith =>
      _$ViewStateLoadingCopyWithImpl<ViewStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result loading(String id),
    @required Result offline(String id),
    @required
        Result error(
            String id, dynamic error, StackTrace stack, ViewState retryState),
    @required Result done(String id, String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return loading(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result loading(String id),
    Result offline(String id),
    Result error(
        String id, dynamic error, StackTrace stack, ViewState retryState),
    Result done(String id, String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ViewStateInitial value),
    @required Result loading(ViewStateLoading value),
    @required Result offline(ViewStateOffline value),
    @required Result error(ViewStateError value),
    @required Result done(ViewStateDone value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ViewStateInitial value),
    Result loading(ViewStateLoading value),
    Result offline(ViewStateOffline value),
    Result error(ViewStateError value),
    Result done(ViewStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViewStateLoading implements ViewState {
  const factory ViewStateLoading(String id) = _$ViewStateLoading;

  @override
  String get id;
  @override
  $ViewStateLoadingCopyWith<ViewStateLoading> get copyWith;
}

abstract class $ViewStateOfflineCopyWith<$Res>
    implements $ViewStateCopyWith<$Res> {
  factory $ViewStateOfflineCopyWith(
          ViewStateOffline value, $Res Function(ViewStateOffline) then) =
      _$ViewStateOfflineCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

class _$ViewStateOfflineCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements $ViewStateOfflineCopyWith<$Res> {
  _$ViewStateOfflineCopyWithImpl(
      ViewStateOffline _value, $Res Function(ViewStateOffline) _then)
      : super(_value, (v) => _then(v as ViewStateOffline));

  @override
  ViewStateOffline get _value => super._value as ViewStateOffline;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(ViewStateOffline(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$ViewStateOffline implements ViewStateOffline {
  const _$ViewStateOffline(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'ViewState.offline(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewStateOffline &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $ViewStateOfflineCopyWith<ViewStateOffline> get copyWith =>
      _$ViewStateOfflineCopyWithImpl<ViewStateOffline>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result loading(String id),
    @required Result offline(String id),
    @required
        Result error(
            String id, dynamic error, StackTrace stack, ViewState retryState),
    @required Result done(String id, String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return offline(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result loading(String id),
    Result offline(String id),
    Result error(
        String id, dynamic error, StackTrace stack, ViewState retryState),
    Result done(String id, String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ViewStateInitial value),
    @required Result loading(ViewStateLoading value),
    @required Result offline(ViewStateOffline value),
    @required Result error(ViewStateError value),
    @required Result done(ViewStateDone value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return offline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ViewStateInitial value),
    Result loading(ViewStateLoading value),
    Result offline(ViewStateOffline value),
    Result error(ViewStateError value),
    Result done(ViewStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class ViewStateOffline implements ViewState {
  const factory ViewStateOffline(String id) = _$ViewStateOffline;

  @override
  String get id;
  @override
  $ViewStateOfflineCopyWith<ViewStateOffline> get copyWith;
}

abstract class $ViewStateErrorCopyWith<$Res>
    implements $ViewStateCopyWith<$Res> {
  factory $ViewStateErrorCopyWith(
          ViewStateError value, $Res Function(ViewStateError) then) =
      _$ViewStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String id, dynamic error, StackTrace stack, ViewState retryState});
}

class _$ViewStateErrorCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements $ViewStateErrorCopyWith<$Res> {
  _$ViewStateErrorCopyWithImpl(
      ViewStateError _value, $Res Function(ViewStateError) _then)
      : super(_value, (v) => _then(v as ViewStateError));

  @override
  ViewStateError get _value => super._value as ViewStateError;

  @override
  $Res call({
    Object id = freezed,
    Object error = freezed,
    Object stack = freezed,
    Object retryState = freezed,
  }) {
    return _then(ViewStateError(
      id == freezed ? _value.id : id as String,
      error == freezed ? _value.error : error as dynamic,
      stack == freezed ? _value.stack : stack as StackTrace,
      retryState == freezed ? _value.retryState : retryState as ViewState,
    ));
  }
}

class _$ViewStateError implements ViewStateError {
  const _$ViewStateError(this.id, this.error, this.stack, this.retryState)
      : assert(id != null),
        assert(error != null),
        assert(stack != null),
        assert(retryState != null);

  @override
  final String id;
  @override
  final dynamic error;
  @override
  final StackTrace stack;
  @override
  final ViewState retryState;

  @override
  String toString() {
    return 'ViewState.error(id: $id, error: $error, stack: $stack, retryState: $retryState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewStateError &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stack, stack) ||
                const DeepCollectionEquality().equals(other.stack, stack)) &&
            (identical(other.retryState, retryState) ||
                const DeepCollectionEquality()
                    .equals(other.retryState, retryState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stack) ^
      const DeepCollectionEquality().hash(retryState);

  @override
  $ViewStateErrorCopyWith<ViewStateError> get copyWith =>
      _$ViewStateErrorCopyWithImpl<ViewStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result loading(String id),
    @required Result offline(String id),
    @required
        Result error(
            String id, dynamic error, StackTrace stack, ViewState retryState),
    @required Result done(String id, String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return error(id, this.error, stack, retryState);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result loading(String id),
    Result offline(String id),
    Result error(
        String id, dynamic error, StackTrace stack, ViewState retryState),
    Result done(String id, String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(id, this.error, stack, retryState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(ViewStateInitial value),
    @required Result loading(ViewStateLoading value),
    @required Result offline(ViewStateOffline value),
    @required Result error(ViewStateError value),
    @required Result done(ViewStateDone value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ViewStateInitial value),
    Result loading(ViewStateLoading value),
    Result offline(ViewStateOffline value),
    Result error(ViewStateError value),
    Result done(ViewStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ViewStateError implements ViewState {
  const factory ViewStateError(
          String id, dynamic error, StackTrace stack, ViewState retryState) =
      _$ViewStateError;

  @override
  String get id;
  dynamic get error;
  StackTrace get stack;
  ViewState get retryState;
  @override
  $ViewStateErrorCopyWith<ViewStateError> get copyWith;
}

abstract class $ViewStateDoneCopyWith<$Res>
    implements $ViewStateCopyWith<$Res> {
  factory $ViewStateDoneCopyWith(
          ViewStateDone value, $Res Function(ViewStateDone) then) =
      _$ViewStateDoneCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

class _$ViewStateDoneCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements $ViewStateDoneCopyWith<$Res> {
  _$ViewStateDoneCopyWithImpl(
      ViewStateDone _value, $Res Function(ViewStateDone) _then)
      : super(_value, (v) => _then(v as ViewStateDone));

  @override
  ViewStateDone get _value => super._value as ViewStateDone;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(ViewStateDone(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$ViewStateDone implements ViewStateDone {
  const _$ViewStateDone(this.id, this.name)
      : assert(id != null),
        assert(name != null);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ViewState.done(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewStateDone &&
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
  $ViewStateDoneCopyWith<ViewStateDone> get copyWith =>
      _$ViewStateDoneCopyWithImpl<ViewStateDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result loading(String id),
    @required Result offline(String id),
    @required
        Result error(
            String id, dynamic error, StackTrace stack, ViewState retryState),
    @required Result done(String id, String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return done(id, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result loading(String id),
    Result offline(String id),
    Result error(
        String id, dynamic error, StackTrace stack, ViewState retryState),
    Result done(String id, String name),
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
    @required Result initial(ViewStateInitial value),
    @required Result loading(ViewStateLoading value),
    @required Result offline(ViewStateOffline value),
    @required Result error(ViewStateError value),
    @required Result done(ViewStateDone value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(ViewStateInitial value),
    Result loading(ViewStateLoading value),
    Result offline(ViewStateOffline value),
    Result error(ViewStateError value),
    Result done(ViewStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ViewStateDone implements ViewState {
  const factory ViewStateDone(String id, String name) = _$ViewStateDone;

  @override
  String get id;
  String get name;
  @override
  $ViewStateDoneCopyWith<ViewStateDone> get copyWith;
}
