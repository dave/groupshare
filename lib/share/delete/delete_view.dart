import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/delete/delete.dart';

class DeletePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => DeletePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Delete'),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => DeleteCubit(
            RepositoryProvider.of<Data>(context),
          ),
          child: DeleteForm(),
        ),
      ),
    );
  }
}

class DeleteForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteCubit, DeleteState>(
      listener: (context, state) {
        state.map(
          initial: (state) => true,
          form: (state) => true,
          error: (state) {
            handle(
              context,
              state.error,
              state.stack,
              buttons: [
                Button(
                  "Retry",
                  () => context.bloc<DeleteCubit>().retry(state.retryState),
                )
              ],
            );
          },
          done: (state) => true,
          //{
          // ...
          //Navigator.of(context).pushAndRemoveUntil(
          //  ???.route(),
          //  (route) => false,
          //);
          //},
        );
      },
      builder: (context, state) {
        return Align(
          alignment: Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.map(
              initial: (state) => [],
              form: (state) {
                return [
                  _RadioInput(
                    DeleteType.local,
                    "Local copy",
                    "Delete the local copy of this document.",
                  ),
                  _RadioInput(
                    DeleteType.favourites,
                    "Favourites",
                    "Delete this document from the favourites list.",
                  ),
                  _RadioInput(
                    DeleteType.remove,
                    "Remove me",
                    "Remove me as an editor from this document. Other editors can still access it.",
                  ),
                  _RadioInput(
                    DeleteType.delete,
                    "Delete document",
                    "Delete this document completely. It will be deleted for all other editors.",
                  ),
                  Padding(padding: EdgeInsets.all(12)),
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

enum DeleteType {
  local,
  favourites,
  remove,
  delete,
}

class _RadioInput extends StatelessWidget {
  final DeleteType _type;
  final String _title;
  final String _description;

  _RadioInput(this._type, this._title, this._description);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeleteCubit, DeleteState>(
      buildWhen: (previous, current) {
        if (current is DeleteStateForm) {
          if (previous is DeleteStateForm) {
            return previous.name != current.name;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is DeleteStateForm) {
          return TextFormField(
            autofocus: true,
            key: Keys.name,
            initialValue: state.name.value,
            onChanged: (value) {
              context.bloc<DeleteCubit>().nameChanged(value);
            },
            decoration: InputDecoration(
              labelText: _title,
              helperText: _description,
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
    return BlocBuilder<DeleteCubit, DeleteState>(
      buildWhen: (previous, current) {
        if (current is DeleteStateForm) {
          if (previous is DeleteStateForm) {
            return previous.status != current.status;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is DeleteStateForm) {
          return state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : RaisedButton(
                  key: Keys.submit,
                  child: Text('Submit'),
                  onPressed: () {
                    if (state.status.isValidated) {
                      context.bloc<DeleteCubit>().submit();
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
