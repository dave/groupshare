import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:main/appbar/appbar.dart';
import 'package:main/bloc.dart';
import 'package:main/share/add/add.dart';
import 'package:main/share/list/list.dart';

class AddPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => AddPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Add'),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => AddBloc(
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
    return BlocConsumer<AddBloc, AddState>(
      listenWhen: (previous, current) => current is AddStateDone,
      listener: (context, state) {
        Navigator.of(context).popUntil(
          ModalRoute.withName(ListPage.routeName),
        );
      },
      buildWhen: (previous, current) => current is AddStateForm,
      builder: (context, state) {
        return Align(
          alignment: Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.maybeMap(
              orElse: () => [],
              form: (state) {
                return [
                  _NameInput(),
                  Padding(padding: EdgeInsets.all(12)),
                  _AddButton(),
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
    return BlocBuilder<AddBloc, AddState>(
      buildWhen: stateIs<AddStateForm>((p, c) => p.name != c.name),
      builder: (context, state) {
        return state is AddStateForm
            ? state.status.isSubmissionInProgress
                ? CircularProgressIndicator()
                : TextFormField(
                    autofocus: true,
                    key: Keys.name,
                    initialValue: state.name.value,
                    onChanged: (email) {
                      context.bloc<AddBloc>().add(AddEvent.change(email));
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

class _AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddBloc, AddState>(
      buildWhen: stateIs<AddStateForm>((p, c) => p.status != c.status),
      builder: (context, state) {
        return state is AddStateForm
            ? state.status.isSubmissionInProgress
                ? CircularProgressIndicator()
                : RaisedButton(
                    key: Keys.submit,
                    child: Text('Add'),
                    onPressed: () async {
                      if (state.status.isValidated) {
                        context.bloc<AddBloc>().add(AddEvent.submit());
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
