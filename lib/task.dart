import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';

Future<T> task<T>(
  BuildContext context,
  GlobalKey global,
  Future<T> Function() f, {
  bool enabled = true,
  List<Button> buttons = const [],
}) async {
  try {
    final state = context.bloc<AppBarCubit>().state;
    final offline = state is AppbarStateOffline || state is AppbarStateFailed;
    if (!enabled || !offline) {
      return await f();
    }
    final attempt = await showDialog<bool>(
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
    if (attempt) {
      return await f();
    }
    return null;
  } catch (ex, stack) {
    handle(global.currentContext, ex, stack, buttons: buttons);
  }
}
