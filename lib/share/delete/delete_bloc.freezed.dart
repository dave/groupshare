// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'delete_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DeleteStateTearOff {
  const _$DeleteStateTearOff();

// ignore: unused_element
  DeleteStateInitial initial() {
    return const DeleteStateInitial();
  }

// ignore: unused_element
  DeleteStateForm form(
      {FormzStatus status = FormzStatus.pure, Name name = const Name.pure()}) {
    return DeleteStateForm(
      status: status,
      name: name,
    );
  }

// ignore: unused_element
  DeleteStateError error(
      dynamic error, StackTrace stack, DeleteState retryState) {
    return DeleteStateError(
      error,
      stack,
      retryState,
    );
  }

// ignore: unused_element
  DeleteStateDone done() {
    return const DeleteStateDone();
  }
}

// ignore: unused_element
const $DeleteState = _$DeleteStateTearOff();

mixin _$DeleteState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, DeleteState retryState),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, StackTrace stack, DeleteState retryState),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(DeleteStateInitial value),
    @required Result form(DeleteStateForm value),
    @required Result error(DeleteStateError value),
    @required Result done(DeleteStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(DeleteStateInitial value),
    Result form(DeleteStateForm value),
    Result error(DeleteStateError value),
    Result done(DeleteStateDone value),
    @required Result orElse(),
  });
}

abstract class $DeleteStateCopyWith<$Res> {
  factory $DeleteStateCopyWith(
          DeleteState value, $Res Function(DeleteState) then) =
      _$DeleteStateCopyWithImpl<$Res>;
}

class _$DeleteStateCopyWithImpl<$Res> implements $DeleteStateCopyWith<$Res> {
  _$DeleteStateCopyWithImpl(this._value, this._then);

  final DeleteState _value;
  // ignore: unused_field
  final $Res Function(DeleteState) _then;
}

abstract class $DeleteStateInitialCopyWith<$Res> {
  factory $DeleteStateInitialCopyWith(
          DeleteStateInitial value, $Res Function(DeleteStateInitial) then) =
      _$DeleteStateInitialCopyWithImpl<$Res>;
}

class _$DeleteStateInitialCopyWithImpl<$Res>
    extends _$DeleteStateCopyWithImpl<$Res>
    implements $DeleteStateInitialCopyWith<$Res> {
  _$DeleteStateInitialCopyWithImpl(
      DeleteStateInitial _value, $Res Function(DeleteStateInitial) _then)
      : super(_value, (v) => _then(v as DeleteStateInitial));

  @override
  DeleteStateInitial get _value => super._value as DeleteStateInitial;
}

class _$DeleteStateInitial implements DeleteStateInitial {
  const _$DeleteStateInitial();

  @override
  String toString() {
    return 'DeleteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, DeleteState retryState),
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
    Result error(dynamic error, StackTrace stack, DeleteState retryState),
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
    @required Result initial(DeleteStateInitial value),
    @required Result form(DeleteStateForm value),
    @required Result error(DeleteStateError value),
    @required Result done(DeleteStateDone value),
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
    Result initial(DeleteStateInitial value),
    Result form(DeleteStateForm value),
    Result error(DeleteStateError value),
    Result done(DeleteStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeleteStateInitial implements DeleteState {
  const factory DeleteStateInitial() = _$DeleteStateInitial;
}

abstract class $DeleteStateFormCopyWith<$Res> {
  factory $DeleteStateFormCopyWith(
          DeleteStateForm value, $Res Function(DeleteStateForm) then) =
      _$DeleteStateFormCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Name name});
}

class _$DeleteStateFormCopyWithImpl<$Res>
    extends _$DeleteStateCopyWithImpl<$Res>
    implements $DeleteStateFormCopyWith<$Res> {
  _$DeleteStateFormCopyWithImpl(
      DeleteStateForm _value, $Res Function(DeleteStateForm) _then)
      : super(_value, (v) => _then(v as DeleteStateForm));

  @override
  DeleteStateForm get _value => super._value as DeleteStateForm;

  @override
  $Res call({
    Object status = freezed,
    Object name = freezed,
  }) {
    return _then(DeleteStateForm(
      status: status == freezed ? _value.status : status as FormzStatus,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

class _$DeleteStateForm implements DeleteStateForm {
  const _$DeleteStateForm(
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
    return 'DeleteState.form(status: $status, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteStateForm &&
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
  $DeleteStateFormCopyWith<DeleteStateForm> get copyWith =>
      _$DeleteStateFormCopyWithImpl<DeleteStateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, DeleteState retryState),
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
    Result error(dynamic error, StackTrace stack, DeleteState retryState),
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
    @required Result initial(DeleteStateInitial value),
    @required Result form(DeleteStateForm value),
    @required Result error(DeleteStateError value),
    @required Result done(DeleteStateDone value),
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
    Result initial(DeleteStateInitial value),
    Result form(DeleteStateForm value),
    Result error(DeleteStateError value),
    Result done(DeleteStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class DeleteStateForm implements DeleteState {
  const factory DeleteStateForm({FormzStatus status, Name name}) =
      _$DeleteStateForm;

  FormzStatus get status;
  Name get name;
  $DeleteStateFormCopyWith<DeleteStateForm> get copyWith;
}

abstract class $DeleteStateErrorCopyWith<$Res> {
  factory $DeleteStateErrorCopyWith(
          DeleteStateError value, $Res Function(DeleteStateError) then) =
      _$DeleteStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, StackTrace stack, DeleteState retryState});

  $DeleteStateCopyWith<$Res> get retryState;
}

class _$DeleteStateErrorCopyWithImpl<$Res>
    extends _$DeleteStateCopyWithImpl<$Res>
    implements $DeleteStateErrorCopyWith<$Res> {
  _$DeleteStateErrorCopyWithImpl(
      DeleteStateError _value, $Res Function(DeleteStateError) _then)
      : super(_value, (v) => _then(v as DeleteStateError));

  @override
  DeleteStateError get _value => super._value as DeleteStateError;

  @override
  $Res call({
    Object error = freezed,
    Object stack = freezed,
    Object retryState = freezed,
  }) {
    return _then(DeleteStateError(
      error == freezed ? _value.error : error as dynamic,
      stack == freezed ? _value.stack : stack as StackTrace,
      retryState == freezed ? _value.retryState : retryState as DeleteState,
    ));
  }

  @override
  $DeleteStateCopyWith<$Res> get retryState {
    if (_value.retryState == null) {
      return null;
    }
    return $DeleteStateCopyWith<$Res>(_value.retryState, (value) {
      return _then(_value.copyWith(retryState: value));
    });
  }
}

class _$DeleteStateError implements DeleteStateError {
  const _$DeleteStateError(this.error, this.stack, this.retryState)
      : assert(error != null),
        assert(stack != null),
        assert(retryState != null);

  @override
  final dynamic error;
  @override
  final StackTrace stack;
  @override
  final DeleteState retryState;

  @override
  String toString() {
    return 'DeleteState.error(error: $error, stack: $stack, retryState: $retryState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteStateError &&
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
  $DeleteStateErrorCopyWith<DeleteStateError> get copyWith =>
      _$DeleteStateErrorCopyWithImpl<DeleteStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, DeleteState retryState),
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
    Result error(dynamic error, StackTrace stack, DeleteState retryState),
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
    @required Result initial(DeleteStateInitial value),
    @required Result form(DeleteStateForm value),
    @required Result error(DeleteStateError value),
    @required Result done(DeleteStateDone value),
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
    Result initial(DeleteStateInitial value),
    Result form(DeleteStateForm value),
    Result error(DeleteStateError value),
    Result done(DeleteStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeleteStateError implements DeleteState {
  const factory DeleteStateError(
          dynamic error, StackTrace stack, DeleteState retryState) =
      _$DeleteStateError;

  dynamic get error;
  StackTrace get stack;
  DeleteState get retryState;
  $DeleteStateErrorCopyWith<DeleteStateError> get copyWith;
}

abstract class $DeleteStateDoneCopyWith<$Res> {
  factory $DeleteStateDoneCopyWith(
          DeleteStateDone value, $Res Function(DeleteStateDone) then) =
      _$DeleteStateDoneCopyWithImpl<$Res>;
}

class _$DeleteStateDoneCopyWithImpl<$Res>
    extends _$DeleteStateCopyWithImpl<$Res>
    implements $DeleteStateDoneCopyWith<$Res> {
  _$DeleteStateDoneCopyWithImpl(
      DeleteStateDone _value, $Res Function(DeleteStateDone) _then)
      : super(_value, (v) => _then(v as DeleteStateDone));

  @override
  DeleteStateDone get _value => super._value as DeleteStateDone;
}

class _$DeleteStateDone implements DeleteStateDone {
  const _$DeleteStateDone();

  @override
  String toString() {
    return 'DeleteState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(FormzStatus status, Name name),
    @required
        Result error(dynamic error, StackTrace stack, DeleteState retryState),
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
    Result error(dynamic error, StackTrace stack, DeleteState retryState),
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
    @required Result initial(DeleteStateInitial value),
    @required Result form(DeleteStateForm value),
    @required Result error(DeleteStateError value),
    @required Result done(DeleteStateDone value),
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
    Result initial(DeleteStateInitial value),
    Result form(DeleteStateForm value),
    Result error(DeleteStateError value),
    Result done(DeleteStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class DeleteStateDone implements DeleteState {
  const factory DeleteStateDone() = _$DeleteStateDone;
}
