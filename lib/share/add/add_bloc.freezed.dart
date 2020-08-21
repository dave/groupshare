// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ShareAddStateTearOff {
  const _$ShareAddStateTearOff();

// ignore: unused_element
  ShareAddStateForm form(
      {FormzStatus status = FormzStatus.pure, Name name = const Name.pure()}) {
    return ShareAddStateForm(
      status: status,
      name: name,
    );
  }

// ignore: unused_element
  ShareAddStateError error(dynamic error, ShareAddState retryState) {
    return ShareAddStateError(
      error,
      retryState,
    );
  }

// ignore: unused_element
  ShareAddStateDone done() {
    return const ShareAddStateDone();
  }
}

// ignore: unused_element
const $ShareAddState = _$ShareAddStateTearOff();

mixin _$ShareAddState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result form(FormzStatus status, Name name),
    @required Result error(dynamic error, ShareAddState retryState),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(FormzStatus status, Name name),
    Result error(dynamic error, ShareAddState retryState),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result form(ShareAddStateForm value),
    @required Result error(ShareAddStateError value),
    @required Result done(ShareAddStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(ShareAddStateForm value),
    Result error(ShareAddStateError value),
    Result done(ShareAddStateDone value),
    @required Result orElse(),
  });
}

abstract class $ShareAddStateCopyWith<$Res> {
  factory $ShareAddStateCopyWith(
          ShareAddState value, $Res Function(ShareAddState) then) =
      _$ShareAddStateCopyWithImpl<$Res>;
}

class _$ShareAddStateCopyWithImpl<$Res>
    implements $ShareAddStateCopyWith<$Res> {
  _$ShareAddStateCopyWithImpl(this._value, this._then);

  final ShareAddState _value;
  // ignore: unused_field
  final $Res Function(ShareAddState) _then;
}

abstract class $ShareAddStateFormCopyWith<$Res> {
  factory $ShareAddStateFormCopyWith(
          ShareAddStateForm value, $Res Function(ShareAddStateForm) then) =
      _$ShareAddStateFormCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Name name});
}

class _$ShareAddStateFormCopyWithImpl<$Res>
    extends _$ShareAddStateCopyWithImpl<$Res>
    implements $ShareAddStateFormCopyWith<$Res> {
  _$ShareAddStateFormCopyWithImpl(
      ShareAddStateForm _value, $Res Function(ShareAddStateForm) _then)
      : super(_value, (v) => _then(v as ShareAddStateForm));

  @override
  ShareAddStateForm get _value => super._value as ShareAddStateForm;

  @override
  $Res call({
    Object status = freezed,
    Object name = freezed,
  }) {
    return _then(ShareAddStateForm(
      status: status == freezed ? _value.status : status as FormzStatus,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

class _$ShareAddStateForm implements ShareAddStateForm {
  const _$ShareAddStateForm(
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
    return 'ShareAddState.form(status: $status, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShareAddStateForm &&
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
  $ShareAddStateFormCopyWith<ShareAddStateForm> get copyWith =>
      _$ShareAddStateFormCopyWithImpl<ShareAddStateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result form(FormzStatus status, Name name),
    @required Result error(dynamic error, ShareAddState retryState),
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
    Result error(dynamic error, ShareAddState retryState),
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
    @required Result form(ShareAddStateForm value),
    @required Result error(ShareAddStateError value),
    @required Result done(ShareAddStateDone value),
  }) {
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(ShareAddStateForm value),
    Result error(ShareAddStateError value),
    Result done(ShareAddStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class ShareAddStateForm implements ShareAddState {
  const factory ShareAddStateForm({FormzStatus status, Name name}) =
      _$ShareAddStateForm;

  FormzStatus get status;
  Name get name;
  $ShareAddStateFormCopyWith<ShareAddStateForm> get copyWith;
}

abstract class $ShareAddStateErrorCopyWith<$Res> {
  factory $ShareAddStateErrorCopyWith(
          ShareAddStateError value, $Res Function(ShareAddStateError) then) =
      _$ShareAddStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, ShareAddState retryState});
}

class _$ShareAddStateErrorCopyWithImpl<$Res>
    extends _$ShareAddStateCopyWithImpl<$Res>
    implements $ShareAddStateErrorCopyWith<$Res> {
  _$ShareAddStateErrorCopyWithImpl(
      ShareAddStateError _value, $Res Function(ShareAddStateError) _then)
      : super(_value, (v) => _then(v as ShareAddStateError));

  @override
  ShareAddStateError get _value => super._value as ShareAddStateError;

  @override
  $Res call({
    Object error = freezed,
    Object retryState = freezed,
  }) {
    return _then(ShareAddStateError(
      error == freezed ? _value.error : error as dynamic,
      retryState == freezed ? _value.retryState : retryState as ShareAddState,
    ));
  }
}

class _$ShareAddStateError implements ShareAddStateError {
  const _$ShareAddStateError(this.error, this.retryState)
      : assert(error != null),
        assert(retryState != null);

  @override
  final dynamic error;
  @override
  final ShareAddState retryState;

  @override
  String toString() {
    return 'ShareAddState.error(error: $error, retryState: $retryState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShareAddStateError &&
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
  $ShareAddStateErrorCopyWith<ShareAddStateError> get copyWith =>
      _$ShareAddStateErrorCopyWithImpl<ShareAddStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result form(FormzStatus status, Name name),
    @required Result error(dynamic error, ShareAddState retryState),
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
    Result error(dynamic error, ShareAddState retryState),
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
    @required Result form(ShareAddStateForm value),
    @required Result error(ShareAddStateError value),
    @required Result done(ShareAddStateDone value),
  }) {
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(ShareAddStateForm value),
    Result error(ShareAddStateError value),
    Result done(ShareAddStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ShareAddStateError implements ShareAddState {
  const factory ShareAddStateError(dynamic error, ShareAddState retryState) =
      _$ShareAddStateError;

  dynamic get error;
  ShareAddState get retryState;
  $ShareAddStateErrorCopyWith<ShareAddStateError> get copyWith;
}

abstract class $ShareAddStateDoneCopyWith<$Res> {
  factory $ShareAddStateDoneCopyWith(
          ShareAddStateDone value, $Res Function(ShareAddStateDone) then) =
      _$ShareAddStateDoneCopyWithImpl<$Res>;
}

class _$ShareAddStateDoneCopyWithImpl<$Res>
    extends _$ShareAddStateCopyWithImpl<$Res>
    implements $ShareAddStateDoneCopyWith<$Res> {
  _$ShareAddStateDoneCopyWithImpl(
      ShareAddStateDone _value, $Res Function(ShareAddStateDone) _then)
      : super(_value, (v) => _then(v as ShareAddStateDone));

  @override
  ShareAddStateDone get _value => super._value as ShareAddStateDone;
}

class _$ShareAddStateDone implements ShareAddStateDone {
  const _$ShareAddStateDone();

  @override
  String toString() {
    return 'ShareAddState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShareAddStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result form(FormzStatus status, Name name),
    @required Result error(dynamic error, ShareAddState retryState),
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
    Result error(dynamic error, ShareAddState retryState),
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
    @required Result form(ShareAddStateForm value),
    @required Result error(ShareAddStateError value),
    @required Result done(ShareAddStateDone value),
  }) {
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(ShareAddStateForm value),
    Result error(ShareAddStateError value),
    Result done(ShareAddStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ShareAddStateDone implements ShareAddState {
  const factory ShareAddStateDone() = _$ShareAddStateDone;
}
