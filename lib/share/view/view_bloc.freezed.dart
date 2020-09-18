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
  _ViewState call(String id, PageState page) {
    return _ViewState(
      id,
      page,
    );
  }
}

// ignore: unused_element
const $ViewState = _$ViewStateTearOff();

mixin _$ViewState {
  String get id;
  PageState get page;

  $ViewStateCopyWith<ViewState> get copyWith;
}

abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res>;
  $Res call({String id, PageState page});

  $PageStateCopyWith<$Res> get page;
}

class _$ViewStateCopyWithImpl<$Res> implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState _value;
  // ignore: unused_field
  final $Res Function(ViewState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object page = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      page: page == freezed ? _value.page : page as PageState,
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

abstract class _$ViewStateCopyWith<$Res> implements $ViewStateCopyWith<$Res> {
  factory _$ViewStateCopyWith(
          _ViewState value, $Res Function(_ViewState) then) =
      __$ViewStateCopyWithImpl<$Res>;
  @override
  $Res call({String id, PageState page});

  @override
  $PageStateCopyWith<$Res> get page;
}

class __$ViewStateCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$ViewStateCopyWith<$Res> {
  __$ViewStateCopyWithImpl(_ViewState _value, $Res Function(_ViewState) _then)
      : super(_value, (v) => _then(v as _ViewState));

  @override
  _ViewState get _value => super._value as _ViewState;

  @override
  $Res call({
    Object id = freezed,
    Object page = freezed,
  }) {
    return _then(_ViewState(
      id == freezed ? _value.id : id as String,
      page == freezed ? _value.page : page as PageState,
    ));
  }
}

class _$_ViewState implements _ViewState {
  const _$_ViewState(this.id, this.page)
      : assert(id != null),
        assert(page != null);

  @override
  final String id;
  @override
  final PageState page;

  @override
  String toString() {
    return 'ViewState(id: $id, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(page);

  @override
  _$ViewStateCopyWith<_ViewState> get copyWith =>
      __$ViewStateCopyWithImpl<_ViewState>(this, _$identity);
}

abstract class _ViewState implements ViewState {
  const factory _ViewState(String id, PageState page) = _$_ViewState;

  @override
  String get id;
  @override
  PageState get page;
  @override
  _$ViewStateCopyWith<_ViewState> get copyWith;
}

class _$PageStateTearOff {
  const _$PageStateTearOff();

// ignore: unused_element
  PageStateInitial initial() {
    return const PageStateInitial();
  }

// ignore: unused_element
  PageStateLoading loading() {
    return const PageStateLoading();
  }

// ignore: unused_element
  PageStateOffline offline() {
    return const PageStateOffline();
  }

// ignore: unused_element
  PageStateError error(dynamic error, StackTrace stack) {
    return PageStateError(
      error,
      stack,
    );
  }

// ignore: unused_element
  PageStateDone done(String name) {
    return PageStateDone(
      name,
    );
  }
}

// ignore: unused_element
const $PageState = _$PageStateTearOff();

mixin _$PageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result offline(),
    @required Result error(dynamic error, StackTrace stack),
    @required Result done(String name),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result offline(),
    Result error(dynamic error, StackTrace stack),
    Result done(String name),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PageStateInitial value),
    @required Result loading(PageStateLoading value),
    @required Result offline(PageStateOffline value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PageStateInitial value),
    Result loading(PageStateLoading value),
    Result offline(PageStateOffline value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
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

abstract class $PageStateInitialCopyWith<$Res> {
  factory $PageStateInitialCopyWith(
          PageStateInitial value, $Res Function(PageStateInitial) then) =
      _$PageStateInitialCopyWithImpl<$Res>;
}

class _$PageStateInitialCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateInitialCopyWith<$Res> {
  _$PageStateInitialCopyWithImpl(
      PageStateInitial _value, $Res Function(PageStateInitial) _then)
      : super(_value, (v) => _then(v as PageStateInitial));

  @override
  PageStateInitial get _value => super._value as PageStateInitial;
}

class _$PageStateInitial implements PageStateInitial {
  const _$PageStateInitial();

  @override
  String toString() {
    return 'PageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result offline(),
    @required Result error(dynamic error, StackTrace stack),
    @required Result done(String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result offline(),
    Result error(dynamic error, StackTrace stack),
    Result done(String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PageStateInitial value),
    @required Result loading(PageStateLoading value),
    @required Result offline(PageStateOffline value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
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
    Result initial(PageStateInitial value),
    Result loading(PageStateLoading value),
    Result offline(PageStateOffline value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PageStateInitial implements PageState {
  const factory PageStateInitial() = _$PageStateInitial;
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
    @required Result initial(),
    @required Result loading(),
    @required Result offline(),
    @required Result error(dynamic error, StackTrace stack),
    @required Result done(String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result offline(),
    Result error(dynamic error, StackTrace stack),
    Result done(String name),
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
    @required Result initial(PageStateInitial value),
    @required Result loading(PageStateLoading value),
    @required Result offline(PageStateOffline value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
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
    Result initial(PageStateInitial value),
    Result loading(PageStateLoading value),
    Result offline(PageStateOffline value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
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
    @required Result initial(),
    @required Result loading(),
    @required Result offline(),
    @required Result error(dynamic error, StackTrace stack),
    @required Result done(String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return offline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result offline(),
    Result error(dynamic error, StackTrace stack),
    Result done(String name),
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
    @required Result initial(PageStateInitial value),
    @required Result loading(PageStateLoading value),
    @required Result offline(PageStateOffline value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
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
    Result initial(PageStateInitial value),
    Result loading(PageStateLoading value),
    Result offline(PageStateOffline value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
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

abstract class $PageStateErrorCopyWith<$Res> {
  factory $PageStateErrorCopyWith(
          PageStateError value, $Res Function(PageStateError) then) =
      _$PageStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, StackTrace stack});
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
    Object stack = freezed,
  }) {
    return _then(PageStateError(
      error == freezed ? _value.error : error as dynamic,
      stack == freezed ? _value.stack : stack as StackTrace,
    ));
  }
}

class _$PageStateError implements PageStateError {
  const _$PageStateError(this.error, this.stack)
      : assert(error != null),
        assert(stack != null);

  @override
  final dynamic error;
  @override
  final StackTrace stack;

  @override
  String toString() {
    return 'PageState.error(error: $error, stack: $stack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stack, stack) ||
                const DeepCollectionEquality().equals(other.stack, stack)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stack);

  @override
  $PageStateErrorCopyWith<PageStateError> get copyWith =>
      _$PageStateErrorCopyWithImpl<PageStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result offline(),
    @required Result error(dynamic error, StackTrace stack),
    @required Result done(String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return error(this.error, stack);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result offline(),
    Result error(dynamic error, StackTrace stack),
    Result done(String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, stack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PageStateInitial value),
    @required Result loading(PageStateLoading value),
    @required Result offline(PageStateOffline value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
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
    Result initial(PageStateInitial value),
    Result loading(PageStateLoading value),
    Result offline(PageStateOffline value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
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
  const factory PageStateError(dynamic error, StackTrace stack) =
      _$PageStateError;

  dynamic get error;
  StackTrace get stack;
  $PageStateErrorCopyWith<PageStateError> get copyWith;
}

abstract class $PageStateDoneCopyWith<$Res> {
  factory $PageStateDoneCopyWith(
          PageStateDone value, $Res Function(PageStateDone) then) =
      _$PageStateDoneCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$PageStateDoneCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateDoneCopyWith<$Res> {
  _$PageStateDoneCopyWithImpl(
      PageStateDone _value, $Res Function(PageStateDone) _then)
      : super(_value, (v) => _then(v as PageStateDone));

  @override
  PageStateDone get _value => super._value as PageStateDone;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(PageStateDone(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$PageStateDone implements PageStateDone {
  const _$PageStateDone(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'PageState.done(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageStateDone &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $PageStateDoneCopyWith<PageStateDone> get copyWith =>
      _$PageStateDoneCopyWithImpl<PageStateDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result offline(),
    @required Result error(dynamic error, StackTrace stack),
    @required Result done(String name),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(error != null);
    assert(done != null);
    return done(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result offline(),
    Result error(dynamic error, StackTrace stack),
    Result done(String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PageStateInitial value),
    @required Result loading(PageStateLoading value),
    @required Result offline(PageStateOffline value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
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
    Result initial(PageStateInitial value),
    Result loading(PageStateLoading value),
    Result offline(PageStateOffline value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class PageStateDone implements PageState {
  const factory PageStateDone(String name) = _$PageStateDone;

  String get name;
  $PageStateDoneCopyWith<PageStateDone> get copyWith;
}
