// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'foo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FooStateTearOff {
  const _$FooStateTearOff();

// ignore: unused_element
  FooStateLoading loading() {
    return const FooStateLoading();
  }

// ignore: unused_element
  FooStateForm form(
      {FormzStatus status = FormzStatus.pure, Name name = const Name.pure()}) {
    return FooStateForm(
      status: status,
      name: name,
    );
  }

// ignore: unused_element
  FooStateDone done() {
    return const FooStateDone();
  }
}

// ignore: unused_element
const $FooState = _$FooStateTearOff();

mixin _$FooState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(FormzStatus status, Name name),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result form(FormzStatus status, Name name),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(FooStateLoading value),
    @required Result form(FooStateForm value),
    @required Result done(FooStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(FooStateLoading value),
    Result form(FooStateForm value),
    Result done(FooStateDone value),
    @required Result orElse(),
  });
}

abstract class $FooStateCopyWith<$Res> {
  factory $FooStateCopyWith(FooState value, $Res Function(FooState) then) =
      _$FooStateCopyWithImpl<$Res>;
}

class _$FooStateCopyWithImpl<$Res> implements $FooStateCopyWith<$Res> {
  _$FooStateCopyWithImpl(this._value, this._then);

  final FooState _value;
  // ignore: unused_field
  final $Res Function(FooState) _then;
}

abstract class $FooStateLoadingCopyWith<$Res> {
  factory $FooStateLoadingCopyWith(
          FooStateLoading value, $Res Function(FooStateLoading) then) =
      _$FooStateLoadingCopyWithImpl<$Res>;
}

class _$FooStateLoadingCopyWithImpl<$Res> extends _$FooStateCopyWithImpl<$Res>
    implements $FooStateLoadingCopyWith<$Res> {
  _$FooStateLoadingCopyWithImpl(
      FooStateLoading _value, $Res Function(FooStateLoading) _then)
      : super(_value, (v) => _then(v as FooStateLoading));

  @override
  FooStateLoading get _value => super._value as FooStateLoading;
}

@Implements(Incomplete)
class _$FooStateLoading implements FooStateLoading {
  const _$FooStateLoading();

  @override
  String toString() {
    return 'FooState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FooStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(FormzStatus status, Name name),
    @required Result done(),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result form(FormzStatus status, Name name),
    Result done(),
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
    @required Result loading(FooStateLoading value),
    @required Result form(FooStateForm value),
    @required Result done(FooStateDone value),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(FooStateLoading value),
    Result form(FooStateForm value),
    Result done(FooStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FooStateLoading implements FooState, Incomplete {
  const factory FooStateLoading() = _$FooStateLoading;
}

abstract class $FooStateFormCopyWith<$Res> {
  factory $FooStateFormCopyWith(
          FooStateForm value, $Res Function(FooStateForm) then) =
      _$FooStateFormCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Name name});
}

class _$FooStateFormCopyWithImpl<$Res> extends _$FooStateCopyWithImpl<$Res>
    implements $FooStateFormCopyWith<$Res> {
  _$FooStateFormCopyWithImpl(
      FooStateForm _value, $Res Function(FooStateForm) _then)
      : super(_value, (v) => _then(v as FooStateForm));

  @override
  FooStateForm get _value => super._value as FooStateForm;

  @override
  $Res call({
    Object status = freezed,
    Object name = freezed,
  }) {
    return _then(FooStateForm(
      status: status == freezed ? _value.status : status as FormzStatus,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

@Implements(Complete)
class _$FooStateForm implements FooStateForm {
  const _$FooStateForm(
      {this.status = FormzStatus.pure, this.name = const Name.pure()})
      : assert(status != null),
        assert(name != null);

  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;
  @JsonKey(defaultValue: const Name.pure())
  @override
  final Name name;

  @override
  String toString() {
    return 'FooState.form(status: $status, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FooStateForm &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(name);

  @override
  $FooStateFormCopyWith<FooStateForm> get copyWith =>
      _$FooStateFormCopyWithImpl<FooStateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(FormzStatus status, Name name),
    @required Result done(),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return form(status, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result form(FormzStatus status, Name name),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(status, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(FooStateLoading value),
    @required Result form(FooStateForm value),
    @required Result done(FooStateDone value),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(FooStateLoading value),
    Result form(FooStateForm value),
    Result done(FooStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class FooStateForm implements FooState, Complete {
  const factory FooStateForm({FormzStatus status, Name name}) = _$FooStateForm;

  FormzStatus get status;
  Name get name;
  $FooStateFormCopyWith<FooStateForm> get copyWith;
}

abstract class $FooStateDoneCopyWith<$Res> {
  factory $FooStateDoneCopyWith(
          FooStateDone value, $Res Function(FooStateDone) then) =
      _$FooStateDoneCopyWithImpl<$Res>;
}

class _$FooStateDoneCopyWithImpl<$Res> extends _$FooStateCopyWithImpl<$Res>
    implements $FooStateDoneCopyWith<$Res> {
  _$FooStateDoneCopyWithImpl(
      FooStateDone _value, $Res Function(FooStateDone) _then)
      : super(_value, (v) => _then(v as FooStateDone));

  @override
  FooStateDone get _value => super._value as FooStateDone;
}

class _$FooStateDone implements FooStateDone {
  const _$FooStateDone();

  @override
  String toString() {
    return 'FooState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FooStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(FormzStatus status, Name name),
    @required Result done(),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result form(FormzStatus status, Name name),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(FooStateLoading value),
    @required Result form(FooStateForm value),
    @required Result done(FooStateDone value),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(FooStateLoading value),
    Result form(FooStateForm value),
    Result done(FooStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class FooStateDone implements FooState {
  const factory FooStateDone() = _$FooStateDone;
}
