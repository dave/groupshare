import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/list/list.dart';

class AddPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => AddPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Add'),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => AddCubit(
            RepositoryProvider.of<Data>(context),
          ),
          child: AddForm(),
        ),
      ),
    );
  }
}

class AddForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddCubit, AddState>(
      listener: (context, state) {
        state.page.map(
          form: (state) => true,
          error: (state) {
            handle(
              context,
              state.error,
              state.stack,
              buttons: [
                Button(
                  "Retry",
                  () => context.bloc<AddCubit>().retry(state.retryState),
                )
              ],
            );
          },
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
              form: (state) {
                return [
                  _NameInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _AddButton(),
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
    return BlocBuilder<AddCubit, AddState>(
      buildWhen: (previous, current) {
        return previous.form.name != current.form.name;
      },
      builder: (context, state) {
        return state.form.status.isSubmissionInProgress
            ? CircularProgressIndicator()
            : TextFormField(
                autofocus: true,
                key: Keys.name,
                initialValue: state.form.name.value,
                onChanged: (email) {
                  context.bloc<AddCubit>().nameChanged(email);
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

class _AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddCubit, AddState>(
      buildWhen: (previous, current) {
        return previous.form.status != current.form.status;
      },
      builder: (context, state) {
        return state.form.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : RaisedButton(
                key: Keys.submit,
                child: const Text('Add'),
                onPressed: () {
                  if (state.form.status.isValidated) {
                    context.bloc<AddCubit>().add();
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
