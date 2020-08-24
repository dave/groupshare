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
        state.maybeWhen(
          error: (ex, retryState) {
            handle(context, ex, [
              Button(
                "Retry",
                () => context.bloc<AddCubit>().retry(retryState),
              )
            ]);
          },
          done: () {
            Navigator.of(context).pushAndRemoveUntil(
              ListPage.route(),
              (route) => false,
            );
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
                  _NameInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _AddButton(),
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

class _NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddCubit, AddState>(
      buildWhen: (previous, current) {
        if (current is AddStateForm) {
          if (previous is AddStateForm) {
            return previous.name != current.name;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is AddStateForm) {
          return state.status.isSubmissionInProgress
              ? CircularProgressIndicator()
              : TextFormField(
                  key: Keys.name,
                  initialValue: state.name.value,
                  onChanged: (email) {
                    context.bloc<AddCubit>().nameChanged(email);
                  },
                  decoration: InputDecoration(
                    labelText: 'name',
                    errorText: state.name.invalid ? 'invalid name' : null,
                  ),
                );
        } else {
          return null;
        }
      },
    );
  }
}

class _AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddCubit, AddState>(
      buildWhen: (previous, current) {
        if (current is AddStateForm) {
          if (previous is AddStateForm) {
            return previous.status != current.status;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is AddStateForm) {
          return state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : RaisedButton(
                  key: Keys.submit,
                  child: const Text('Add'),
                  onPressed: () {
                    if (state.status.isValidated) {
                      context.bloc<AddCubit>().add();
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

class Keys {
  static final name = UniqueKey();
  static final submit = UniqueKey();
//  static final name = Key("addName");
//  static final submit = Key("addSubmit");
}
