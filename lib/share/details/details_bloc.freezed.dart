// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

// ignore: unused_element
  _DetailsState call({@required PageState page, DetailsAction action}) {
    return _DetailsState(
      page: page,
      action: action,
    );
  }
}

// ignore: unused_element
const $DetailsState = _$DetailsStateTearOff();

mixin _$DetailsState {
  PageState get page;
  DetailsAction get action;

  $DetailsStateCopyWith<DetailsState> get copyWith;
}

abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
  $Res call({PageState page, DetailsAction action});

  $PageStateCopyWith<$Res> get page;
  $DetailsActionCopyWith<$Res> get action;
}

class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;

  @override
  $Res call({
    Object page = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as PageState,
      action: action == freezed ? _value.action : action as DetailsAction,
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
  $DetailsActionCopyWith<$Res> get action {
    if (_value.action == null) {
      return null;
    }
    return $DetailsActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }
}

abstract class _$DetailsStateCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$DetailsStateCopyWith(
          _DetailsState value, $Res Function(_DetailsState) then) =
      __$DetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({PageState page, DetailsAction action});

  @override
  $PageStateCopyWith<$Res> get page;
  @override
  $DetailsActionCopyWith<$Res> get action;
}

class __$DetailsStateCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$DetailsStateCopyWith<$Res> {
  __$DetailsStateCopyWithImpl(
      _DetailsState _value, $Res Function(_DetailsState) _then)
      : super(_value, (v) => _then(v as _DetailsState));

  @override
  _DetailsState get _value => super._value as _DetailsState;

  @override
  $Res call({
    Object page = freezed,
    Object action = freezed,
  }) {
    return _then(_DetailsState(
      page: page == freezed ? _value.page : page as PageState,
      action: action == freezed ? _value.action : action as DetailsAction,
    ));
  }
}

@Implements(PageHolder)
@Implements(ActionHolder)
class _$_DetailsState implements _DetailsState {
  const _$_DetailsState({@required this.page, this.action})
      : assert(page != null);

  @override
  final PageState page;
  @override
  final DetailsAction action;

  @override
  String toString() {
    return 'DetailsState(page: $page, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailsState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(action);

  @override
  _$DetailsStateCopyWith<_DetailsState> get copyWith =>
      __$DetailsStateCopyWithImpl<_DetailsState>(this, _$identity);
}

abstract class _DetailsState implements DetailsState, PageHolder, ActionHolder {
  const factory _DetailsState(
      {@required PageState page, DetailsAction action}) = _$_DetailsState;

  @override
  PageState get page;
  @override
  DetailsAction get action;
  @override
  _$DetailsStateCopyWith<_DetailsState> get copyWith;
}

class _$PageStateTearOff {
  const _$PageStateTearOff();

// ignore: unused_element
  PageStateLoading loading() {
    return const PageStateLoading();
  }

// ignore: unused_element
  PageStateDone done(String id, String name) {
    return PageStateDone(
      id,
      name,
    );
  }
}

// ignore: unused_element
const $PageState = _$PageStateTearOff();

mixin _$PageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result done(String id, String name),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(PageStateLoading value),
    @required Result done(PageStateDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
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

@Implements(PageIncomplete)
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
    @required Result done(String id, String name),
  }) {
    assert(loading != null);
    assert(done != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
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
    @required Result done(PageStateDone value),
  }) {
    assert(loading != null);
    assert(done != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
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

abstract class PageStateLoading implements PageState, PageIncomplete {
  const factory PageStateLoading() = _$PageStateLoading;
}

abstract class $PageStateDoneCopyWith<$Res> {
  factory $PageStateDoneCopyWith(
          PageStateDone value, $Res Function(PageStateDone) then) =
      _$PageStateDoneCopyWithImpl<$Res>;
  $Res call({String id, String name});
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
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(PageStateDone(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$PageStateDone implements PageStateDone {
  const _$PageStateDone(this.id, this.name)
      : assert(id != null),
        assert(name != null);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'PageState.done(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageStateDone &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  $PageStateDoneCopyWith<PageStateDone> get copyWith =>
      _$PageStateDoneCopyWithImpl<PageStateDone>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result done(String id, String name),
  }) {
    assert(loading != null);
    assert(done != null);
    return done(id, name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result done(String id, String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(PageStateLoading value),
    @required Result done(PageStateDone value),
  }) {
    assert(loading != null);
    assert(done != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(PageStateLoading value),
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
  const factory PageStateDone(String id, String name) = _$PageStateDone;

  String get id;
  String get name;
  $PageStateDoneCopyWith<PageStateDone> get copyWith;
}

class _$DetailsActionTearOff {
  const _$DetailsActionTearOff();

// ignore: unused_element
  DetailsActionRefreshComplete refreshComplete() {
    return const DetailsActionRefreshComplete();
  }
}

// ignore: unused_element
const $DetailsAction = _$DetailsActionTearOff();

mixin _$DetailsAction {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refreshComplete(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refreshComplete(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refreshComplete(DetailsActionRefreshComplete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refreshComplete(DetailsActionRefreshComplete value),
    @required Result orElse(),
  });
}

abstract class $DetailsActionCopyWith<$Res> {
  factory $DetailsActionCopyWith(
          DetailsAction value, $Res Function(DetailsAction) then) =
      _$DetailsActionCopyWithImpl<$Res>;
}

class _$DetailsActionCopyWithImpl<$Res>
    implements $DetailsActionCopyWith<$Res> {
  _$DetailsActionCopyWithImpl(this._value, this._then);

  final DetailsAction _value;
  // ignore: unused_field
  final $Res Function(DetailsAction) _then;
}

abstract class $DetailsActionRefreshCompleteCopyWith<$Res> {
  factory $DetailsActionRefreshCompleteCopyWith(
          DetailsActionRefreshComplete value,
          $Res Function(DetailsActionRefreshComplete) then) =
      _$DetailsActionRefreshCompleteCopyWithImpl<$Res>;
}

class _$DetailsActionRefreshCompleteCopyWithImpl<$Res>
    extends _$DetailsActionCopyWithImpl<$Res>
    implements $DetailsActionRefreshCompleteCopyWith<$Res> {
  _$DetailsActionRefreshCompleteCopyWithImpl(
      DetailsActionRefreshComplete _value,
      $Res Function(DetailsActionRefreshComplete) _then)
      : super(_value, (v) => _then(v as DetailsActionRefreshComplete));

  @override
  DetailsActionRefreshComplete get _value =>
      super._value as DetailsActionRefreshComplete;
}

class _$DetailsActionRefreshComplete implements DetailsActionRefreshComplete {
  const _$DetailsActionRefreshComplete();

  @override
  String toString() {
    return 'DetailsAction.refreshComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsActionRefreshComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refreshComplete(),
  }) {
    assert(refreshComplete != null);
    return refreshComplete();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refreshComplete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshComplete != null) {
      return refreshComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refreshComplete(DetailsActionRefreshComplete value),
  }) {
    assert(refreshComplete != null);
    return refreshComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refreshComplete(DetailsActionRefreshComplete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshComplete != null) {
      return refreshComplete(this);
    }
    return orElse();
  }
}

abstract class DetailsActionRefreshComplete implements DetailsAction {
  const factory DetailsActionRefreshComplete() = _$DetailsActionRefreshComplete;
}

class _$DetailsEventTearOff {
  const _$DetailsEventTearOff();

// ignore: unused_element
  DetailsEventInit init() {
    return const DetailsEventInit();
  }

// ignore: unused_element
  DetailsEventRefresh refresh() {
    return const DetailsEventRefresh();
  }
}

// ignore: unused_element
const $DetailsEvent = _$DetailsEventTearOff();

mixin _$DetailsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result refresh(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result refresh(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(DetailsEventInit value),
    @required Result refresh(DetailsEventRefresh value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(DetailsEventInit value),
    Result refresh(DetailsEventRefresh value),
    @required Result orElse(),
  });
}

abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res>;
}

class _$DetailsEventCopyWithImpl<$Res> implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  final DetailsEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsEvent) _then;
}

abstract class $DetailsEventInitCopyWith<$Res> {
  factory $DetailsEventInitCopyWith(
          DetailsEventInit value, $Res Function(DetailsEventInit) then) =
      _$DetailsEventInitCopyWithImpl<$Res>;
}

class _$DetailsEventInitCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res>
    implements $DetailsEventInitCopyWith<$Res> {
  _$DetailsEventInitCopyWithImpl(
      DetailsEventInit _value, $Res Function(DetailsEventInit) _then)
      : super(_value, (v) => _then(v as DetailsEventInit));

  @override
  DetailsEventInit get _value => super._value as DetailsEventInit;
}

class _$DetailsEventInit implements DetailsEventInit {
  const _$DetailsEventInit();

  @override
  String toString() {
    return 'DetailsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result refresh(),
  }) {
    assert(init != null);
    assert(refresh != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result refresh(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(DetailsEventInit value),
    @required Result refresh(DetailsEventRefresh value),
  }) {
    assert(init != null);
    assert(refresh != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(DetailsEventInit value),
    Result refresh(DetailsEventRefresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class DetailsEventInit implements DetailsEvent {
  const factory DetailsEventInit() = _$DetailsEventInit;
}

abstract class $DetailsEventRefreshCopyWith<$Res> {
  factory $DetailsEventRefreshCopyWith(
          DetailsEventRefresh value, $Res Function(DetailsEventRefresh) then) =
      _$DetailsEventRefreshCopyWithImpl<$Res>;
}

class _$DetailsEventRefreshCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res>
    implements $DetailsEventRefreshCopyWith<$Res> {
  _$DetailsEventRefreshCopyWithImpl(
      DetailsEventRefresh _value, $Res Function(DetailsEventRefresh) _then)
      : super(_value, (v) => _then(v as DetailsEventRefresh));

  @override
  DetailsEventRefresh get _value => super._value as DetailsEventRefresh;
}

class _$DetailsEventRefresh implements DetailsEventRefresh {
  const _$DetailsEventRefresh();

  @override
  String toString() {
    return 'DetailsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DetailsEventRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result refresh(),
  }) {
    assert(init != null);
    assert(refresh != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result refresh(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(DetailsEventInit value),
    @required Result refresh(DetailsEventRefresh value),
  }) {
    assert(init != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(DetailsEventInit value),
    Result refresh(DetailsEventRefresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class DetailsEventRefresh implements DetailsEvent {
  const factory DetailsEventRefresh() = _$DetailsEventRefresh;
}
