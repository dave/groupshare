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
  _AddState call(PageState page, FormState form) {
    return _AddState(
      page,
      form,
    );
  }
}

// ignore: unused_element
const $AddState = _$AddStateTearOff();

mixin _$AddState {
  PageState get page;
  FormState get form;

  $AddStateCopyWith<AddState> get copyWith;
}

abstract class $AddStateCopyWith<$Res> {
  factory $AddStateCopyWith(AddState value, $Res Function(AddState) then) =
      _$AddStateCopyWithImpl<$Res>;
  $Res call({PageState page, FormState form});

  $PageStateCopyWith<$Res> get page;
  $FormStateCopyWith<$Res> get form;
}

class _$AddStateCopyWithImpl<$Res> implements $AddStateCopyWith<$Res> {
  _$AddStateCopyWithImpl(this._value, this._then);

  final AddState _value;
  // ignore: unused_field
  final $Res Function(AddState) _then;

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

abstract class _$AddStateCopyWith<$Res> implements $AddStateCopyWith<$Res> {
  factory _$AddStateCopyWith(_AddState value, $Res Function(_AddState) then) =
      __$AddStateCopyWithImpl<$Res>;
  @override
  $Res call({PageState page, FormState form});

  @override
  $PageStateCopyWith<$Res> get page;
  @override
  $FormStateCopyWith<$Res> get form;
}

class __$AddStateCopyWithImpl<$Res> extends _$AddStateCopyWithImpl<$Res>
    implements _$AddStateCopyWith<$Res> {
  __$AddStateCopyWithImpl(_AddState _value, $Res Function(_AddState) _then)
      : super(_value, (v) => _then(v as _AddState));

  @override
  _AddState get _value => super._value as _AddState;

  @override
  $Res call({
    Object page = freezed,
    Object form = freezed,
  }) {
    return _then(_AddState(
      page == freezed ? _value.page : page as PageState,
      form == freezed ? _value.form : form as FormState,
    ));
  }
}

class _$_AddState implements _AddState {
  const _$_AddState(this.page, this.form)
      : assert(page != null),
        assert(form != null);

  @override
  final PageState page;
  @override
  final FormState form;

  @override
  String toString() {
    return 'AddState(page: $page, form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddState &&
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
  _$AddStateCopyWith<_AddState> get copyWith =>
      __$AddStateCopyWithImpl<_AddState>(this, _$identity);
}

abstract class _AddState implements AddState {
  const factory _AddState(PageState page, FormState form) = _$_AddState;

  @override
  PageState get page;
  @override
  FormState get form;
  @override
  _$AddStateCopyWith<_AddState> get copyWith;
}

class _$PageStateTearOff {
  const _$PageStateTearOff();

// ignore: unused_element
  PageStateForm form() {
    return const PageStateForm();
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
    @required Result form(),
    @required Result done(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(),
    Result done(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result form(PageStateForm value),
    @required Result done(PageStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(PageStateForm value),
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
    @required Result form(),
    @required Result done(),
  }) {
    assert(form != null);
    assert(done != null);
    return form();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(),
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
    @required Result form(PageStateForm value),
    @required Result done(PageStateDone value),
  }) {
    assert(form != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(PageStateForm value),
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
    @required Result form(),
    @required Result done(),
  }) {
    assert(form != null);
    assert(done != null);
    return done();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result form(),
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
    @required Result form(PageStateForm value),
    @required Result done(PageStateDone value),
  }) {
    assert(form != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result form(PageStateForm value),
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
