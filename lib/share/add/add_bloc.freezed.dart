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
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(FormzStatus status, Name name),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result form(AddStateForm value),
    @required Result done(AddStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(AddStateForm value),
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

@Implements(Complete)
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
    @required Result done(),
  }) {
    assert(form != null);
    assert(done != null);
    return form(status, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
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
    @required Result form(AddStateForm value),
    @required Result done(AddStateDone value),
  }) {
    assert(form != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(AddStateForm value),
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

abstract class AddStateForm implements AddState, Complete {
  const factory AddStateForm({FormzStatus status, Name name}) = _$AddStateForm;

  FormzStatus get status;
  Name get name;
  $AddStateFormCopyWith<AddStateForm> get copyWith;
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
    @required Result done(),
  }) {
    assert(form != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
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
    @required Result form(AddStateForm value),
    @required Result done(AddStateDone value),
  }) {
    assert(form != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(AddStateForm value),
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

class _$AddEventTearOff {
  const _$AddEventTearOff();

// ignore: unused_element
  AddEventChange change(String value) {
    return AddEventChange(
      value,
    );
  }

// ignore: unused_element
  AddEventSubmit submit() {
    return const AddEventSubmit();
  }

// ignore: unused_element
  AddEventError error() {
    return const AddEventError();
  }
}

// ignore: unused_element
const $AddEvent = _$AddEventTearOff();

mixin _$AddEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result change(String value),
    @required Result submit(),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result change(String value),
    Result submit(),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result change(AddEventChange value),
    @required Result submit(AddEventSubmit value),
    @required Result error(AddEventError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result change(AddEventChange value),
    Result submit(AddEventSubmit value),
    Result error(AddEventError value),
    @required Result orElse(),
  });
}

abstract class $AddEventCopyWith<$Res> {
  factory $AddEventCopyWith(AddEvent value, $Res Function(AddEvent) then) =
      _$AddEventCopyWithImpl<$Res>;
}

class _$AddEventCopyWithImpl<$Res> implements $AddEventCopyWith<$Res> {
  _$AddEventCopyWithImpl(this._value, this._then);

  final AddEvent _value;
  // ignore: unused_field
  final $Res Function(AddEvent) _then;
}

abstract class $AddEventChangeCopyWith<$Res> {
  factory $AddEventChangeCopyWith(
          AddEventChange value, $Res Function(AddEventChange) then) =
      _$AddEventChangeCopyWithImpl<$Res>;
  $Res call({String value});
}

class _$AddEventChangeCopyWithImpl<$Res> extends _$AddEventCopyWithImpl<$Res>
    implements $AddEventChangeCopyWith<$Res> {
  _$AddEventChangeCopyWithImpl(
      AddEventChange _value, $Res Function(AddEventChange) _then)
      : super(_value, (v) => _then(v as AddEventChange));

  @override
  AddEventChange get _value => super._value as AddEventChange;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(AddEventChange(
      value == freezed ? _value.value : value as String,
    ));
  }
}

class _$AddEventChange implements AddEventChange {
  const _$AddEventChange(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'AddEvent.change(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddEventChange &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $AddEventChangeCopyWith<AddEventChange> get copyWith =>
      _$AddEventChangeCopyWithImpl<AddEventChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result change(String value),
    @required Result submit(),
    @required Result error(),
  }) {
    assert(change != null);
    assert(submit != null);
    assert(error != null);
    return change(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result change(String value),
    Result submit(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result change(AddEventChange value),
    @required Result submit(AddEventSubmit value),
    @required Result error(AddEventError value),
  }) {
    assert(change != null);
    assert(submit != null);
    assert(error != null);
    return change(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result change(AddEventChange value),
    Result submit(AddEventSubmit value),
    Result error(AddEventError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class AddEventChange implements AddEvent {
  const factory AddEventChange(String value) = _$AddEventChange;

  String get value;
  $AddEventChangeCopyWith<AddEventChange> get copyWith;
}

abstract class $AddEventSubmitCopyWith<$Res> {
  factory $AddEventSubmitCopyWith(
          AddEventSubmit value, $Res Function(AddEventSubmit) then) =
      _$AddEventSubmitCopyWithImpl<$Res>;
}

class _$AddEventSubmitCopyWithImpl<$Res> extends _$AddEventCopyWithImpl<$Res>
    implements $AddEventSubmitCopyWith<$Res> {
  _$AddEventSubmitCopyWithImpl(
      AddEventSubmit _value, $Res Function(AddEventSubmit) _then)
      : super(_value, (v) => _then(v as AddEventSubmit));

  @override
  AddEventSubmit get _value => super._value as AddEventSubmit;
}

class _$AddEventSubmit implements AddEventSubmit {
  const _$AddEventSubmit();

  @override
  String toString() {
    return 'AddEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddEventSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result change(String value),
    @required Result submit(),
    @required Result error(),
  }) {
    assert(change != null);
    assert(submit != null);
    assert(error != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result change(String value),
    Result submit(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result change(AddEventChange value),
    @required Result submit(AddEventSubmit value),
    @required Result error(AddEventError value),
  }) {
    assert(change != null);
    assert(submit != null);
    assert(error != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result change(AddEventChange value),
    Result submit(AddEventSubmit value),
    Result error(AddEventError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class AddEventSubmit implements AddEvent {
  const factory AddEventSubmit() = _$AddEventSubmit;
}

abstract class $AddEventErrorCopyWith<$Res> {
  factory $AddEventErrorCopyWith(
          AddEventError value, $Res Function(AddEventError) then) =
      _$AddEventErrorCopyWithImpl<$Res>;
}

class _$AddEventErrorCopyWithImpl<$Res> extends _$AddEventCopyWithImpl<$Res>
    implements $AddEventErrorCopyWith<$Res> {
  _$AddEventErrorCopyWithImpl(
      AddEventError _value, $Res Function(AddEventError) _then)
      : super(_value, (v) => _then(v as AddEventError));

  @override
  AddEventError get _value => super._value as AddEventError;
}

class _$AddEventError implements AddEventError {
  const _$AddEventError();

  @override
  String toString() {
    return 'AddEvent.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddEventError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result change(String value),
    @required Result submit(),
    @required Result error(),
  }) {
    assert(change != null);
    assert(submit != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result change(String value),
    Result submit(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result change(AddEventChange value),
    @required Result submit(AddEventSubmit value),
    @required Result error(AddEventError value),
  }) {
    assert(change != null);
    assert(submit != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result change(AddEventChange value),
    Result submit(AddEventSubmit value),
    Result error(AddEventError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddEventError implements AddEvent {
  const factory AddEventError() = _$AddEventError;
}
