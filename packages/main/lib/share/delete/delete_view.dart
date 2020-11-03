import 'package:api/api.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:main/appbar/appbar.dart';
import 'package:main/bloc.dart';
import 'package:main/share/delete/delete.dart';
import 'package:main/ui/warning.dart';

class DeletePage extends StatelessWidget {
  static Route route(String id) {
    return MaterialPageRoute<void>(builder: (_) => DeletePage(id));
  }

  final String _id;

  DeletePage(this._id, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Delete'),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => DeleteBloc(
            _id,
            RepositoryProvider.of<Data>(context),
            RepositoryProvider.of<Api>(context),
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
    return BlocConsumer<DeleteBloc, DeleteState>(
      listenWhen: (previous, current) => current.map(
        form: (state) => false,
        done: (state) => true,
      ),
      listener: (context, state) {
        state.maybeMap(
          orElse: () => true,
          done: (state) {
            Navigator.of(context).pop();
          },
        );
      },
      buildWhen: (previous, current) => current.map(
        form: (state) => true,
        done: (state) => false,
      ),
      builder: (context, state) {
        return ListView(
          children: state.maybeMap(
            orElse: () => [],
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
                Center(child: Container(child: _SubmitButton())),
              ];
            },
          ),
        );
      },
    );
  }
}

class _RadioInput extends StatelessWidget {
  final DeleteType _type;
  final String _title;
  final String _description;

  _RadioInput(this._type, this._title, this._description);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeleteBloc, DeleteState>(
      buildWhen: stateIs<DeleteStateForm>((p, c) => p.type != c.type),
      builder: (context, state) {
        return state is DeleteStateForm
            ? RadioListTile(
                value: state.type.value,
                groupValue: _type,
                title: Text(_title),
                subtitle: Text(_description),
                onChanged: (type) {
                  context.bloc<DeleteBloc>().add(DeleteEvent.change(_type));
                },
              )
            : null;
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeleteBloc, DeleteState>(
      buildWhen: stateIs<DeleteStateForm>(
        (p, c) => p.type != c.type || p.status != c.status,
      ),
      builder: (context, state) {
        return state is DeleteStateForm
            ? state.status.isSubmissionInProgress
                ? CircularProgressIndicator()
                : RaisedButton(
                    key: Keys.submit,
                    child: Text('Submit'),
                    onPressed: () {
                      if (state.status.isValidated) {
                        warning(
                          context,
                          () => context.bloc<DeleteBloc>().add(
                                DeleteEvent.submit(),
                              ),
                          // show offline warning only for remove/delete:
                          enabled: state.type.value == DeleteType.remove ||
                              state.type.value == DeleteType.delete,
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
  static final name = UniqueKey();
  static final submit = UniqueKey();
}
