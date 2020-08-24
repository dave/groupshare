import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:groupshare/share/list/list.dart';

class EditPage extends StatelessWidget {
  static Route route(String id) {
    return MaterialPageRoute<void>(builder: (_) => EditPage(id: id));
  }

  final String _id;
  EditPage({
    Key key,
    @required String id,
  })  : _id = id,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Title'),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => EditCubit(
            _id,
            RepositoryProvider.of<Data>(context),
          )..init(),
          child: EditForm(),
        ),
      ),
    );
  }
}

class EditForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditCubit, EditState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (id, ex, retryState) {
            handle(context, ex, [
              Button(
                "Retry",
                () => context.bloc<EditCubit>().retry(retryState),
              )
            ]);
          },
          done: (id) {
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
            children: state.map(
              initial: (_) => [],
              offline: (_) => [
                Center(
                  child: Text(
                    "Offline.",
                  ),
                )
              ],
              loading: (_) => [
                Center(
                  child: CircularProgressIndicator(),
                )
              ],
              error: (_) => [],
              done: (_) => [],
              form: (_) {
                return [
                  _NameInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _SubmitButton(),
                ];
              },
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
    return BlocBuilder<EditCubit, EditState>(
      buildWhen: (previous, current) {
        if (current is EditStateForm) {
          if (previous is EditStateForm) {
            return previous.name != current.name;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is EditStateForm) {
          return TextFormField(
            key: Keys.name,
            initialValue: state.name.value,
            onChanged: (value) {
              context.bloc<EditCubit>().nameChanged(value);
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

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditCubit, EditState>(
      buildWhen: (previous, current) {
        if (current is EditStateForm) {
          if (previous is EditStateForm) {
            return previous.status != current.status;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is EditStateForm) {
          return state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : RaisedButton(
                  key: Keys.submit,
                  child: const Text('Submit'),
                  onPressed: () {
                    if (state.status.isValidated) {
                      context.bloc<EditCubit>().submit();
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
}
