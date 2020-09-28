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
  ViewStateLoading loading() {
    return const ViewStateLoading();
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
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result done(String id, String name),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(ViewStateLoading value),
    @required Result done(ViewStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ViewStateLoading value),
    Result done(ViewStateDone value),
    @required Result orElse(),
  });
}

abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res>;
}

class _$ViewStateCopyWithImpl<$Res> implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState _value;
  // ignore: unused_field
  final $Res Function(ViewState) _then;
}

abstract class $ViewStateLoadingCopyWith<$Res> {
  factory $ViewStateLoadingCopyWith(
          ViewStateLoading value, $Res Function(ViewStateLoading) then) =
      _$ViewStateLoadingCopyWithImpl<$Res>;
}

class _$ViewStateLoadingCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements $ViewStateLoadingCopyWith<$Res> {
  _$ViewStateLoadingCopyWithImpl(
      ViewStateLoading _value, $Res Function(ViewStateLoading) _then)
      : super(_value, (v) => _then(v as ViewStateLoading));

  @override
  ViewStateLoading get _value => super._value as ViewStateLoading;
}

class _$ViewStateLoading implements ViewStateLoading {
  const _$ViewStateLoading();

  @override
  String toString() {
    return 'ViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ViewStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result done(String id, String name),
  }) {
    assert(loading != null);
    assert(done != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
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
    @required Result loading(ViewStateLoading value),
    @required Result done(ViewStateDone value),
  }) {
    assert(loading != null);
    assert(done != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ViewStateLoading value),
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
  const factory ViewStateLoading() = _$ViewStateLoading;
}

abstract class $ViewStateDoneCopyWith<$Res> {
  factory $ViewStateDoneCopyWith(
          ViewStateDone value, $Res Function(ViewStateDone) then) =
      _$ViewStateDoneCopyWithImpl<$Res>;
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
    @required Result loading(),
    @required Result done(String id, String name),
  }) {
    assert(loading != null);
    assert(done != null);
    return done(id, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
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
    @required Result loading(ViewStateLoading value),
    @required Result done(ViewStateDone value),
  }) {
    assert(loading != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(ViewStateLoading value),
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

  String get id;
  String get name;
  $ViewStateDoneCopyWith<ViewStateDone> get copyWith;
}
