// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'empty_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EmptyStateTearOff {
  const _$EmptyStateTearOff();

// ignore: unused_element
  EmptyStateInitial initial() {
    return const EmptyStateInitial();
  }

// ignore: unused_element
  EmptyStateForm form(
      {FormzStatus status = FormzStatus.pure, Foo foo = const Foo.pure()}) {
    return EmptyStateForm(
      status: status,
      foo: foo,
    );
  }

// ignore: unused_element
  EmptyStateError error(dynamic error) {
    return EmptyStateError(
      error,
    );
  }

// ignore: unused_element
  EmptyStateDone done() {
    return const EmptyStateDone();
  }
}

// ignore: unused_element
const $EmptyState = _$EmptyStateTearOff();

mixin _$EmptyState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Foo foo),
    @required Result error(dynamic error),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(FormzStatus status, Foo foo),
    Result error(dynamic error),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EmptyStateInitial value),
    @required Result form(EmptyStateForm value),
    @required Result error(EmptyStateError value),
    @required Result done(EmptyStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EmptyStateInitial value),
    Result form(EmptyStateForm value),
    Result error(EmptyStateError value),
    Result done(EmptyStateDone value),
    @required Result orElse(),
  });
}

abstract class $EmptyStateCopyWith<$Res> {
  factory $EmptyStateCopyWith(
          EmptyState value, $Res Function(EmptyState) then) =
      _$EmptyStateCopyWithImpl<$Res>;
}

class _$EmptyStateCopyWithImpl<$Res> implements $EmptyStateCopyWith<$Res> {
  _$EmptyStateCopyWithImpl(this._value, this._then);

  final EmptyState _value;
  // ignore: unused_field
  final $Res Function(EmptyState) _then;
}

abstract class $EmptyStateInitialCopyWith<$Res> {
  factory $EmptyStateInitialCopyWith(
          EmptyStateInitial value, $Res Function(EmptyStateInitial) then) =
      _$EmptyStateInitialCopyWithImpl<$Res>;
}

class _$EmptyStateInitialCopyWithImpl<$Res>
    extends _$EmptyStateCopyWithImpl<$Res>
    implements $EmptyStateInitialCopyWith<$Res> {
  _$EmptyStateInitialCopyWithImpl(
      EmptyStateInitial _value, $Res Function(EmptyStateInitial) _then)
      : super(_value, (v) => _then(v as EmptyStateInitial));

  @override
  EmptyStateInitial get _value => super._value as EmptyStateInitial;
}

class _$EmptyStateInitial implements EmptyStateInitial {
  const _$EmptyStateInitial();

  @override
  String toString() {
    return 'EmptyState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Foo foo),
    @required Result error(dynamic error),
    @required Result done(),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(FormzStatus status, Foo foo),
    Result error(dynamic error),
    Result done(),
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
    @required Result initial(EmptyStateInitial value),
    @required Result form(EmptyStateForm value),
    @required Result error(EmptyStateError value),
    @required Result done(EmptyStateDone value),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EmptyStateInitial value),
    Result form(EmptyStateForm value),
    Result error(EmptyStateError value),
    Result done(EmptyStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EmptyStateInitial implements EmptyState {
  const factory EmptyStateInitial() = _$EmptyStateInitial;
}

abstract class $EmptyStateFormCopyWith<$Res> {
  factory $EmptyStateFormCopyWith(
          EmptyStateForm value, $Res Function(EmptyStateForm) then) =
      _$EmptyStateFormCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Foo foo});
}

class _$EmptyStateFormCopyWithImpl<$Res> extends _$EmptyStateCopyWithImpl<$Res>
    implements $EmptyStateFormCopyWith<$Res> {
  _$EmptyStateFormCopyWithImpl(
      EmptyStateForm _value, $Res Function(EmptyStateForm) _then)
      : super(_value, (v) => _then(v as EmptyStateForm));

  @override
  EmptyStateForm get _value => super._value as EmptyStateForm;

  @override
  $Res call({
    Object status = freezed,
    Object foo = freezed,
  }) {
    return _then(EmptyStateForm(
      status: status == freezed ? _value.status : status as FormzStatus,
      foo: foo == freezed ? _value.foo : foo as Foo,
    ));
  }
}

class _$EmptyStateForm implements EmptyStateForm {
  const _$EmptyStateForm(
      {this.status = FormzStatus.pure, this.foo = const Foo.pure()})
      : assert(status != null),
        assert(foo != null);

  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;
  @JsonKey(defaultValue: const Foo.pure())
  @override
  final Foo foo;

  @override
  String toString() {
    return 'EmptyState.form(status: $status, foo: $foo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyStateForm &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.foo, foo) ||
                const DeepCollectionEquality().equals(other.foo, foo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(foo);

  @override
  $EmptyStateFormCopyWith<EmptyStateForm> get copyWith =>
      _$EmptyStateFormCopyWithImpl<EmptyStateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Foo foo),
    @required Result error(dynamic error),
    @required Result done(),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return form(status, foo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(FormzStatus status, Foo foo),
    Result error(dynamic error),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(status, foo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EmptyStateInitial value),
    @required Result form(EmptyStateForm value),
    @required Result error(EmptyStateError value),
    @required Result done(EmptyStateDone value),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EmptyStateInitial value),
    Result form(EmptyStateForm value),
    Result error(EmptyStateError value),
    Result done(EmptyStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class EmptyStateForm implements EmptyState {
  const factory EmptyStateForm({FormzStatus status, Foo foo}) =
      _$EmptyStateForm;

  FormzStatus get status;
  Foo get foo;
  $EmptyStateFormCopyWith<EmptyStateForm> get copyWith;
}

abstract class $EmptyStateErrorCopyWith<$Res> {
  factory $EmptyStateErrorCopyWith(
          EmptyStateError value, $Res Function(EmptyStateError) then) =
      _$EmptyStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

class _$EmptyStateErrorCopyWithImpl<$Res> extends _$EmptyStateCopyWithImpl<$Res>
    implements $EmptyStateErrorCopyWith<$Res> {
  _$EmptyStateErrorCopyWithImpl(
      EmptyStateError _value, $Res Function(EmptyStateError) _then)
      : super(_value, (v) => _then(v as EmptyStateError));

  @override
  EmptyStateError get _value => super._value as EmptyStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(EmptyStateError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

class _$EmptyStateError implements EmptyStateError {
  const _$EmptyStateError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'EmptyState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $EmptyStateErrorCopyWith<EmptyStateError> get copyWith =>
      _$EmptyStateErrorCopyWithImpl<EmptyStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Foo foo),
    @required Result error(dynamic error),
    @required Result done(),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(FormzStatus status, Foo foo),
    Result error(dynamic error),
    Result done(),
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
    @required Result initial(EmptyStateInitial value),
    @required Result form(EmptyStateForm value),
    @required Result error(EmptyStateError value),
    @required Result done(EmptyStateDone value),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EmptyStateInitial value),
    Result form(EmptyStateForm value),
    Result error(EmptyStateError value),
    Result done(EmptyStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EmptyStateError implements EmptyState {
  const factory EmptyStateError(dynamic error) = _$EmptyStateError;

  dynamic get error;
  $EmptyStateErrorCopyWith<EmptyStateError> get copyWith;
}

abstract class $EmptyStateDoneCopyWith<$Res> {
  factory $EmptyStateDoneCopyWith(
          EmptyStateDone value, $Res Function(EmptyStateDone) then) =
      _$EmptyStateDoneCopyWithImpl<$Res>;
}

class _$EmptyStateDoneCopyWithImpl<$Res> extends _$EmptyStateCopyWithImpl<$Res>
    implements $EmptyStateDoneCopyWith<$Res> {
  _$EmptyStateDoneCopyWithImpl(
      EmptyStateDone _value, $Res Function(EmptyStateDone) _then)
      : super(_value, (v) => _then(v as EmptyStateDone));

  @override
  EmptyStateDone get _value => super._value as EmptyStateDone;
}

class _$EmptyStateDone implements EmptyStateDone {
  const _$EmptyStateDone();

  @override
  String toString() {
    return 'EmptyState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Foo foo),
    @required Result error(dynamic error),
    @required Result done(),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(FormzStatus status, Foo foo),
    Result error(dynamic error),
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
    @required Result initial(EmptyStateInitial value),
    @required Result form(EmptyStateForm value),
    @required Result error(EmptyStateError value),
    @required Result done(EmptyStateDone value),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EmptyStateInitial value),
    Result form(EmptyStateForm value),
    Result error(EmptyStateError value),
    Result done(EmptyStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class EmptyStateDone implements EmptyState {
  const factory EmptyStateDone() = _$EmptyStateDone;
}
