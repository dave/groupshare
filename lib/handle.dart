import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/auth/auth.dart';

Future<void> handle(
  BuildContext context,
  dynamic ex, [
  List<Button> buttons = const [],
]) async {
  if (ex == null) {
    return;
  }

  var message = "Server error";
  if (ex is UserException) {
    message = ex.message;
  } else if (ex is Error) {
    throw ex;
  }

  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return BlocBuilder<AuthCubit, AuthState>(
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
              if (state is AuthStateDone || state is AuthStateAuth)
                FlatButton(
                  child: Text("Log off"),
                  onPressed: () async {
                    await context.bloc<AuthCubit>().logoff();
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
