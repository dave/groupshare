import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/ui/handle.dart';

class ShareAddForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShareAddCubit, ShareAddState>(
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
    return BlocBuilder<ShareAddCubit, ShareAddState>(
      buildWhen: (previous, current) {
        if (current is ShareAddStateForm) {
          if (previous is ShareAddStateForm) {
            return previous.name != current.name;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is ShareAddStateForm) {
          return TextField(
            key: const Key('share_add_name_input'),
            onChanged: (email) {
              context.bloc<ShareAddCubit>().nameChanged(email);
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
    return BlocBuilder<ShareAddCubit, ShareAddState>(
      buildWhen: (previous, current) {
        if (current is ShareAddStateForm) {
          if (previous is ShareAddStateForm) {
            return previous.status != current.status;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is ShareAddStateForm) {
          return state.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : RaisedButton(
                  key: const Key('share_add_add_button'),
                  child: const Text('Add'),
                  onPressed: () {
                    if (state.status.isValidated) {
                      context.bloc<ShareAddCubit>().add();
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
