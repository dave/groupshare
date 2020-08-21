import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/_empty/empty.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';

class EmptyPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => EmptyPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Title'),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => EmptyCubit(
            RepositoryProvider.of<Data>(context),
          ),
          child: EmptyForm(),
        ),
      ),
    );
  }
}

class EmptyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmptyCubit, EmptyState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (ex, retryState) {
            handle(context, ex, [
              Button(
                "retry",
                () => context.bloc<EmptyCubit>().retry(retryState),
              )
            ]);
          },
          done: () {
            // ...
            //Navigator.of(context).pushAndRemoveUntil(
            //  ???.route(),
            //  (route) => false,
            //);
          },
          orElse: () => true,
        );
      },
      builder: (context, state) {
        return Align(
          alignment: const Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.maybeWhen(
              form: (status, name) {
                return [
                  _FooInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _SubmitButton(),
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

final _fooInputKey = GlobalKey();

class _FooInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmptyCubit, EmptyState>(
      buildWhen: (previous, current) {
        if (current is EmptyStateForm) {
          if (previous is EmptyStateForm) {
            return previous.foo != current.foo;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is EmptyStateForm) {
          return TextFormField(
            key: _fooInputKey,
            initialValue: state.foo.value,
            onChanged: (value) {
              context.bloc<EmptyCubit>().fooChanged(value);
            },
            decoration: InputDecoration(
              labelText: 'foo',
              errorText: state.foo.invalid ? 'invalid foo' : null,
            ),
          );
        } else {
          return null;
        }
      },
    );
  }
}

final _submitButtonKey = GlobalKey();

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmptyCubit, EmptyState>(
      buildWhen: (previous, current) {
        if (current is EmptyStateForm) {
          if (previous is EmptyStateForm) {
            return previous.status != current.status;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is EmptyStateForm) {
          return state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : RaisedButton(
                  key: _submitButtonKey,
                  child: const Text('Submit'),
                  onPressed: () {
                    if (state.status.isValidated) {
                      context.bloc<EmptyCubit>().submit();
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
