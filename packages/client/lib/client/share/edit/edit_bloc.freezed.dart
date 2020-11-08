// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EditStateTearOff {
  const _$EditStateTearOff();

// ignore: unused_element
  EditStateLoading loading() {
    return const EditStateLoading();
  }

// ignore: unused_element
  EditStateForm form(
      {FormzStatus status = FormzStatus.pure,
      String initialName = '',
      Name name = const Name.pure()}) {
    return EditStateForm(
      status: status,
      initialName: initialName,
      name: name,
    );
  }

// ignore: unused_element
  EditStateDone done(String route) {
    return EditStateDone(
      route,
    );
  }
}

// ignore: unused_element
const $EditState = _$EditStateTearOff();

mixin _$EditState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(FormzStatus status, String initialName, Name name),
    @required Result done(String route),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result form(FormzStatus status, String initialName, Name name),
    Result done(String route),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result done(EditStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result done(EditStateDone value),
    @required Result orElse(),
  });
}

abstract class $EditStateCopyWith<$Res> {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) then) =
      _$EditStateCopyWithImpl<$Res>;
}

class _$EditStateCopyWithImpl<$Res> implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._value, this._then);

  final EditState _value;
  // ignore: unused_field
  final $Res Function(EditState) _then;
}

abstract class $EditStateLoadingCopyWith<$Res> {
  factory $EditStateLoadingCopyWith(
          EditStateLoading value, $Res Function(EditStateLoading) then) =
      _$EditStateLoadingCopyWithImpl<$Res>;
}

class _$EditStateLoadingCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditStateLoadingCopyWith<$Res> {
  _$EditStateLoadingCopyWithImpl(
      EditStateLoading _value, $Res Function(EditStateLoading) _then)
      : super(_value, (v) => _then(v as EditStateLoading));

  @override
  EditStateLoading get _value => super._value as EditStateLoading;
}

@Implements(Incomplete)
class _$EditStateLoading implements EditStateLoading {
  const _$EditStateLoading();

  @override
  String toString() {
    return 'EditState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(FormzStatus status, String initialName, Name name),
    @required Result done(String route),
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
    Result form(FormzStatus status, String initialName, Name name),
    Result done(String route),
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
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result done(EditStateDone value),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result done(EditStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditStateLoading implements EditState, Incomplete {
  const factory EditStateLoading() = _$EditStateLoading;
}

abstract class $EditStateFormCopyWith<$Res> {
  factory $EditStateFormCopyWith(
          EditStateForm value, $Res Function(EditStateForm) then) =
      _$EditStateFormCopyWithImpl<$Res>;
  $Res call({FormzStatus status, String initialName, Name name});
}

class _$EditStateFormCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditStateFormCopyWith<$Res> {
  _$EditStateFormCopyWithImpl(
      EditStateForm _value, $Res Function(EditStateForm) _then)
      : super(_value, (v) => _then(v as EditStateForm));

  @override
  EditStateForm get _value => super._value as EditStateForm;

  @override
  $Res call({
    Object status = freezed,
    Object initialName = freezed,
    Object name = freezed,
  }) {
    return _then(EditStateForm(
      status: status == freezed ? _value.status : status as FormzStatus,
      initialName:
          initialName == freezed ? _value.initialName : initialName as String,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

@Implements(Complete)
class _$EditStateForm implements EditStateForm {
  const _$EditStateForm(
      {this.status = FormzStatus.pure,
      this.initialName = '',
      this.name = const Name.pure()})
      : assert(status != null),
        assert(initialName != null),
        assert(name != null);

  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;
  @JsonKey(defaultValue: '')
  @override
  final String initialName;
  @JsonKey(defaultValue: const Name.pure())
  @override
  final Name name;

  @override
  String toString() {
    return 'EditState.form(status: $status, initialName: $initialName, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditStateForm &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.initialName, initialName) ||
                const DeepCollectionEquality()
                    .equals(other.initialName, initialName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(initialName) ^
      const DeepCollectionEquality().hash(name);

  @override
  $EditStateFormCopyWith<EditStateForm> get copyWith =>
      _$EditStateFormCopyWithImpl<EditStateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(FormzStatus status, String initialName, Name name),
    @required Result done(String route),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return form(status, initialName, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result form(FormzStatus status, String initialName, Name name),
    Result done(String route),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(status, initialName, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result done(EditStateDone value),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result done(EditStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class EditStateForm implements EditState, Complete {
  const factory EditStateForm(
      {FormzStatus status, String initialName, Name name}) = _$EditStateForm;

  FormzStatus get status;
  String get initialName;
  Name get name;
  $EditStateFormCopyWith<EditStateForm> get copyWith;
}

abstract class $EditStateDoneCopyWith<$Res> {
  factory $EditStateDoneCopyWith(
          EditStateDone value, $Res Function(EditStateDone) then) =
      _$EditStateDoneCopyWithImpl<$Res>;
  $Res call({String route});
}

class _$EditStateDoneCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditStateDoneCopyWith<$Res> {
  _$EditStateDoneCopyWithImpl(
      EditStateDone _value, $Res Function(EditStateDone) _then)
      : super(_value, (v) => _then(v as EditStateDone));

  @override
  EditStateDone get _value => super._value as EditStateDone;

  @override
  $Res call({
    Object route = freezed,
  }) {
    return _then(EditStateDone(
      route == freezed ? _value.route : route as String,
    ));
  }
}

class _$EditStateDone implements EditStateDone {
  const _$EditStateDone(this.route) : assert(route != null);

  @override
  final String route;

  @override
  String toString() {
    return 'EditState.done(route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditStateDone &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(route);

  @override
  $EditStateDoneCopyWith<EditStateDone> get copyWith =>
      _$EditStateDoneCopyWithImpl<EditStateDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(FormzStatus status, String initialName, Name name),
    @required Result done(String route),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return done(route);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result form(FormzStatus status, String initialName, Name name),
    Result done(String route),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result done(EditStateDone value),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result done(EditStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class EditStateDone implements EditState {
  const factory EditStateDone(String route) = _$EditStateDone;

  String get route;
  $EditStateDoneCopyWith<EditStateDone> get copyWith;
}

class _$EditEventTearOff {
  const _$EditEventTearOff();

// ignore: unused_element
  EditEventSetup setup() {
    return const EditEventSetup();
  }

// ignore: unused_element
  EditEventInit init(String value) {
    return EditEventInit(
      value,
    );
  }

// ignore: unused_element
  EditEventChange change(String value) {
    return EditEventChange(
      value,
    );
  }

// ignore: unused_element
  EditEventSubmit submit() {
    return const EditEventSubmit();
  }
}

// ignore: unused_element
const $EditEvent = _$EditEventTearOff();

mixin _$EditEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result init(String value),
    @required Result change(String value),
    @required Result submit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result init(String value),
    Result change(String value),
    Result submit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setup(EditEventSetup value),
    @required Result init(EditEventInit value),
    @required Result change(EditEventChange value),
    @required Result submit(EditEventSubmit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(EditEventSetup value),
    Result init(EditEventInit value),
    Result change(EditEventChange value),
    Result submit(EditEventSubmit value),
    @required Result orElse(),
  });
}

abstract class $EditEventCopyWith<$Res> {
  factory $EditEventCopyWith(EditEvent value, $Res Function(EditEvent) then) =
      _$EditEventCopyWithImpl<$Res>;
}

class _$EditEventCopyWithImpl<$Res> implements $EditEventCopyWith<$Res> {
  _$EditEventCopyWithImpl(this._value, this._then);

  final EditEvent _value;
  // ignore: unused_field
  final $Res Function(EditEvent) _then;
}

abstract class $EditEventSetupCopyWith<$Res> {
  factory $EditEventSetupCopyWith(
          EditEventSetup value, $Res Function(EditEventSetup) then) =
      _$EditEventSetupCopyWithImpl<$Res>;
}

class _$EditEventSetupCopyWithImpl<$Res> extends _$EditEventCopyWithImpl<$Res>
    implements $EditEventSetupCopyWith<$Res> {
  _$EditEventSetupCopyWithImpl(
      EditEventSetup _value, $Res Function(EditEventSetup) _then)
      : super(_value, (v) => _then(v as EditEventSetup));

  @override
  EditEventSetup get _value => super._value as EditEventSetup;
}

class _$EditEventSetup implements EditEventSetup {
  const _$EditEventSetup();

  @override
  String toString() {
    return 'EditEvent.setup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditEventSetup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result init(String value),
    @required Result change(String value),
    @required Result submit(),
  }) {
    assert(setup != null);
    assert(init != null);
    assert(change != null);
    assert(submit != null);
    return setup();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result init(String value),
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
    @required Result setup(EditEventSetup value),
    @required Result init(EditEventInit value),
    @required Result change(EditEventChange value),
    @required Result submit(EditEventSubmit value),
  }) {
    assert(setup != null);
    assert(init != null);
    assert(change != null);
    assert(submit != null);
    return setup(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(EditEventSetup value),
    Result init(EditEventInit value),
    Result change(EditEventChange value),
    Result submit(EditEventSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class EditEventSetup implements EditEvent {
  const factory EditEventSetup() = _$EditEventSetup;
}

abstract class $EditEventInitCopyWith<$Res> {
  factory $EditEventInitCopyWith(
          EditEventInit value, $Res Function(EditEventInit) then) =
      _$EditEventInitCopyWithImpl<$Res>;
  $Res call({String value});
}

class _$EditEventInitCopyWithImpl<$Res> extends _$EditEventCopyWithImpl<$Res>
    implements $EditEventInitCopyWith<$Res> {
  _$EditEventInitCopyWithImpl(
      EditEventInit _value, $Res Function(EditEventInit) _then)
      : super(_value, (v) => _then(v as EditEventInit));

  @override
  EditEventInit get _value => super._value as EditEventInit;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(EditEventInit(
      value == freezed ? _value.value : value as String,
    ));
  }
}

class _$EditEventInit implements EditEventInit {
  const _$EditEventInit(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'EditEvent.init(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditEventInit &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $EditEventInitCopyWith<EditEventInit> get copyWith =>
      _$EditEventInitCopyWithImpl<EditEventInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result init(String value),
    @required Result change(String value),
    @required Result submit(),
  }) {
    assert(setup != null);
    assert(init != null);
    assert(change != null);
    assert(submit != null);
    return init(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result init(String value),
    Result change(String value),
    Result submit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result setup(EditEventSetup value),
    @required Result init(EditEventInit value),
    @required Result change(EditEventChange value),
    @required Result submit(EditEventSubmit value),
  }) {
    assert(setup != null);
    assert(init != null);
    assert(change != null);
    assert(submit != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(EditEventSetup value),
    Result init(EditEventInit value),
    Result change(EditEventChange value),
    Result submit(EditEventSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class EditEventInit implements EditEvent {
  const factory EditEventInit(String value) = _$EditEventInit;

  String get value;
  $EditEventInitCopyWith<EditEventInit> get copyWith;
}

abstract class $EditEventChangeCopyWith<$Res> {
  factory $EditEventChangeCopyWith(
          EditEventChange value, $Res Function(EditEventChange) then) =
      _$EditEventChangeCopyWithImpl<$Res>;
  $Res call({String value});
}

class _$EditEventChangeCopyWithImpl<$Res> extends _$EditEventCopyWithImpl<$Res>
    implements $EditEventChangeCopyWith<$Res> {
  _$EditEventChangeCopyWithImpl(
      EditEventChange _value, $Res Function(EditEventChange) _then)
      : super(_value, (v) => _then(v as EditEventChange));

  @override
  EditEventChange get _value => super._value as EditEventChange;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(EditEventChange(
      value == freezed ? _value.value : value as String,
    ));
  }
}

class _$EditEventChange implements EditEventChange {
  const _$EditEventChange(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'EditEvent.change(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditEventChange &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  $EditEventChangeCopyWith<EditEventChange> get copyWith =>
      _$EditEventChangeCopyWithImpl<EditEventChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result init(String value),
    @required Result change(String value),
    @required Result submit(),
  }) {
    assert(setup != null);
    assert(init != null);
    assert(change != null);
    assert(submit != null);
    return change(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result init(String value),
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
    @required Result setup(EditEventSetup value),
    @required Result init(EditEventInit value),
    @required Result change(EditEventChange value),
    @required Result submit(EditEventSubmit value),
  }) {
    assert(setup != null);
    assert(init != null);
    assert(change != null);
    assert(submit != null);
    return change(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(EditEventSetup value),
    Result init(EditEventInit value),
    Result change(EditEventChange value),
    Result submit(EditEventSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class EditEventChange implements EditEvent {
  const factory EditEventChange(String value) = _$EditEventChange;

  String get value;
  $EditEventChangeCopyWith<EditEventChange> get copyWith;
}

abstract class $EditEventSubmitCopyWith<$Res> {
  factory $EditEventSubmitCopyWith(
          EditEventSubmit value, $Res Function(EditEventSubmit) then) =
      _$EditEventSubmitCopyWithImpl<$Res>;
}

class _$EditEventSubmitCopyWithImpl<$Res> extends _$EditEventCopyWithImpl<$Res>
    implements $EditEventSubmitCopyWith<$Res> {
  _$EditEventSubmitCopyWithImpl(
      EditEventSubmit _value, $Res Function(EditEventSubmit) _then)
      : super(_value, (v) => _then(v as EditEventSubmit));

  @override
  EditEventSubmit get _value => super._value as EditEventSubmit;
}

class _$EditEventSubmit implements EditEventSubmit {
  const _$EditEventSubmit();

  @override
  String toString() {
    return 'EditEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EditEventSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result setup(),
    @required Result init(String value),
    @required Result change(String value),
    @required Result submit(),
  }) {
    assert(setup != null);
    assert(init != null);
    assert(change != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result setup(),
    Result init(String value),
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
    @required Result setup(EditEventSetup value),
    @required Result init(EditEventInit value),
    @required Result change(EditEventChange value),
    @required Result submit(EditEventSubmit value),
  }) {
    assert(setup != null);
    assert(init != null);
    assert(change != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result setup(EditEventSetup value),
    Result init(EditEventInit value),
    Result change(EditEventChange value),
    Result submit(EditEventSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class EditEventSubmit implements EditEvent {
  const factory EditEventSubmit() = _$EditEventSubmit;
}
