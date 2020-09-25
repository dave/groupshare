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
  _FooState call({PageState page, FormState form}) {
    return _FooState(
      page: page,
      form: form,
    );
  }
}

// ignore: unused_element
const $FooState = _$FooStateTearOff();

mixin _$FooState {
  PageState get page;
  FormState get form;

  $FooStateCopyWith<FooState> get copyWith;
}

abstract class $FooStateCopyWith<$Res> {
  factory $FooStateCopyWith(FooState value, $Res Function(FooState) then) =
      _$FooStateCopyWithImpl<$Res>;
  $Res call({PageState page, FormState form});

  $PageStateCopyWith<$Res> get page;
  $FormStateCopyWith<$Res> get form;
}

class _$FooStateCopyWithImpl<$Res> implements $FooStateCopyWith<$Res> {
  _$FooStateCopyWithImpl(this._value, this._then);

  final FooState _value;
  // ignore: unused_field
  final $Res Function(FooState) _then;

  @override
  $Res call({
    Object page = freezed,
    Object form = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as PageState,
      form: form == freezed ? _value.form : form as FormState,
    ));
  }

  @override
  $PageStateCopyWith<$Res> get page {
    if (_value.page == null) {
      return null;
    }
    return $PageStateCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }

  @override
  $FormStateCopyWith<$Res> get form {
    if (_value.form == null) {
      return null;
    }
    return $FormStateCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

abstract class _$FooStateCopyWith<$Res> implements $FooStateCopyWith<$Res> {
  factory _$FooStateCopyWith(_FooState value, $Res Function(_FooState) then) =
      __$FooStateCopyWithImpl<$Res>;
  @override
  $Res call({PageState page, FormState form});

  @override
  $PageStateCopyWith<$Res> get page;
  @override
  $FormStateCopyWith<$Res> get form;
}

class __$FooStateCopyWithImpl<$Res> extends _$FooStateCopyWithImpl<$Res>
    implements _$FooStateCopyWith<$Res> {
  __$FooStateCopyWithImpl(_FooState _value, $Res Function(_FooState) _then)
      : super(_value, (v) => _then(v as _FooState));

  @override
  _FooState get _value => super._value as _FooState;

  @override
  $Res call({
    Object page = freezed,
    Object form = freezed,
  }) {
    return _then(_FooState(
      page: page == freezed ? _value.page : page as PageState,
      form: form == freezed ? _value.form : form as FormState,
    ));
  }
}

class _$_FooState implements _FooState {
  const _$_FooState({this.page, this.form});

  @override
  final PageState page;
  @override
  final FormState form;

  @override
  String toString() {
    return 'FooState(page: $page, form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FooState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.form, form) ||
                const DeepCollectionEquality().equals(other.form, form)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(form);

  @override
  _$FooStateCopyWith<_FooState> get copyWith =>
      __$FooStateCopyWithImpl<_FooState>(this, _$identity);
}

abstract class _FooState implements FooState {
  const factory _FooState({PageState page, FormState form}) = _$_FooState;

  @override
  PageState get page;
  @override
  FormState get form;
  @override
  _$FooStateCopyWith<_FooState> get copyWith;
}

class _$FormStateTearOff {
  const _$FormStateTearOff();

// ignore: unused_element
  _FormState call(
      {FormzStatus status = FormzStatus.pure, Name name = const Name.pure()}) {
    return _FormState(
      status: status,
      name: name,
    );
  }
}

// ignore: unused_element
const $FormState = _$FormStateTearOff();

mixin _$FormState {
  FormzStatus get status;
  Name get name;

  $FormStateCopyWith<FormState> get copyWith;
}

abstract class $FormStateCopyWith<$Res> {
  factory $FormStateCopyWith(FormState value, $Res Function(FormState) then) =
      _$FormStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Name name});
}

class _$FormStateCopyWithImpl<$Res> implements $FormStateCopyWith<$Res> {
  _$FormStateCopyWithImpl(this._value, this._then);

  final FormState _value;
  // ignore: unused_field
  final $Res Function(FormState) _then;

  @override
  $Res call({
    Object status = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as FormzStatus,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

abstract class _$FormStateCopyWith<$Res> implements $FormStateCopyWith<$Res> {
  factory _$FormStateCopyWith(
          _FormState value, $Res Function(_FormState) then) =
      __$FormStateCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, Name name});
}

class __$FormStateCopyWithImpl<$Res> extends _$FormStateCopyWithImpl<$Res>
    implements _$FormStateCopyWith<$Res> {
  __$FormStateCopyWithImpl(_FormState _value, $Res Function(_FormState) _then)
      : super(_value, (v) => _then(v as _FormState));

  @override
  _FormState get _value => super._value as _FormState;

  @override
  $Res call({
    Object status = freezed,
    Object name = freezed,
  }) {
    return _then(_FormState(
      status: status == freezed ? _value.status : status as FormzStatus,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

class _$_FormState implements _FormState {
  const _$_FormState(
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
    return 'FormState(status: $status, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormState &&
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
  _$FormStateCopyWith<_FormState> get copyWith =>
      __$FormStateCopyWithImpl<_FormState>(this, _$identity);
}

abstract class _FormState implements FormState {
  const factory _FormState({FormzStatus status, Name name}) = _$_FormState;

  @override
  FormzStatus get status;
  @override
  Name get name;
  @override
  _$FormStateCopyWith<_FormState> get copyWith;
}

class _$PageStateTearOff {
  const _$PageStateTearOff();

// ignore: unused_element
  PageStateInitial initial() {
    return const PageStateInitial();
  }

// ignore: unused_element
  PageStateForm form() {
    return const PageStateForm();
  }

// ignore: unused_element
  PageStateError error(dynamic error, StackTrace stack, FooState retry) {
    return PageStateError(
      error,
      stack,
      retry,
    );
  }

// ignore: unused_element
  PageStateDone done() {
    return const PageStateDone();
  }
}

// ignore: unused_element
const $PageState = _$PageStateTearOff();

mixin _$PageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(),
    @required Result error(dynamic error, StackTrace stack, FooState retry),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(),
    Result error(dynamic error, StackTrace stack, FooState retry),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PageStateInitial value),
    @required Result form(PageStateForm value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PageStateInitial value),
    Result form(PageStateForm value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
    @required Result orElse(),
  });
}

abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res>;
}

class _$PageStateCopyWithImpl<$Res> implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  final PageState _value;
  // ignore: unused_field
  final $Res Function(PageState) _then;
}

abstract class $PageStateInitialCopyWith<$Res> {
  factory $PageStateInitialCopyWith(
          PageStateInitial value, $Res Function(PageStateInitial) then) =
      _$PageStateInitialCopyWithImpl<$Res>;
}

class _$PageStateInitialCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateInitialCopyWith<$Res> {
  _$PageStateInitialCopyWithImpl(
      PageStateInitial _value, $Res Function(PageStateInitial) _then)
      : super(_value, (v) => _then(v as PageStateInitial));

  @override
  PageStateInitial get _value => super._value as PageStateInitial;
}

class _$PageStateInitial implements PageStateInitial {
  const _$PageStateInitial();

  @override
  String toString() {
    return 'PageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(),
    @required Result error(dynamic error, StackTrace stack, FooState retry),
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
    Result form(),
    Result error(dynamic error, StackTrace stack, FooState retry),
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
    @required Result initial(PageStateInitial value),
    @required Result form(PageStateForm value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
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
    Result initial(PageStateInitial value),
    Result form(PageStateForm value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PageStateInitial implements PageState {
  const factory PageStateInitial() = _$PageStateInitial;
}

abstract class $PageStateFormCopyWith<$Res> {
  factory $PageStateFormCopyWith(
          PageStateForm value, $Res Function(PageStateForm) then) =
      _$PageStateFormCopyWithImpl<$Res>;
}

class _$PageStateFormCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateFormCopyWith<$Res> {
  _$PageStateFormCopyWithImpl(
      PageStateForm _value, $Res Function(PageStateForm) _then)
      : super(_value, (v) => _then(v as PageStateForm));

  @override
  PageStateForm get _value => super._value as PageStateForm;
}

class _$PageStateForm implements PageStateForm {
  const _$PageStateForm();

  @override
  String toString() {
    return 'PageState.form()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(),
    @required Result error(dynamic error, StackTrace stack, FooState retry),
    @required Result done(),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return form();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(),
    Result error(dynamic error, StackTrace stack, FooState retry),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PageStateInitial value),
    @required Result form(PageStateForm value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
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
    Result initial(PageStateInitial value),
    Result form(PageStateForm value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class PageStateForm implements PageState {
  const factory PageStateForm() = _$PageStateForm;
}

abstract class $PageStateErrorCopyWith<$Res> {
  factory $PageStateErrorCopyWith(
          PageStateError value, $Res Function(PageStateError) then) =
      _$PageStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, StackTrace stack, FooState retry});

  $FooStateCopyWith<$Res> get retry;
}

class _$PageStateErrorCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateErrorCopyWith<$Res> {
  _$PageStateErrorCopyWithImpl(
      PageStateError _value, $Res Function(PageStateError) _then)
      : super(_value, (v) => _then(v as PageStateError));

  @override
  PageStateError get _value => super._value as PageStateError;

  @override
  $Res call({
    Object error = freezed,
    Object stack = freezed,
    Object retry = freezed,
  }) {
    return _then(PageStateError(
      error == freezed ? _value.error : error as dynamic,
      stack == freezed ? _value.stack : stack as StackTrace,
      retry == freezed ? _value.retry : retry as FooState,
    ));
  }

  @override
  $FooStateCopyWith<$Res> get retry {
    if (_value.retry == null) {
      return null;
    }
    return $FooStateCopyWith<$Res>(_value.retry, (value) {
      return _then(_value.copyWith(retry: value));
    });
  }
}

class _$PageStateError implements PageStateError {
  const _$PageStateError(this.error, this.stack, this.retry)
      : assert(error != null),
        assert(stack != null),
        assert(retry != null);

  @override
  final dynamic error;
  @override
  final StackTrace stack;
  @override
  final FooState retry;

  @override
  String toString() {
    return 'PageState.error(error: $error, stack: $stack, retry: $retry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stack, stack) ||
                const DeepCollectionEquality().equals(other.stack, stack)) &&
            (identical(other.retry, retry) ||
                const DeepCollectionEquality().equals(other.retry, retry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stack) ^
      const DeepCollectionEquality().hash(retry);

  @override
  $PageStateErrorCopyWith<PageStateError> get copyWith =>
      _$PageStateErrorCopyWithImpl<PageStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(),
    @required Result error(dynamic error, StackTrace stack, FooState retry),
    @required Result done(),
  }) {
    assert(initial != null);
    assert(form != null);
    assert(error != null);
    assert(done != null);
    return error(this.error, stack, retry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result form(),
    Result error(dynamic error, StackTrace stack, FooState retry),
    Result done(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, stack, retry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PageStateInitial value),
    @required Result form(PageStateForm value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
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
    Result initial(PageStateInitial value),
    Result form(PageStateForm value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PageStateError implements PageState {
  const factory PageStateError(
      dynamic error, StackTrace stack, FooState retry) = _$PageStateError;

  dynamic get error;
  StackTrace get stack;
  FooState get retry;
  $PageStateErrorCopyWith<PageStateError> get copyWith;
}

abstract class $PageStateDoneCopyWith<$Res> {
  factory $PageStateDoneCopyWith(
          PageStateDone value, $Res Function(PageStateDone) then) =
      _$PageStateDoneCopyWithImpl<$Res>;
}

class _$PageStateDoneCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateDoneCopyWith<$Res> {
  _$PageStateDoneCopyWithImpl(
      PageStateDone _value, $Res Function(PageStateDone) _then)
      : super(_value, (v) => _then(v as PageStateDone));

  @override
  PageStateDone get _value => super._value as PageStateDone;
}

class _$PageStateDone implements PageStateDone {
  const _$PageStateDone();

  @override
  String toString() {
    return 'PageState.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result form(),
    @required Result error(dynamic error, StackTrace stack, FooState retry),
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
    Result form(),
    Result error(dynamic error, StackTrace stack, FooState retry),
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
    @required Result initial(PageStateInitial value),
    @required Result form(PageStateForm value),
    @required Result error(PageStateError value),
    @required Result done(PageStateDone value),
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
    Result initial(PageStateInitial value),
    Result form(PageStateForm value),
    Result error(PageStateError value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class PageStateDone implements PageState {
  const factory PageStateDone() = _$PageStateDone;
}
