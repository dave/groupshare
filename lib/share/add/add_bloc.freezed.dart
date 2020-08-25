// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AddStateTearOff {
  const _$AddStateTearOff();

// ignore: unused_element
  AddStateForm form(
      {FormzStatus status = FormzStatus.pure, Name name = const Name.pure()}) {
    return AddStateForm(
      status: status,
      name: name,
    );
  }

// ignore: unused_element
  AddStateError error(dynamic error, AddState retryState) {
    return AddStateError(
      error,
      retryState,
    );
  }

// ignore: unused_element
  AddStateDone done() {
    return const AddStateDone();
  }
}

// ignore: unused_element
const $AddState = _$AddStateTearOff();

mixin _$AddState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result form(FormzStatus status, Name name),
    @required Result error(dynamic error, AddState retryState),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, AddState retryState),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result form(AddStateForm value),
    @required Result error(AddStateError value),
    @required Result done(AddStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(AddStateForm value),
    Result error(AddStateError value),
    Result done(AddStateDone value),
    @required Result orElse(),
  });
}

abstract class $AddStateCopyWith<$Res> {
  factory $AddStateCopyWith(AddState value, $Res Function(AddState) then) =
      _$AddStateCopyWithImpl<$Res>;
}

class _$AddStateCopyWithImpl<$Res> implements $AddStateCopyWith<$Res> {
  _$AddStateCopyWithImpl(this._value, this._then);

  final AddState _value;
  // ignore: unused_field
  final $Res Function(AddState) _then;
}

abstract class $AddStateFormCopyWith<$Res> {
  factory $AddStateFormCopyWith(
          AddStateForm value, $Res Function(AddStateForm) then) =
      _$AddStateFormCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Name name});
}

class _$AddStateFormCopyWithImpl<$Res> extends _$AddStateCopyWithImpl<$Res>
    implements $AddStateFormCopyWith<$Res> {
  _$AddStateFormCopyWithImpl(
      AddStateForm _value, $Res Function(AddStateForm) _then)
      : super(_value, (v) => _then(v as AddStateForm));

  @override
  AddStateForm get _value => super._value as AddStateForm;

  @override
  $Res call({
    Object status = freezed,
    Object name = freezed,
  }) {
    return _then(AddStateForm(
      status: status == freezed ? _value.status : status as FormzStatus,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

class _$AddStateForm implements AddStateForm {
  const _$AddStateForm(
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
    return 'AddState.form(status: $status, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddStateForm &&
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
  $AddStateFormCopyWith<AddStateForm> get copyWith =>
      _$AddStateFormCopyWithImpl<AddStateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result form(FormzStatus status, Name name),
    @required Result error(dynamic error, AddState retryState),
    @required Result done(),
  }) {
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return form(status, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, AddState retryState),
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
    @required Result form(AddStateForm value),
    @required Result error(AddStateError value),
    @required Result done(AddStateDone value),
  }) {
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(AddStateForm value),
    Result error(AddStateError value),
    Result done(AddStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class AddStateForm implements AddState {
  const factory AddStateForm({FormzStatus status, Name name}) = _$AddStateForm;

  FormzStatus get status;
  Name get name;
  $AddStateFormCopyWith<AddStateForm> get copyWith;
}

abstract class $AddStateErrorCopyWith<$Res> {
  factory $AddStateErrorCopyWith(
          AddStateError value, $Res Function(AddStateError) then) =
      _$AddStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, AddState retryState});
}

class _$AddStateErrorCopyWithImpl<$Res> extends _$AddStateCopyWithImpl<$Res>
    implements $AddStateErrorCopyWith<$Res> {
  _$AddStateErrorCopyWithImpl(
      AddStateError _value, $Res Function(AddStateError) _then)
      : super(_value, (v) => _then(v as AddStateError));

  @override
  AddStateError get _value => super._value as AddStateError;

  @override
  $Res call({
    Object error = freezed,
    Object retryState = freezed,
  }) {
    return _then(AddStateError(
      error == freezed ? _value.error : error as dynamic,
      retryState == freezed ? _value.retryState : retryState as AddState,
    ));
  }
}

class _$AddStateError implements AddStateError {
  const _$AddStateError(this.error, this.retryState)
      : assert(error != null),
        assert(retryState != null);

  @override
  final dynamic error;
  @override
  final AddState retryState;

  @override
  String toString() {
    return 'AddState.error(error: $error, retryState: $retryState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.retryState, retryState) ||
                const DeepCollectionEquality()
                    .equals(other.retryState, retryState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(retryState);

  @override
  $AddStateErrorCopyWith<AddStateError> get copyWith =>
      _$AddStateErrorCopyWithImpl<AddStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result form(FormzStatus status, Name name),
    @required Result error(dynamic error, AddState retryState),
    @required Result done(),
  }) {
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return error(this.error, retryState);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, AddState retryState),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, retryState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result form(AddStateForm value),
    @required Result error(AddStateError value),
    @required Result done(AddStateDone value),
  }) {
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(AddStateForm value),
    Result error(AddStateError value),
    Result done(AddStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddStateError implements AddState {
  const factory AddStateError(dynamic error, AddState retryState) =
      _$AddStateError;

  dynamic get error;
  AddState get retryState;
  $AddStateErrorCopyWith<AddStateError> get copyWith;
}

abstract class $AddStateDoneCopyWith<$Res> {
  factory $AddStateDoneCopyWith(
          AddStateDone value, $Res Function(AddStateDone) then) =
      _$AddStateDoneCopyWithImpl<$Res>;
}

class _$AddStateDoneCopyWithImpl<$Res> extends _$AddStateCopyWithImpl<$Res>
    implements $AddStateDoneCopyWith<$Res> {
  _$AddStateDoneCopyWithImpl(
      AddStateDone _value, $Res Function(AddStateDone) _then)
      : super(_value, (v) => _then(v as AddStateDone));

  @override
  AddStateDone get _value => super._value as AddStateDone;
}

class _$AddStateDone implements AddStateDone {
  const _$AddStateDone();

  @override
  String toString() {
    return 'AddState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result form(FormzStatus status, Name name),
    @required Result error(dynamic error, AddState retryState),
    @required Result done(),
  }) {
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, AddState retryState),
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
    @required Result form(AddStateForm value),
    @required Result error(AddStateError value),
    @required Result done(AddStateDone value),
  }) {
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(AddStateForm value),
    Result error(AddStateError value),
    Result done(AddStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class AddStateDone implements AddState {
  const factory AddStateDone() = _$AddStateDone;
}
