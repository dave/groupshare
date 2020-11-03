import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/app/app.dart';
import 'package:main/login/login.dart';
import 'package:main/share/list/list.dart';

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
          orElse: () {},
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
      buildWhen: (previous, current) => current.map(
        loading: (_) => true,
        login: (_) => false,
        done: (_) => false,
      ),
      builder: (context, state) {
        return Scaffold(
          body: state.maybeMap(
            orElse: () => Container(),
            loading: (state) => Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
