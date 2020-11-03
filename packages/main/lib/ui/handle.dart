import 'dart:async';

import 'package:auth/auth.dart';
import 'package:exceptions/exceptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/app/app.dart';
import 'package:main/login/login.dart';
import 'package:main/app.dart';
import 'package:main/share/list/list.dart';

Future<T> handle<T>(
  BuildContext context,
  dynamic ex,
  dynamic stack, {
  List<Button> buttons = const [],
  bool ok = false,
  FutureOr<T> Function() back,
  bool home = false,
  FutureOr<T> Function() retry,
  bool logoff = false,
}) async {
  if (ex == null) {
    return null;
  }
  var message = "We got an error.";
  if (ex is UserException) {
    message = ex.toString();
  }

  if (PRINT_ERRORS) {
    print("handling $ex\n$stack");
  }

  T retryResult;
  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          final showBack = back != null;
          final showHome = home;
          final showRetry = retry != null;
          final showLogoff = logoff &&
              (state is AppStateDone ||
                  (state is AppStateLogin && state.auth) ||
                  (state is AppStateLoading &&
                      (state.status == Status.Auth ||
                          state.status == Status.Done)));
          final showReset = logoff && !showHome && !showBack && !showLogoff;

          final showOk = ok ||
              (buttons.length == 0 &&
                  !showHome &&
                  !showRetry &&
                  !showBack &&
                  !showLogoff);

          return AlertDialog(
            title: Text('Error'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(message),
                ],
              ),
            ),
            actions: <Widget>[
              if (showOk)
                FlatButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              if (showBack)
                FlatButton(
                  child: Text("Back"),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    await back();
                  },
                ),
              if (showHome)
                FlatButton(
                  child: Text("Home"),
                  onPressed: () => Navigator.of(context).popUntil(
                    ModalRoute.withName(ListPage.routeName),
                  ),
                ),
              if (showRetry)
                FlatButton(
                  child: Text("Retry"),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    retryResult = await retry();
                  },
                ),
              for (var b in buttons)
                FlatButton(
                  child: Text(b.message),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (b.press != null) {
                      b.press();
                    }
                  },
                ),
              if (showLogoff)
                FlatButton(
                  child: Text("Log off"),
                  onPressed: () async {
                    context.bloc<AppBloc>().add(AppEvent.logoff());
                    Navigator.of(context).pushAndRemoveUntil(
                      LoginPage.route(),
                      (route) => false,
                    );
                  },
                ),
              if (showReset)
                FlatButton(
                  child: Text("Reset app"),
                  onPressed: () async {
                    context.bloc<AppBloc>().add(AppEvent.reset());
                    Navigator.of(context).pushAndRemoveUntil(
                      LoginPage.route(),
                      (route) => false,
                    );
                  },
                ),
            ],
          );
        },
      );
    },
  );
  return retryResult;
}

class Button {
  final String message;
  final Function() press;

  Button(this.message, [this.press]);
}
