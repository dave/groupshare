import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/share/edit/edit.dart';

//import 'package:formz/formz.dart';

class EditPage extends StatelessWidget {
  static Route route(String id, String back) {
    return MaterialPageRoute<void>(
      builder: (_) => EditPage(
        id: id,
        back: back,
      ),
    );
  }

  final String _id;
  final String _back;

  EditPage({
    Key key,
    @required String id,
    @required String back,
  })  : _id = id,
        _back = back,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Title'),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => EditBloc(
            _id,
            _back,
            RepositoryProvider.of<Data>(context),
          ),
          child: EditForm(),
        ),
      ),
    );
  }
}

class EditForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditBloc, EditState>(
      listenWhen: (previous, current) => current.map(
        loading: (_) => false,
        form: (_) => false,
        done: (_) => true,
      ),
      listener: (context, state) {
        state.maybeMap(
          done: (state) {
            Navigator.of(context).popUntil(ModalRoute.withName(state.route));
          },
          orElse: () => true,
        );
      },
      buildWhen: (previous, current) => current.map(
        loading: (_) => true,
        form: (_) => true,
        done: (_) => false,
      ),
      builder: (context, state) {
        return Align(
          alignment: Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.maybeMap(
              loading: (_) => [
                Center(child: CircularProgressIndicator()),
              ],
              form: (_) => [
                _NameInput(),
                Padding(padding: EdgeInsets.all(12)),
                _SubmitButton(),
              ],
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
    return BlocBuilder<EditBloc, EditState>(
      buildWhen: (previous, current) {
        return current is EditStateForm &&
            (previous is! EditStateForm ||
                previous is EditStateForm && previous.name != current.name);
      },
      builder: (context, state) {
        return state is EditStateForm
            ? TextFormField(
                autofocus: true,
                key: Keys.name,
                initialValue: state.name.value,
                onChanged: (value) {
                  context.bloc<EditBloc>().add(EditEvent.change(value));
                },
                decoration: InputDecoration(
                  labelText: 'name',
                  errorText: state.name.invalid ? 'invalid name' : null,
                ),
              )
            : null;
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditBloc, EditState>(
      buildWhen: (previous, current) {
        return current is EditStateForm &&
            (previous is! EditStateForm ||
                previous is EditStateForm && previous.status != current.status);
      },
      builder: (context, state) {
        return state is EditStateForm
            ? state.status.isSubmissionInProgress
                ? CircularProgressIndicator()
                : RaisedButton(
                    key: Keys.submit,
                    child: Text('Submit'),
                    onPressed: () async {
                      if (state.status.isValidated) {
                        context.bloc<EditBloc>().add(EditEvent.submit());
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
