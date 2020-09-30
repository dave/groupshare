import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';

Future<T> task<T>(
  BuildContext context,
  GlobalKey global,
  FutureOr<T> Function() f, {
  bool offlineWarning = true,
  List<Button> buttons = const [],
  bool ok = false,
  bool home = false,
  bool retry = false,
  bool logoff = false,
}) async {
  Future<T> tryf() async {
    try {
      return await f();
    } catch (ex, stack) {
      return await handle(
        global != null ? global.currentContext : context,
        ex,
        stack,
        buttons: buttons,
        ok: ok,
        home: home,
        retry: retry ? tryf : null,
        logoff: logoff,
      );
    }
  }

  if (!offlineWarning) {
    return await tryf();
  }

  final state = context.bloc<AppBarBloc>().state;
  final offline = state is AppbarStateOffline || state is AppbarStateFailed;

  if (!offline) {
    return await tryf();
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
    return await tryf();
  }

  return null;
}
