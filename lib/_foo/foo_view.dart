import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/_foo/foo.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';

class FooPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => FooPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Title'),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => FooCubit(
            RepositoryProvider.of<Data>(context),
          ),
          child: FooForm(),
        ),
      ),
    );
  }
}

class FooForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final global = GlobalKey();
    return BlocConsumer<FooCubit, FooState>(
      key: global,
      listener: (context, state) {
        state.page.map(
          initial: (state) {},
          form: (state) {},
          error: (state) {
            handle(
              context,
              state.error,
              state.stack,
              buttons: [
                Button(
                  "Retry",
                  () => context.bloc<FooCubit>().retry(state.retry),
                )
              ],
            );
          },
          done: (state) => true,
        );
      },
      builder: (context, state) {
        return Align(
          alignment: const Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.page.map(
              initial: (state) => [],
              form: (state) {
                return [
                  _NameInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _SubmitButton(),
                ];
              },
              error: (state) => [],
              done: (state) => [],
            ),
          ),
        );
      },
    );
  }
}

class _NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FooCubit, FooState>(
      buildWhen: (previous, current) {
        return previous.form.name != current.form.name;
      },
      builder: (context, state) {
        return TextFormField(
          autofocus: true,
          key: Keys.name,
          initialValue: state.form.name.value,
          onChanged: (value) {
            context.bloc<FooCubit>().nameChanged(value);
          },
          decoration: InputDecoration(
            labelText: 'name',
            errorText: state.form.name.invalid ? 'invalid name' : null,
          ),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FooCubit, FooState>(
      buildWhen: (previous, current) {
        return previous.form.status != current.form.status;
      },
      builder: (context, state) {
        return state.form.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : RaisedButton(
                key: Keys.submit,
                child: const Text('Submit'),
                onPressed: () {
                  if (state.form.status.isValidated) {
                    context.bloc<FooCubit>().submit();
                  }
                },
              );
      },
    );
  }
}

class Keys {
  static final name = UniqueKey();
  static final submit = UniqueKey();
}
