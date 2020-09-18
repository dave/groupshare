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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Groupshare',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocConsumer<AppCubit, AppState>(
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
            offline: (state) {
              handle(
                context,
                UserException("It looks like you're offline. Retry?"),
                null,
                buttons: [
                  Button(
                    "retry",
                    () => context.bloc<AppCubit>().init(),
                  ),
                ],
              );
            },
            error: (state) {
              handle(
                context,
                state.error,
                state.stack,
                buttons: [
                  Button(
                    "retry",
                    () => context.bloc<AppCubit>().init(),
                  ),
                ],
              );
            },
          );
        },
        builder: (context, state) {
          return state.map(
            loading: (state) => Scaffold(
              body: Center(child: Text("loading... (2)")),
            ),
            login: (state) => Scaffold(
              body: Center(child: Text("login...")),
            ),
            done: (state) => Scaffold(
              body: Center(child: Text("done...")),
            ),
            error: (state) => Scaffold(
              body: Center(child: Text("error...")),
            ),
            offline: (state) => Scaffold(
              body: Center(child: Text("Offline.")),
            ),
          );
        },
      ),
    );
  }
}
