import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/app/app.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/share/list/list.dart';

class Complete {}

class Incomplete {}

class ErrorObserver extends BlocObserver {
  final GlobalKey<NavigatorState> _navigator;

  ErrorObserver(this._navigator);

  bool _complete = false;

  @override
  void onChange(Cubit cubit, Change change) {
    if (cubit is! ExtendedBloc) {
      throw Exception("All blocs should be ExtendedBloc");
    }
    if (change.nextState is Complete) {
      _complete = true;
    } else if (change.nextState is Incomplete) {
      _complete = false;
    }
    super.onChange(cubit, change);
  }

  @override
  void onError(Cubit cubit, dynamic ex, StackTrace stack) {
    Function() retry;
    if (ex is UserException && cubit is Bloc && ex.retry != null) {
      retry = () => cubit.add(ex.retry);
    }
    if (_complete) {
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
}

abstract class ExtendedBloc<Event, State> extends Bloc<Event, State> {
  ExtendedBloc(State initialState) : super(initialState) {
    onChange(Change<State>(currentState: null, nextState: initialState));
  }
}
