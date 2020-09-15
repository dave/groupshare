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
  FooStateInitial initial() {
    return const FooStateInitial();
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
  FooStateError error(dynamic error, StackTrace stack, FooState retryState) {
    return FooStateError(
      error,
      stack,
      retryState,
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
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, FooState retryState),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, StackTrace stack, FooState retryState),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FooStateInitial value),
    @required Result form(FooStateForm value),
    @required Result error(FooStateError value),
    @required Result done(FooStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FooStateInitial value),
    Result form(FooStateForm value),
    Result error(FooStateError value),
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

abstract class $FooStateInitialCopyWith<$Res> {
  factory $FooStateInitialCopyWith(
          FooStateInitial value, $Res Function(FooStateInitial) then) =
      _$FooStateInitialCopyWithImpl<$Res>;
}

class _$FooStateInitialCopyWithImpl<$Res> extends _$FooStateCopyWithImpl<$Res>
    implements $FooStateInitialCopyWith<$Res> {
  _$FooStateInitialCopyWithImpl(
      FooStateInitial _value, $Res Function(FooStateInitial) _then)
      : super(_value, (v) => _then(v as FooStateInitial));

  @override
  FooStateInitial get _value => super._value as FooStateInitial;
}

class _$FooStateInitial implements FooStateInitial {
  const _$FooStateInitial();

  @override
  String toString() {
    return 'FooState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FooStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, FooState retryState),
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
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, StackTrace stack, FooState retryState),
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
    @required Result initial(FooStateInitial value),
    @required Result form(FooStateForm value),
    @required Result error(FooStateError value),
    @required Result done(FooStateDone value),
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
    Result initial(FooStateInitial value),
    Result form(FooStateForm value),
    Result error(FooStateError value),
    Result done(FooStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FooStateInitial implements FooState {
  const factory FooStateInitial() = _$FooStateInitial;
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
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, FooState retryState),
    @required Result done(),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return form(status, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, StackTrace stack, FooState retryState),
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
    @required Result initial(FooStateInitial value),
    @required Result form(FooStateForm value),
    @required Result error(FooStateError value),
    @required Result done(FooStateDone value),
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
    Result initial(FooStateInitial value),
    Result form(FooStateForm value),
    Result error(FooStateError value),
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

abstract class FooStateForm implements FooState {
  const factory FooStateForm({FormzStatus status, Name name}) = _$FooStateForm;

  FormzStatus get status;
  Name get name;
  $FooStateFormCopyWith<FooStateForm> get copyWith;
}

abstract class $FooStateErrorCopyWith<$Res> {
  factory $FooStateErrorCopyWith(
          FooStateError value, $Res Function(FooStateError) then) =
      _$FooStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, StackTrace stack, FooState retryState});
}

class _$FooStateErrorCopyWithImpl<$Res> extends _$FooStateCopyWithImpl<$Res>
    implements $FooStateErrorCopyWith<$Res> {
  _$FooStateErrorCopyWithImpl(
      FooStateError _value, $Res Function(FooStateError) _then)
      : super(_value, (v) => _then(v as FooStateError));

  @override
  FooStateError get _value => super._value as FooStateError;

  @override
  $Res call({
    Object error = freezed,
    Object stack = freezed,
    Object retryState = freezed,
  }) {
    return _then(FooStateError(
      error == freezed ? _value.error : error as dynamic,
      stack == freezed ? _value.stack : stack as StackTrace,
      retryState == freezed ? _value.retryState : retryState as FooState,
    ));
  }
}

class _$FooStateError implements FooStateError {
  const _$FooStateError(this.error, this.stack, this.retryState)
      : assert(error != null),
        assert(stack != null),
        assert(retryState != null);

  @override
  final dynamic error;
  @override
  final StackTrace stack;
  @override
  final FooState retryState;

  @override
  String toString() {
    return 'FooState.error(error: $error, stack: $stack, retryState: $retryState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FooStateError &&
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
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stack) ^
      const DeepCollectionEquality().hash(retryState);

  @override
  $FooStateErrorCopyWith<FooStateError> get copyWith =>
      _$FooStateErrorCopyWithImpl<FooStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, FooState retryState),
    @required Result done(),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return error(this.error, stack, retryState);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, StackTrace stack, FooState retryState),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, stack, retryState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FooStateInitial value),
    @required Result form(FooStateForm value),
    @required Result error(FooStateError value),
    @required Result done(FooStateDone value),
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
    Result initial(FooStateInitial value),
    Result form(FooStateForm value),
    Result error(FooStateError value),
    Result done(FooStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FooStateError implements FooState {
  const factory FooStateError(
      dynamic error, StackTrace stack, FooState retryState) = _$FooStateError;

  dynamic get error;
  StackTrace get stack;
  FooState get retryState;
  $FooStateErrorCopyWith<FooStateError> get copyWith;
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
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, FooState retryState),
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
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, StackTrace stack, FooState retryState),
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
    @required Result initial(FooStateInitial value),
    @required Result form(FooStateForm value),
    @required Result error(FooStateError value),
    @required Result done(FooStateDone value),
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
    Result initial(FooStateInitial value),
    Result form(FooStateForm value),
    Result error(FooStateError value),
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
