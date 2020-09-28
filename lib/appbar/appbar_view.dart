import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/app/app.dart';
import 'package:groupshare/appbar/appbar_bloc.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/task.dart';
import 'package:groupshare/ui/spinner.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String _title;

  AppBarWidget(this._title);

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    final global = GlobalKey();
    return AppBar(
      key: global,
      title: Text(_title),
      actions: [
        BlocBuilder<AppBarCubit, AppBarState>(
          builder: (context, state) {
            return IconButton(
              icon: state.when(
                saved: () => Icon(Icons.cloud_queue),
                connecting: () => Spinner(icon: Icons.sync),
                waiting: () => Icon(Icons.timer),
                offline: () => Icon(Icons.cloud_off),
                failed: () => Icon(Icons.cloud_off),
              ),
              onPressed: () => _showConnectionPopup(context),
            );
          },
        ),
        BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return PopupMenuButton(
              icon: Icon(Icons.settings),
              itemBuilder: (context) => [
                if (state is AppStateDone ||
                    (state is AppStateLogin && state.auth))
                  PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.group),
                      title: Text('Log off'),
                      onTap: () async {
                        await task(
                          context,
                          global,
                          () async {
                            await context.bloc<AppCubit>().logoff();
                            Navigator.of(context).pushAndRemoveUntil(
                              LoginPage.route(),
                              (route) => false,
                            );
                          },
                          offlineWarning: false,
                        );
                      },
                    ),
                  ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.delete_forever),
                    title: Text('Reset app storage'),
                    onTap: () async {
                      await task(
                        context,
                        global,
                        () async {
                          await context.bloc<AppCubit>().reset();
                          Navigator.of(context).pushAndRemoveUntil(
                            LoginPage.route(),
                            (route) => false,
                          );
                        },
                        offlineWarning: false,
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Future<void> _showConnectionPopup(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return BlocBuilder<AppBarCubit, AppBarState>(
          builder: (context, state) {
            return AlertDialog(
              title: Text(state.when(
                saved: () => "Connection",
                connecting: () => "Connection",
                waiting: () => "Connection",
                offline: () => "Offline",
                failed: () => "Offline",
              )),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(state.when(
                      saved: () => "Connection OK",
                      connecting: () => "Connecting...",
                      waiting: () => "Waiting...",
                      offline: () => "The internet connection offline",
                      failed: () => "We got an error, so went offline",
                    )),
                  ],
                ),
              ),
              actions: <Widget>[
                if (state is AppbarStateOffline || state is AppbarStateFailed)
                  FlatButton(
                    child: Text("Reconnect"),
                    onPressed: () async {
                      context.bloc<AppBarCubit>().retry();
                    },
                  ),
                if (state is AppbarStateSaved)
                  FlatButton(
                    child: Text("Go offline"),
                    onPressed: () async {
                      context.bloc<AppBarCubit>().goOffline();
                    },
                  ),
                FlatButton(
                  child: Text("OK"),
                  onPressed: () async {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
