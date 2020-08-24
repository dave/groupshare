import 'package:auth_repository/auth_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/share/list/list.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Login'),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => LoginCubit(
            RepositoryProvider.of<Auth>(context),
            RepositoryProvider.of<Data>(context),
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
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (ex, retryState) {
            handle(context, ex, [
              Button(
                "Retry",
                () => context.bloc<LoginCubit>().retry(retryState),
              ),
            ]);
          },
          done: () {
            Navigator.of(context).pushAndRemoveUntil(
              ListPage.route(),
              (route) => false,
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Align(
          alignment: const Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.maybeWhen(
              email: (status, email) {
                return [
                  _EmailInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _EmailButton(),
                ];
              },
              code: (status, email) {
                return [
                  _CodeInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _CodeButton(),
                ];
              },
              orElse: () => [],
            ),
          ),
        );
      },
    );
  }
}

final _emailInputKey = GlobalKey();

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        if (current is LoginStateEmail) {
          if (previous is LoginStateEmail) {
            return previous.email != current.email;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is LoginStateEmail) {
          return TextFormField(
            key: _emailInputKey,
            initialValue: state.email.value,
            onChanged: (email) {
              context.bloc<LoginCubit>().emailChanged(email);
            },
            decoration: InputDecoration(
              labelText: 'email',
              errorText: state.email.invalid ? 'invalid email' : null,
            ),
          );
        } else {
          return null;
        }
      },
    );
  }
}

final _codeInputKey = GlobalKey();

class _CodeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        if (current is LoginStateCode) {
          if (previous is LoginStateCode) {
            return previous.code != current.code;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is LoginStateCode) {
          return TextFormField(
            key: _codeInputKey,
            initialValue: state.code.value,
            onChanged: (code) {
              context.bloc<LoginCubit>().codeChanged(code);
            },
            decoration: InputDecoration(
              labelText: 'code',
              errorText: state.code.invalid ? 'invalid code' : null,
            ),
          );
        } else {
          return null;
        }
      },
    );
  }
}

final _emailButtonKey = GlobalKey();

class _EmailButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        if (current is LoginStateEmail) {
          if (previous is LoginStateEmail) {
            return previous.status != current.status;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is LoginStateEmail) {
          return state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : RaisedButton(
                  key: _emailButtonKey,
                  child: const Text('Login email'),
                  onPressed: () {
                    if (state.status.isValidated) {
                      context.bloc<LoginCubit>().sendLogin();
                    }
                  },
                );
        } else {
          return null;
        }
      },
    );
  }
}

final _codeButtonKey = GlobalKey();

class _CodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        if (current is LoginStateCode) {
          if (previous is LoginStateCode) {
            return previous.status != current.status;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is LoginStateCode) {
          return state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : RaisedButton(
                  key: _codeButtonKey,
                  child: const Text('Login code'),
                  onPressed: () {
                    if (state.status.isValidated) {
                      context.bloc<LoginCubit>().sendCode();
                    }
                  },
                );
        } else {
          return null;
        }
      },
    );
  }
}
