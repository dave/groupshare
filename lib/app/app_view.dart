import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/app/app.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/share/list/list.dart';

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      listener: (context, state) {
        state.map(
          loading: (state) {},
          login: (state) {
            Navigator.of(context).pushAndRemoveUntil<void>(
              LoginPage.route(),
              (route) => false,
            );
          },
          done: (state) {
            Navigator.of(context).pushAndRemoveUntil<void>(
              ListPage.route(),
              (route) => false,
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: state.map(
            loading: (state) => Center(child: CircularProgressIndicator()),
            login: (state) => Container(),
            done: (state) => Container(),
          ),
        );
      },
    );
  }
}
