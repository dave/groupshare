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
  _EditState call(PageState page, FormState form) {
    return _EditState(
      page,
      form,
    );
  }
}

// ignore: unused_element
const $EditState = _$EditStateTearOff();

mixin _$EditState {
  PageState get page;
  FormState get form;

  $EditStateCopyWith<EditState> get copyWith;
}

abstract class $EditStateCopyWith<$Res> {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) then) =
      _$EditStateCopyWithImpl<$Res>;
  $Res call({PageState page, FormState form});

  $PageStateCopyWith<$Res> get page;
  $FormStateCopyWith<$Res> get form;
}

class _$EditStateCopyWithImpl<$Res> implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._value, this._then);

  final EditState _value;
  // ignore: unused_field
  final $Res Function(EditState) _then;

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

abstract class _$EditStateCopyWith<$Res> implements $EditStateCopyWith<$Res> {
  factory _$EditStateCopyWith(
          _EditState value, $Res Function(_EditState) then) =
      __$EditStateCopyWithImpl<$Res>;
  @override
  $Res call({PageState page, FormState form});

  @override
  $PageStateCopyWith<$Res> get page;
  @override
  $FormStateCopyWith<$Res> get form;
}

class __$EditStateCopyWithImpl<$Res> extends _$EditStateCopyWithImpl<$Res>
    implements _$EditStateCopyWith<$Res> {
  __$EditStateCopyWithImpl(_EditState _value, $Res Function(_EditState) _then)
      : super(_value, (v) => _then(v as _EditState));

  @override
  _EditState get _value => super._value as _EditState;

  @override
  $Res call({
    Object page = freezed,
    Object form = freezed,
  }) {
    return _then(_EditState(
      page == freezed ? _value.page : page as PageState,
      form == freezed ? _value.form : form as FormState,
    ));
  }
}

class _$_EditState implements _EditState {
  const _$_EditState(this.page, this.form)
      : assert(page != null),
        assert(form != null);

  @override
  final PageState page;
  @override
  final FormState form;

  @override
  String toString() {
    return 'EditState(page: $page, form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditState &&
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
  _$EditStateCopyWith<_EditState> get copyWith =>
      __$EditStateCopyWithImpl<_EditState>(this, _$identity);
}

abstract class _EditState implements EditState {
  const factory _EditState(PageState page, FormState form) = _$_EditState;

  @override
  PageState get page;
  @override
  FormState get form;
  @override
  _$EditStateCopyWith<_EditState> get copyWith;
}

class _$FormStateTearOff {
  const _$FormStateTearOff();

// ignore: unused_element
  _FormState call(
      {FormzStatus status = FormzStatus.pure,
      String initialName = '',
      Name name = const Name.pure()}) {
    return _FormState(
      status: status,
      initialName: initialName,
      name: name,
    );
  }
}

// ignore: unused_element
const $FormState = _$FormStateTearOff();

mixin _$FormState {
  FormzStatus get status;
  String get initialName;
  Name get name;

  $FormStateCopyWith<FormState> get copyWith;
}

abstract class $FormStateCopyWith<$Res> {
  factory $FormStateCopyWith(FormState value, $Res Function(FormState) then) =
      _$FormStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status, String initialName, Name name});
}

class _$FormStateCopyWithImpl<$Res> implements $FormStateCopyWith<$Res> {
  _$FormStateCopyWithImpl(this._value, this._then);

  final FormState _value;
  // ignore: unused_field
  final $Res Function(FormState) _then;

  @override
  $Res call({
    Object status = freezed,
    Object initialName = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as FormzStatus,
      initialName:
          initialName == freezed ? _value.initialName : initialName as String,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

abstract class _$FormStateCopyWith<$Res> implements $FormStateCopyWith<$Res> {
  factory _$FormStateCopyWith(
          _FormState value, $Res Function(_FormState) then) =
      __$FormStateCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, String initialName, Name name});
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
    Object initialName = freezed,
    Object name = freezed,
  }) {
    return _then(_FormState(
      status: status == freezed ? _value.status : status as FormzStatus,
      initialName:
          initialName == freezed ? _value.initialName : initialName as String,
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

class _$_FormState implements _FormState {
  const _$_FormState(
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
    return 'FormState(status: $status, initialName: $initialName, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormState &&
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
  _$FormStateCopyWith<_FormState> get copyWith =>
      __$FormStateCopyWithImpl<_FormState>(this, _$identity);
}

abstract class _FormState implements FormState {
  const factory _FormState(
      {FormzStatus status, String initialName, Name name}) = _$_FormState;

  @override
  FormzStatus get status;
  @override
  String get initialName;
  @override
  Name get name;
  @override
  _$FormStateCopyWith<_FormState> get copyWith;
}

class _$PageStateTearOff {
  const _$PageStateTearOff();

// ignore: unused_element
  PageStateLoading loading() {
    return const PageStateLoading();
  }

// ignore: unused_element
  PageStateForm form() {
    return const PageStateForm();
  }

// ignore: unused_element
  PageStateDone done(String route) {
    return PageStateDone(
      route,
    );
  }
}

// ignore: unused_element
const $PageState = _$PageStateTearOff();

mixin _$PageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(),
    @required Result done(String route),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result form(),
    Result done(String route),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(PageStateLoading value),
    @required Result form(PageStateForm value),
    @required Result done(PageStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
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

abstract class $PageStateLoadingCopyWith<$Res> {
  factory $PageStateLoadingCopyWith(
          PageStateLoading value, $Res Function(PageStateLoading) then) =
      _$PageStateLoadingCopyWithImpl<$Res>;
}

class _$PageStateLoadingCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateLoadingCopyWith<$Res> {
  _$PageStateLoadingCopyWithImpl(
      PageStateLoading _value, $Res Function(PageStateLoading) _then)
      : super(_value, (v) => _then(v as PageStateLoading));

  @override
  PageStateLoading get _value => super._value as PageStateLoading;
}

class _$PageStateLoading implements PageStateLoading {
  const _$PageStateLoading();

  @override
  String toString() {
    return 'PageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(),
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
    Result form(),
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
    @required Result loading(PageStateLoading value),
    @required Result form(PageStateForm value),
    @required Result done(PageStateDone value),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
    Result form(PageStateForm value),
    Result done(PageStateDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PageStateLoading implements PageState {
  const factory PageStateLoading() = _$PageStateLoading;
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
    @required Result loading(),
    @required Result form(),
    @required Result done(String route),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return form();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result form(),
    Result done(String route),
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
    @required Result loading(PageStateLoading value),
    @required Result form(PageStateForm value),
    @required Result done(PageStateDone value),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return form(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
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
  $Res call({String route});
}

class _$PageStateDoneCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateDoneCopyWith<$Res> {
  _$PageStateDoneCopyWithImpl(
      PageStateDone _value, $Res Function(PageStateDone) _then)
      : super(_value, (v) => _then(v as PageStateDone));

  @override
  PageStateDone get _value => super._value as PageStateDone;

  @override
  $Res call({
    Object route = freezed,
  }) {
    return _then(PageStateDone(
      route == freezed ? _value.route : route as String,
    ));
  }
}

class _$PageStateDone implements PageStateDone {
  const _$PageStateDone(this.route) : assert(route != null);

  @override
  final String route;

  @override
  String toString() {
    return 'PageState.done(route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageStateDone &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(route);

  @override
  $PageStateDoneCopyWith<PageStateDone> get copyWith =>
      _$PageStateDoneCopyWithImpl<PageStateDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result form(),
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
    Result form(),
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
    @required Result loading(PageStateLoading value),
    @required Result form(PageStateForm value),
    @required Result done(PageStateDone value),
  }) {
    assert(loading != null);
    assert(form != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
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
  const factory PageStateDone(String route) = _$PageStateDone;

  String get route;
  $PageStateDoneCopyWith<PageStateDone> get copyWith;
}
