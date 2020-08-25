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
  EditStateInitial initial(String id) {
    return EditStateInitial(
      id,
    );
  }

// ignore: unused_element
  EditStateOffline offline(String id) {
    return EditStateOffline(
      id,
    );
  }

// ignore: unused_element
  EditStateLoading loading(String id) {
    return EditStateLoading(
      id,
    );
  }

// ignore: unused_element
  EditStateForm form(
      {@required String id,
      FormzStatus status = FormzStatus.pure,
      String initialName = '',
      Name name = const Name.pure()}) {
    return EditStateForm(
      id: id,
      status: status,
      initialName: initialName,
      name: name,
    );
  }

// ignore: unused_element
  EditStateError error(String id, dynamic error, EditState retryState) {
    return EditStateError(
      id,
      error,
      retryState,
    );
  }

// ignore: unused_element
  EditStateDone done(String id) {
    return EditStateDone(
      id,
    );
  }
}

// ignore: unused_element
const $EditState = _$EditStateTearOff();

mixin _$EditState {
  String get id;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result offline(String id),
    @required Result loading(String id),
    @required
        Result form(
            String id, FormzStatus status, String initialName, Name name),
    @required Result error(String id, dynamic error, EditState retryState),
    @required Result done(String id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result offline(String id),
    Result loading(String id),
    Result form(String id, FormzStatus status, String initialName, Name name),
    Result error(String id, dynamic error, EditState retryState),
    Result done(String id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditStateInitial value),
    @required Result offline(EditStateOffline value),
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result error(EditStateError value),
    @required Result done(EditStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditStateInitial value),
    Result offline(EditStateOffline value),
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result error(EditStateError value),
    Result done(EditStateDone value),
    @required Result orElse(),
  });

  $EditStateCopyWith<EditState> get copyWith;
}

abstract class $EditStateCopyWith<$Res> {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) then) =
      _$EditStateCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$EditStateCopyWithImpl<$Res> implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._value, this._then);

  final EditState _value;
  // ignore: unused_field
  final $Res Function(EditState) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class $EditStateInitialCopyWith<$Res>
    implements $EditStateCopyWith<$Res> {
  factory $EditStateInitialCopyWith(
          EditStateInitial value, $Res Function(EditStateInitial) then) =
      _$EditStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

class _$EditStateInitialCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditStateInitialCopyWith<$Res> {
  _$EditStateInitialCopyWithImpl(
      EditStateInitial _value, $Res Function(EditStateInitial) _then)
      : super(_value, (v) => _then(v as EditStateInitial));

  @override
  EditStateInitial get _value => super._value as EditStateInitial;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(EditStateInitial(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$EditStateInitial implements EditStateInitial {
  const _$EditStateInitial(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'EditState.initial(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditStateInitial &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $EditStateInitialCopyWith<EditStateInitial> get copyWith =>
      _$EditStateInitialCopyWithImpl<EditStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result offline(String id),
    @required Result loading(String id),
    @required
        Result form(
            String id, FormzStatus status, String initialName, Name name),
    @required Result error(String id, dynamic error, EditState retryState),
    @required Result done(String id),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return initial(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result offline(String id),
    Result loading(String id),
    Result form(String id, FormzStatus status, String initialName, Name name),
    Result error(String id, dynamic error, EditState retryState),
    Result done(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditStateInitial value),
    @required Result offline(EditStateOffline value),
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result error(EditStateError value),
    @required Result done(EditStateDone value),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditStateInitial value),
    Result offline(EditStateOffline value),
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result error(EditStateError value),
    Result done(EditStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditStateInitial implements EditState {
  const factory EditStateInitial(String id) = _$EditStateInitial;

  @override
  String get id;
  @override
  $EditStateInitialCopyWith<EditStateInitial> get copyWith;
}

abstract class $EditStateOfflineCopyWith<$Res>
    implements $EditStateCopyWith<$Res> {
  factory $EditStateOfflineCopyWith(
          EditStateOffline value, $Res Function(EditStateOffline) then) =
      _$EditStateOfflineCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

class _$EditStateOfflineCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditStateOfflineCopyWith<$Res> {
  _$EditStateOfflineCopyWithImpl(
      EditStateOffline _value, $Res Function(EditStateOffline) _then)
      : super(_value, (v) => _then(v as EditStateOffline));

  @override
  EditStateOffline get _value => super._value as EditStateOffline;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(EditStateOffline(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$EditStateOffline implements EditStateOffline {
  const _$EditStateOffline(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'EditState.offline(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditStateOffline &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $EditStateOfflineCopyWith<EditStateOffline> get copyWith =>
      _$EditStateOfflineCopyWithImpl<EditStateOffline>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result offline(String id),
    @required Result loading(String id),
    @required
        Result form(
            String id, FormzStatus status, String initialName, Name name),
    @required Result error(String id, dynamic error, EditState retryState),
    @required Result done(String id),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return offline(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result offline(String id),
    Result loading(String id),
    Result form(String id, FormzStatus status, String initialName, Name name),
    Result error(String id, dynamic error, EditState retryState),
    Result done(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditStateInitial value),
    @required Result offline(EditStateOffline value),
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result error(EditStateError value),
    @required Result done(EditStateDone value),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return offline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditStateInitial value),
    Result offline(EditStateOffline value),
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result error(EditStateError value),
    Result done(EditStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class EditStateOffline implements EditState {
  const factory EditStateOffline(String id) = _$EditStateOffline;

  @override
  String get id;
  @override
  $EditStateOfflineCopyWith<EditStateOffline> get copyWith;
}

abstract class $EditStateLoadingCopyWith<$Res>
    implements $EditStateCopyWith<$Res> {
  factory $EditStateLoadingCopyWith(
          EditStateLoading value, $Res Function(EditStateLoading) then) =
      _$EditStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

class _$EditStateLoadingCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditStateLoadingCopyWith<$Res> {
  _$EditStateLoadingCopyWithImpl(
      EditStateLoading _value, $Res Function(EditStateLoading) _then)
      : super(_value, (v) => _then(v as EditStateLoading));

  @override
  EditStateLoading get _value => super._value as EditStateLoading;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(EditStateLoading(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$EditStateLoading implements EditStateLoading {
  const _$EditStateLoading(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'EditState.loading(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditStateLoading &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $EditStateLoadingCopyWith<EditStateLoading> get copyWith =>
      _$EditStateLoadingCopyWithImpl<EditStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result offline(String id),
    @required Result loading(String id),
    @required
        Result form(
            String id, FormzStatus status, String initialName, Name name),
    @required Result error(String id, dynamic error, EditState retryState),
    @required Result done(String id),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return loading(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result offline(String id),
    Result loading(String id),
    Result form(String id, FormzStatus status, String initialName, Name name),
    Result error(String id, dynamic error, EditState retryState),
    Result done(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditStateInitial value),
    @required Result offline(EditStateOffline value),
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result error(EditStateError value),
    @required Result done(EditStateDone value),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditStateInitial value),
    Result offline(EditStateOffline value),
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result error(EditStateError value),
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

abstract class EditStateLoading implements EditState {
  const factory EditStateLoading(String id) = _$EditStateLoading;

  @override
  String get id;
  @override
  $EditStateLoadingCopyWith<EditStateLoading> get copyWith;
}

abstract class $EditStateFormCopyWith<$Res>
    implements $EditStateCopyWith<$Res> {
  factory $EditStateFormCopyWith(
          EditStateForm value, $Res Function(EditStateForm) then) =
      _$EditStateFormCopyWithImpl<$Res>;
  @override
  $Res call({String id, FormzStatus status, String initialName, Name name});
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
    Object id = freezed,
    Object status = freezed,
    Object initialName = freezed,
    Object name = freezed,
  }) {
    return _then(EditStateForm(
      id: id == freezed ? _value.id : id as String,
      status: status == freezed ? _value.status : status as FormzStatus,
      initialName:
          initialName == freezed ? _value.initialName : initialName as String,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

class _$EditStateForm implements EditStateForm {
  const _$EditStateForm(
      {@required this.id,
      this.status = FormzStatus.pure,
      this.initialName = '',
      this.name = const Name.pure()})
      : assert(id != null),
        assert(status != null),
        assert(initialName != null),
        assert(name != null);

  @override
  final String id;
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
    return 'EditState.form(id: $id, status: $status, initialName: $initialName, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditStateForm &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(initialName) ^
      const DeepCollectionEquality().hash(name);

  @override
  $EditStateFormCopyWith<EditStateForm> get copyWith =>
      _$EditStateFormCopyWithImpl<EditStateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result offline(String id),
    @required Result loading(String id),
    @required
        Result form(
            String id, FormzStatus status, String initialName, Name name),
    @required Result error(String id, dynamic error, EditState retryState),
    @required Result done(String id),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return form(id, status, initialName, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result offline(String id),
    Result loading(String id),
    Result form(String id, FormzStatus status, String initialName, Name name),
    Result error(String id, dynamic error, EditState retryState),
    Result done(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(id, status, initialName, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditStateInitial value),
    @required Result offline(EditStateOffline value),
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result error(EditStateError value),
    @required Result done(EditStateDone value),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditStateInitial value),
    Result offline(EditStateOffline value),
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result error(EditStateError value),
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

abstract class EditStateForm implements EditState {
  const factory EditStateForm(
      {@required String id,
      FormzStatus status,
      String initialName,
      Name name}) = _$EditStateForm;

  @override
  String get id;
  FormzStatus get status;
  String get initialName;
  Name get name;
  @override
  $EditStateFormCopyWith<EditStateForm> get copyWith;
}

abstract class $EditStateErrorCopyWith<$Res>
    implements $EditStateCopyWith<$Res> {
  factory $EditStateErrorCopyWith(
          EditStateError value, $Res Function(EditStateError) then) =
      _$EditStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String id, dynamic error, EditState retryState});
}

class _$EditStateErrorCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements $EditStateErrorCopyWith<$Res> {
  _$EditStateErrorCopyWithImpl(
      EditStateError _value, $Res Function(EditStateError) _then)
      : super(_value, (v) => _then(v as EditStateError));

  @override
  EditStateError get _value => super._value as EditStateError;

  @override
  $Res call({
    Object id = freezed,
    Object error = freezed,
    Object retryState = freezed,
  }) {
    return _then(EditStateError(
      id == freezed ? _value.id : id as String,
      error == freezed ? _value.error : error as dynamic,
      retryState == freezed ? _value.retryState : retryState as EditState,
    ));
  }
}

class _$EditStateError implements EditStateError {
  const _$EditStateError(this.id, this.error, this.retryState)
      : assert(id != null),
        assert(error != null),
        assert(retryState != null);

  @override
  final String id;
  @override
  final dynamic error;
  @override
  final EditState retryState;

  @override
  String toString() {
    return 'EditState.error(id: $id, error: $error, retryState: $retryState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditStateError &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.retryState, retryState) ||
                const DeepCollectionEquality()
                    .equals(other.retryState, retryState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(retryState);

  @override
  $EditStateErrorCopyWith<EditStateError> get copyWith =>
      _$EditStateErrorCopyWithImpl<EditStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result offline(String id),
    @required Result loading(String id),
    @required
        Result form(
            String id, FormzStatus status, String initialName, Name name),
    @required Result error(String id, dynamic error, EditState retryState),
    @required Result done(String id),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return error(id, this.error, retryState);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result offline(String id),
    Result loading(String id),
    Result form(String id, FormzStatus status, String initialName, Name name),
    Result error(String id, dynamic error, EditState retryState),
    Result done(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(id, this.error, retryState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditStateInitial value),
    @required Result offline(EditStateOffline value),
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result error(EditStateError value),
    @required Result done(EditStateDone value),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditStateInitial value),
    Result offline(EditStateOffline value),
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result error(EditStateError value),
    Result done(EditStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EditStateError implements EditState {
  const factory EditStateError(String id, dynamic error, EditState retryState) =
      _$EditStateError;

  @override
  String get id;
  dynamic get error;
  EditState get retryState;
  @override
  $EditStateErrorCopyWith<EditStateError> get copyWith;
}

abstract class $EditStateDoneCopyWith<$Res>
    implements $EditStateCopyWith<$Res> {
  factory $EditStateDoneCopyWith(
          EditStateDone value, $Res Function(EditStateDone) then) =
      _$EditStateDoneCopyWithImpl<$Res>;
  @override
  $Res call({String id});
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
    Object id = freezed,
  }) {
    return _then(EditStateDone(
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$EditStateDone implements EditStateDone {
  const _$EditStateDone(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'EditState.done(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditStateDone &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $EditStateDoneCopyWith<EditStateDone> get copyWith =>
      _$EditStateDoneCopyWithImpl<EditStateDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(String id),
    @required Result offline(String id),
    @required Result loading(String id),
    @required
        Result form(
            String id, FormzStatus status, String initialName, Name name),
    @required Result error(String id, dynamic error, EditState retryState),
    @required Result done(String id),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return done(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(String id),
    Result offline(String id),
    Result loading(String id),
    Result form(String id, FormzStatus status, String initialName, Name name),
    Result error(String id, dynamic error, EditState retryState),
    Result done(String id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(EditStateInitial value),
    @required Result offline(EditStateOffline value),
    @required Result loading(EditStateLoading value),
    @required Result form(EditStateForm value),
    @required Result error(EditStateError value),
    @required Result done(EditStateDone value),
  }) {
    assert(initial != null);
    assert(offline != null);
    assert(loading != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(EditStateInitial value),
    Result offline(EditStateOffline value),
    Result loading(EditStateLoading value),
    Result form(EditStateForm value),
    Result error(EditStateError value),
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
  const factory EditStateDone(String id) = _$EditStateDone;

  @override
  String get id;
  @override
  $EditStateDoneCopyWith<EditStateDone> get copyWith;
}
