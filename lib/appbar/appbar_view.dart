import 'package:api_repository/api_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar_bloc.dart';
import 'package:groupshare/auth/auth.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/ui/spinner.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String _title;
  AppBarWidget(String title) : _title = title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBarCubit(
        RepositoryProvider.of<Api>(context),
      ),
      child: AppBarWidgetContent(_title),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class AppBarWidgetContent extends StatelessWidget {
  final String _title;
  AppBarWidgetContent(String title) : _title = title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_title),
      actions: [
        BlocBuilder<AppBarCubit, AppBarState>(
          builder: (context, state) {
            return PopupMenuButton(
              icon: state.when(
                saved: () => Icon(Icons.cloud_queue), // cloud_done
                connecting: () => Spinner(icon: Icons.sync), // history
                waiting: () => Icon(Icons.sync_problem), // Icons.cached
                offline: () => Icon(Icons.cloud_off),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    title: Text(state.when(
                      saved: () => "Saved",
                      connecting: () => "Saving",
                      waiting: () => "Retrying",
                      offline: () => "Offline",
                    )),
                  ),
                ),
              ],
            );
          },
        ),
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return PopupMenuButton(
              icon: Icon(Icons.settings),
              itemBuilder: (context) => [
                if (state is AuthStateDone || state is AuthStateAuth)
                  PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.group),
                      title: Text('Log off'),
                      onTap: () async {
                        await context.bloc<AuthCubit>().logoff();
                        Navigator.of(context).pushAndRemoveUntil(
                          LoginPage.route(),
                          (route) => false,
                        );
                      },
                    ),
                  ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.delete_forever),
                    title: Text('Clear app storage'),
                    onTap: () async {
                      await context.bloc<AppBarCubit>().clear();
                      Navigator.of(context).pushAndRemoveUntil(
                        LoginPage.route(),
                        (route) => false,
                      );
                    },
                  ),
                ),
//                  PopupMenuItem(
//                    child: ListTile(
//                      leading: Icon(Icons.help_outline),
//                      title: Text('Help'),
//                    ),
//                  )
              ],
            );
          },
        ),
      ],
    );
  }
}
