import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/app/app.dart';
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
      listenWhen: (previous, current) => current.map(
        loading: (_) => false,
        login: (_) => true,
        done: (_) => true,
      ),
      listener: (context, state) {
        state.maybeMap(
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
          orElse: () {},
        );
      },
      buildWhen: (previous, current) => current.map(
        loading: (_) => true,
        login: (_) => false,
        done: (_) => false,
      ),
      builder: (context, state) {
        return Scaffold(
          body: state.maybeMap(
            loading: (state) => Center(child: CircularProgressIndicator()),
            orElse: () => Container(),
          ),
        );
      },
    );
  }
}
