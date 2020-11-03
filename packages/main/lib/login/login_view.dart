import 'package:auth/auth.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:main/appbar/appbar.dart';
import 'package:main/bloc.dart';
import 'package:main/login/login.dart';
import 'package:main/share/list/list.dart';
import 'package:main/ui/warning.dart';

//import 'package:formz/formz.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Login'),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => LoginBloc(
            RepositoryProvider.of<Auth>(context),
          ),
          child: LoginForm(),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) => current.map(
        email: (_) => false,
        code: (_) => false,
        done: (_) => true,
      ),
      listener: (context, state) {
        state.maybeMap(
          orElse: () => true,
          done: (state) {
            Navigator.of(context).pushAndRemoveUntil(
              ListPage.route(),
              (route) => false,
            );
          },
        );
      },
      buildWhen: (previous, current) => current.map(
        email: (_) => true,
        code: (_) => true,
        done: (_) => false,
      ),
      builder: (context, state) {
        return Align(
          alignment: Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.maybeMap(
              orElse: () => [],
              email: (state) {
                return [
                  _EmailInput(),
                  Padding(padding: EdgeInsets.all(12)),
                  _EmailButton(),
                ];
              },
              code: (state) {
                return [
                  _CodeInput(),
                  Padding(padding: EdgeInsets.all(12)),
                  _CodeButton(),
                ];
              },
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
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: stateIs<LoginStateEmail>((p, c) => p.email != c.email),
      builder: (context, state) {
        return state is LoginStateEmail
            ? TextFormField(
                autofocus: true,
                key: Keys.email,
                initialValue: state.email.value,
                onChanged: (email) {
                  context.bloc<LoginBloc>().add(LoginEvent.changeEmail(email));
                },
                decoration: InputDecoration(
                  labelText: 'email',
                  errorText: state.email.invalid ? 'invalid email' : null,
                ),
              )
            : null;
      },
    );
  }
}

class _CodeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: stateIs<LoginStateCode>((p, c) => p.code != c.code),
      builder: (context, state) {
        return state is LoginStateCode
            ? TextFormField(
                autofocus: true,
                key: Keys.code,
                initialValue: state.code.value,
                onChanged: (code) {
                  context.bloc<LoginBloc>().add(LoginEvent.changeCode(code));
                },
                decoration: InputDecoration(
                  labelText: 'code',
                  errorText: state.code.invalid ? 'invalid code' : null,
                ),
              )
            : null;
      },
    );
  }
}

class _EmailButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: stateIs<LoginStateEmail>((p, c) => p.status != c.status),
      builder: (context, state) {
        return state is LoginStateEmail
            ? state.status.isSubmissionInProgress
                ? CircularProgressIndicator()
                : RaisedButton(
                    key: Keys.emailSubmit,
                    child: Text('Login email'),
                    onPressed: () async {
                      if (state.status.isValidated) {
                        warning(
                          context,
                          () => context
                              .bloc<LoginBloc>()
                              .add(LoginEvent.submitEmail()),
                        );
                      }
                    },
                  )
            : null;
      },
    );
  }
}

class _CodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: stateIs<LoginStateCode>((p, c) => p.status != c.status),
      builder: (context, state) {
        return state is LoginStateCode
            ? state.status.isSubmissionInProgress
                ? CircularProgressIndicator()
                : RaisedButton(
                    key: Keys.codeSubmit,
                    child: Text('Login code'),
                    onPressed: () async {
                      if (state.status.isValidated) {
                        warning(
                          context,
                          () => context.bloc<LoginBloc>().add(
                                LoginEvent.submitCode(),
                              ),
                        );
                      }
                    },
                  )
            : null;
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
