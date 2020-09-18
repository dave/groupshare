import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';

Future<T> task<T>(
  BuildContext context,
  Future<T> Function() f, {
  bool enabled = true,
}) async {
  final state = context.bloc<AppBarCubit>().state;
  if (!enabled ||
      !(state is AppbarStateOffline || state is AppbarStateFailed)) {
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
}
