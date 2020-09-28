import 'package:auth_repository/auth_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/task.dart';

//import 'package:formz/formz.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    final global = GlobalKey();
    return Scaffold(
      key: global,
      appBar: AppBarWidget('Login'),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            final cubit = LoginCubit(
              RepositoryProvider.of<Auth>(context),
            );
            task(
              context,
              null,
              cubit.init,
              offlineWarning: false,
              retry: true,
            );
            return cubit;
          },
          child: LoginForm(global),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final GlobalKey _global;

  LoginForm(this._global);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.page.map(
          email: (state) => true,
          code: (state) => true,
          done: (state) {
            Navigator.of(context).pushAndRemoveUntil(
              ListPage.route(),
              (route) => false,
            );
          },
        );
      },
      builder: (context, state) {
        return Align(
          alignment: const Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.page.map(
              email: (state) {
                return [
                  _EmailInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _EmailButton(_global),
                ];
              },
              code: (state) {
                return [
                  _CodeInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _CodeButton(_global),
                ];
              },
              done: (state) => [],
            ),
          ),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        return previous.email.email != current.email.email;
      },
      builder: (context, state) {
        return TextFormField(
          autofocus: true,
          key: Keys.email,
          initialValue: state.email.email.value,
          onChanged: (email) {
            context.bloc<LoginCubit>().emailChanged(email);
          },
          decoration: InputDecoration(
            labelText: 'email',
            errorText: state.email.email.invalid ? 'invalid email' : null,
          ),
        );
      },
    );
  }
}

class _CodeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        return previous.code.code != current.code.code;
      },
      builder: (context, state) {
        return TextFormField(
          autofocus: true,
          key: Keys.code,
          initialValue: state.code.code.value,
          onChanged: (code) {
            context.bloc<LoginCubit>().codeChanged(code);
          },
          decoration: InputDecoration(
            labelText: 'code',
            errorText: state.code.code.invalid ? 'invalid code' : null,
          ),
        );
      },
    );
  }
}

class _EmailButton extends StatelessWidget {
  final GlobalKey _global;

  _EmailButton(this._global);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        return previous.email.status != current.email.status;
      },
      builder: (context, state) {
        return state.email.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : RaisedButton(
                key: Keys.emailSubmit,
                child: const Text('Login email'),
                onPressed: () async {
                  if (state.email.status.isValidated) {
                    await task(
                      context,
                      _global,
                      context.bloc<LoginCubit>().sendLogin,
                    );
                  }
                },
              );
      },
    );
  }
}

class _CodeButton extends StatelessWidget {
  final GlobalKey _global;

  _CodeButton(this._global);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        return previous.code.status != current.code.status;
      },
      builder: (context, state) {
        return state.code.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : RaisedButton(
                key: Keys.codeSubmit,
                child: const Text('Login code'),
                onPressed: () async {
                  if (state.code.status.isValidated) {
                    await task(
                      context,
                      _global,
                      context.bloc<LoginCubit>().sendCode,
                    );
                  }
                },
              );
      },
    );
  }
}

class Keys {
  static final email = UniqueKey();
  static final code = UniqueKey();
  static final emailSubmit = UniqueKey();
  static final codeSubmit = UniqueKey();
}
