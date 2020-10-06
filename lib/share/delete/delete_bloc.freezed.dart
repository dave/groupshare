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
  DeleteStateForm form(
      {FormzStatus status = FormzStatus.pure, Type type = const Type.pure()}) {
    return DeleteStateForm(
      status: status,
      type: type,
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
    @required Result form(FormzStatus status, Type type),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(FormzStatus status, Type type),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result form(DeleteStateForm value),
    @required Result done(DeleteStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(DeleteStateForm value),
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

abstract class $DeleteStateFormCopyWith<$Res> {
  factory $DeleteStateFormCopyWith(
          DeleteStateForm value, $Res Function(DeleteStateForm) then) =
      _$DeleteStateFormCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Type type});
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
    Object type = freezed,
  }) {
    return _then(DeleteStateForm(
      status: status == freezed ? _value.status : status as FormzStatus,
      type: type == freezed ? _value.type : type as Type,
    ));
  }
}

class _$DeleteStateForm implements DeleteStateForm {
  const _$DeleteStateForm(
      {this.status = FormzStatus.pure, this.type = const Type.pure()})
      : assert(status != null),
        assert(type != null);

  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;
  @JsonKey(defaultValue: const Type.pure())
  @override
  final Type type;

  @override
  String toString() {
    return 'DeleteState.form(status: $status, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteStateForm &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(type);

  @override
  $DeleteStateFormCopyWith<DeleteStateForm> get copyWith =>
      _$DeleteStateFormCopyWithImpl<DeleteStateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result form(FormzStatus status, Type type),
    @required Result done(),
  }) {
    assert(form != null);
    assert(done != null);
    return form(status, type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(FormzStatus status, Type type),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(status, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result form(DeleteStateForm value),
    @required Result done(DeleteStateDone value),
  }) {
    assert(form != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(DeleteStateForm value),
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
  const factory DeleteStateForm({FormzStatus status, Type type}) =
      _$DeleteStateForm;

  FormzStatus get status;
  Type get type;
  $DeleteStateFormCopyWith<DeleteStateForm> get copyWith;
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
    @required Result form(FormzStatus status, Type type),
    @required Result done(),
  }) {
    assert(form != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(FormzStatus status, Type type),
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
    @required Result form(DeleteStateForm value),
    @required Result done(DeleteStateDone value),
  }) {
    assert(form != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(DeleteStateForm value),
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

class _$DeleteEventTearOff {
  const _$DeleteEventTearOff();

// ignore: unused_element
  DeleteEventChange change(DeleteType type) {
    return DeleteEventChange(
      type,
    );
  }

// ignore: unused_element
  DeleteEventSubmit submit() {
    return const DeleteEventSubmit();
  }
}

// ignore: unused_element
const $DeleteEvent = _$DeleteEventTearOff();

mixin _$DeleteEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result change(DeleteType type),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result change(DeleteType type),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result change(DeleteEventChange value),
    @required Result submit(DeleteEventSubmit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result change(DeleteEventChange value),
    Result submit(DeleteEventSubmit value),
    @required Result orElse(),
  });
}

abstract class $DeleteEventCopyWith<$Res> {
  factory $DeleteEventCopyWith(
          DeleteEvent value, $Res Function(DeleteEvent) then) =
      _$DeleteEventCopyWithImpl<$Res>;
}

class _$DeleteEventCopyWithImpl<$Res> implements $DeleteEventCopyWith<$Res> {
  _$DeleteEventCopyWithImpl(this._value, this._then);

  final DeleteEvent _value;
  // ignore: unused_field
  final $Res Function(DeleteEvent) _then;
}

abstract class $DeleteEventChangeCopyWith<$Res> {
  factory $DeleteEventChangeCopyWith(
          DeleteEventChange value, $Res Function(DeleteEventChange) then) =
      _$DeleteEventChangeCopyWithImpl<$Res>;
  $Res call({DeleteType type});
}

class _$DeleteEventChangeCopyWithImpl<$Res>
    extends _$DeleteEventCopyWithImpl<$Res>
    implements $DeleteEventChangeCopyWith<$Res> {
  _$DeleteEventChangeCopyWithImpl(
      DeleteEventChange _value, $Res Function(DeleteEventChange) _then)
      : super(_value, (v) => _then(v as DeleteEventChange));

  @override
  DeleteEventChange get _value => super._value as DeleteEventChange;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(DeleteEventChange(
      type == freezed ? _value.type : type as DeleteType,
    ));
  }
}

class _$DeleteEventChange implements DeleteEventChange {
  const _$DeleteEventChange(this.type) : assert(type != null);

  @override
  final DeleteType type;

  @override
  String toString() {
    return 'DeleteEvent.change(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteEventChange &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @override
  $DeleteEventChangeCopyWith<DeleteEventChange> get copyWith =>
      _$DeleteEventChangeCopyWithImpl<DeleteEventChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result change(DeleteType type),
    @required Result submit(),
  }) {
    assert(change != null);
    assert(submit != null);
    return change(type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result change(DeleteType type),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result change(DeleteEventChange value),
    @required Result submit(DeleteEventSubmit value),
  }) {
    assert(change != null);
    assert(submit != null);
    return change(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result change(DeleteEventChange value),
    Result submit(DeleteEventSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class DeleteEventChange implements DeleteEvent {
  const factory DeleteEventChange(DeleteType type) = _$DeleteEventChange;

  DeleteType get type;
  $DeleteEventChangeCopyWith<DeleteEventChange> get copyWith;
}

abstract class $DeleteEventSubmitCopyWith<$Res> {
  factory $DeleteEventSubmitCopyWith(
          DeleteEventSubmit value, $Res Function(DeleteEventSubmit) then) =
      _$DeleteEventSubmitCopyWithImpl<$Res>;
}

class _$DeleteEventSubmitCopyWithImpl<$Res>
    extends _$DeleteEventCopyWithImpl<$Res>
    implements $DeleteEventSubmitCopyWith<$Res> {
  _$DeleteEventSubmitCopyWithImpl(
      DeleteEventSubmit _value, $Res Function(DeleteEventSubmit) _then)
      : super(_value, (v) => _then(v as DeleteEventSubmit));

  @override
  DeleteEventSubmit get _value => super._value as DeleteEventSubmit;
}

class _$DeleteEventSubmit implements DeleteEventSubmit {
  const _$DeleteEventSubmit();

  @override
  String toString() {
    return 'DeleteEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteEventSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result change(DeleteType type),
    @required Result submit(),
  }) {
    assert(change != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result change(DeleteType type),
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
    @required Result change(DeleteEventChange value),
    @required Result submit(DeleteEventSubmit value),
  }) {
    assert(change != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result change(DeleteEventChange value),
    Result submit(DeleteEventSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class DeleteEventSubmit implements DeleteEvent {
  const factory DeleteEventSubmit() = _$DeleteEventSubmit;
}
