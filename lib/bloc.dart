
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';

Future<T> warning<T>(BuildContext context, FutureOr<T> Function() f, {bool enabled = true}) async {
  if (!enabled) {
    return await f();
  }
  final state = context.bloc<AppBarBloc>().state;
  final offline = state is AppbarStateOffline || state is AppbarStateFailed;

  if (!offline) {
    return await f();
  }

  final tryAnyway = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Device offline'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text("You need to be online to do this."),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Try anyway"),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          FlatButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      );
    },
  );
  if (tryAnyway) {
    return await f();
  }

  return null;
}

abstract class ExtendedBloc<Event, State> extends Bloc<Event, State> {
  ExtendedBloc(State initialState) : super(initialState) {
    onChange(Change<State>(currentState: null, nextState: initialState));
  }
}

