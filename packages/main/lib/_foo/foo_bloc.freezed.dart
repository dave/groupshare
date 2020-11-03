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
    @required Result form(FooStateForm value),
    @required Result done(FooStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
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
    @required Result form(FooStateForm value),
    @required Result done(FooStateDone value),
  }) {
    assert(form != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
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
    @required Result form(FooStateForm value),
    @required Result done(FooStateDone value),
  }) {
    assert(form != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
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

class _$FooEventTearOff {
  const _$FooEventTearOff();

// ignore: unused_element
  FooEventSetup setup() {
    return const FooEventSetup();
  }

// ignore: unused_element
  FooEventChange change(String value) {
    return FooEventChange(
      value,
    );
  }

// ignore: unused_element
  FooEventSubmit submit() {
    return const FooEventSubmit();
  }
}

// ignore: unused_element
const $FooEvent = _$FooEventTearOff();

mixin _$FooEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result change(String value),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result change(String value),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setup(FooEventSetup value),
    @required Result change(FooEventChange value),
    @required Result submit(FooEventSubmit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(FooEventSetup value),
    Result change(FooEventChange value),
    Result submit(FooEventSubmit value),
    @required Result orElse(),
  });
}

abstract class $FooEventCopyWith<$Res> {
  factory $FooEventCopyWith(FooEvent value, $Res Function(FooEvent) then) =
      _$FooEventCopyWithImpl<$Res>;
}

class _$FooEventCopyWithImpl<$Res> implements $FooEventCopyWith<$Res> {
  _$FooEventCopyWithImpl(this._value, this._then);

  final FooEvent _value;
  // ignore: unused_field
  final $Res Function(FooEvent) _then;
}

abstract class $FooEventSetupCopyWith<$Res> {
  factory $FooEventSetupCopyWith(
          FooEventSetup value, $Res Function(FooEventSetup) then) =
      _$FooEventSetupCopyWithImpl<$Res>;
}

class _$FooEventSetupCopyWithImpl<$Res> extends _$FooEventCopyWithImpl<$Res>
    implements $FooEventSetupCopyWith<$Res> {
  _$FooEventSetupCopyWithImpl(
      FooEventSetup _value, $Res Function(FooEventSetup) _then)
      : super(_value, (v) => _then(v as FooEventSetup));

  @override
  FooEventSetup get _value => super._value as FooEventSetup;
}

class _$FooEventSetup implements FooEventSetup {
  const _$FooEventSetup();

  @override
  String toString() {
    return 'FooEvent.setup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FooEventSetup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result change(String value),
    @required Result submit(),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(submit != null);
    return setup();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result change(String value),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setup != null) {
      return setup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setup(FooEventSetup value),
    @required Result change(FooEventChange value),
    @required Result submit(FooEventSubmit value),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(submit != null);
    return setup(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(FooEventSetup value),
    Result change(FooEventChange value),
    Result submit(FooEventSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class FooEventSetup implements FooEvent {
  const factory FooEventSetup() = _$FooEventSetup;
}

abstract class $FooEventChangeCopyWith<$Res> {
  factory $FooEventChangeCopyWith(
          FooEventChange value, $Res Function(FooEventChange) then) =
      _$FooEventChangeCopyWithImpl<$Res>;
  $Res call({String value});
}

class _$FooEventChangeCopyWithImpl<$Res> extends _$FooEventCopyWithImpl<$Res>
    implements $FooEventChangeCopyWith<$Res> {
  _$FooEventChangeCopyWithImpl(
      FooEventChange _value, $Res Function(FooEventChange) _then)
      : super(_value, (v) => _then(v as FooEventChange));

  @override
  FooEventChange get _value => super._value as FooEventChange;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(FooEventChange(
      value == freezed ? _value.value : value as String,
    ));
  }
}

class _$FooEventChange implements FooEventChange {
  const _$FooEventChange(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'FooEvent.change(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FooEventChange &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $FooEventChangeCopyWith<FooEventChange> get copyWith =>
      _$FooEventChangeCopyWithImpl<FooEventChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result change(String value),
    @required Result submit(),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(submit != null);
    return change(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result change(String value),
    Result submit(),
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
    @required Result setup(FooEventSetup value),
    @required Result change(FooEventChange value),
    @required Result submit(FooEventSubmit value),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(submit != null);
    return change(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(FooEventSetup value),
    Result change(FooEventChange value),
    Result submit(FooEventSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class FooEventChange implements FooEvent {
  const factory FooEventChange(String value) = _$FooEventChange;

  String get value;
  $FooEventChangeCopyWith<FooEventChange> get copyWith;
}

abstract class $FooEventSubmitCopyWith<$Res> {
  factory $FooEventSubmitCopyWith(
          FooEventSubmit value, $Res Function(FooEventSubmit) then) =
      _$FooEventSubmitCopyWithImpl<$Res>;
}

class _$FooEventSubmitCopyWithImpl<$Res> extends _$FooEventCopyWithImpl<$Res>
    implements $FooEventSubmitCopyWith<$Res> {
  _$FooEventSubmitCopyWithImpl(
      FooEventSubmit _value, $Res Function(FooEventSubmit) _then)
      : super(_value, (v) => _then(v as FooEventSubmit));

  @override
  FooEventSubmit get _value => super._value as FooEventSubmit;
}

class _$FooEventSubmit implements FooEventSubmit {
  const _$FooEventSubmit();

  @override
  String toString() {
    return 'FooEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FooEventSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result change(String value),
    @required Result submit(),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result change(String value),
    Result submit(),
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
    @required Result setup(FooEventSetup value),
    @required Result change(FooEventChange value),
    @required Result submit(FooEventSubmit value),
  }) {
    assert(setup != null);
    assert(change != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(FooEventSetup value),
    Result change(FooEventChange value),
    Result submit(FooEventSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class FooEventSubmit implements FooEvent {
  const factory FooEventSubmit() = _$FooEventSubmit;
}
