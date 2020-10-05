import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/ui/handle.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/share/list/list.dart';

class Complete {}

class Incomplete {}

class ErrorObserver extends BlocObserver with NavigatorObserver {
  final GlobalKey<NavigatorState> _navigator;
  Map<Route<dynamic>, bool> _complete = {};
  List<Route<dynamic>> _history = <Route<dynamic>>[];

  ErrorObserver(this._navigator);

  @override
  void onChange(Cubit cubit, Change change) {
    if (cubit is! ExtendedBloc) {
      throw Exception("All blocs should be ExtendedBloc");
    }
    if (change.nextState is Complete) {
      _complete[_history.last] = true;
    } else if (change.nextState is Incomplete) {
      _complete[_history.last] = false;
    }
    super.onChange(cubit, change);
  }

  @override
  void onError(Cubit cubit, dynamic ex, StackTrace stack) {
    Function() retry;
    if (ex is UserException && cubit is Bloc && ex.retry != null) {
      retry = () => cubit.add(ex.retry);
    }
    if (_complete[_history.last] ?? false) {
      // If the UI is in a complete state, we should be able to just show the
      // OK button, so the user can retry the action if they want.
      handle(
        _navigator.currentState.overlay.context,
        ex,
        stack,
        retry: retry,
      );
    } else {
      // If the UI is in an incomplete state (e.g. a loading spinner etc.), the
      // error popup in this state should not have an "ok" button to dismiss
      // it, since the UI below is not complete. If an error is shown in this
      // state, the error dialog should include a button to go home / log off.
      final homeButtonValid = !(cubit is ListBloc || cubit is LoginBloc);
      handle(
        _navigator.currentState.overlay.context,
        ex,
        stack,
        back: _navigator.currentState.canPop()
            ? _navigator.currentState.pop
            : null,
        retry: retry,
        home: homeButtonValid,
        logoff: !homeButtonValid,
      );
    }

    super.onError(cubit, ex, stack);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    _complete.remove(_history.last);
    _history.removeLast();
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    _history.add(route);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic> previousRoute) {
    _complete.remove(route);
    _history.remove(route);
  }

  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    int oldRouteIndex = _history.indexOf(oldRoute);
    _complete.remove(oldRoute);
    _history.replaceRange(oldRouteIndex, oldRouteIndex+1, [newRoute]);
  }
}
