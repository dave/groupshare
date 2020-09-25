import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/app/app.dart';
import 'package:groupshare/login/login.dart';

Future<void> handle(
  BuildContext context,
  dynamic ex,
  dynamic stack, {
  List<Button> buttons = const [],
}) async {
  if (ex == null) {
    return;
  }
  var message = "$ex";
  print("handling $ex\n$stack");

  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
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
              if (buttons.length == 0)
                FlatButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
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
              if (state is AppStateDone ||
                  (state is AppStateLogin && state.auth))
                FlatButton(
                  child: Text("Log off"),
                  onPressed: () async {
                    await context.bloc<AppCubit>().logoff();
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
}

class Button {
  final String message;
  final Function() press;

  Button(this.message, [this.press]);
}
