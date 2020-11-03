import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/appbar/appbar.dart';

Future<bool> warning(BuildContext context, FutureOr<void> Function() f, {bool enabled = true}) async {
  if (!enabled) {
    await f();
    return true;
  }
  final state = context.bloc<AppBarBloc>().state;
  final offline = state is AppbarStateOffline || state is AppbarStateFailed;

  if (!offline) {
    await f();
    return true;
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
    await f();
    return true;
  }

  return false;
}
