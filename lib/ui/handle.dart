import 'package:flutter/material.dart';
import 'package:groupshare/core/excpetions/exceptions.dart';

class Button {
  final String message;
  final Function() press;
  Button(this.message, [this.press]);
}

Future<void> handle(
  BuildContext context,
  dynamic ex, [
  List<Button> buttons,
]) async {
  var message = "Server error";
  print('ex.runtimeType: ${ex.runtimeType}');
  if (ex is UserException) {
    message = ex.message;
  } else if (ex is Error) {
    throw ex;
  }

  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
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
          if (buttons == null || buttons.length == 0)
            FlatButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          for (var b in buttons ?? [])
            FlatButton(
              child: Text(b.message),
              onPressed: () {
                Navigator.of(context).pop();
                if (b.press != null) {
                  b.press();
                }
              },
            ),
        ],
      );
    },
  );
}
