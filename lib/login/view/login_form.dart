import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/login/login.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/ui/handle.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (ex) {
            handle(context, ex);
          },
          done: () {
            Navigator.of(context).pushAndRemoveUntil(
              ShareListPage.route(),
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
          return TextField(
            key: const Key('login_email_input'),
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
          return TextField(
            key: const Key('login_code_input'),
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
                  key: const Key('login_email_button'),
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
                  key: const Key('login_code_button'),
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
