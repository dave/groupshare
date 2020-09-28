import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/task.dart';

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
    final global = GlobalKey();
    return Scaffold(
      key: global,
      appBar: AppBarWidget('Title'),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            final cubit = EditCubit(
              _id,
              _back,
              RepositoryProvider.of<Data>(context),
            );
            task(
              context,
              null,
              cubit.init,
              offlineWarning: false,
              home: true,
              retry: true,
            );
            return cubit;
          },
          child: EditForm(global),
        ),
      ),
    );
  }
}

class EditForm extends StatelessWidget {
  final GlobalKey _global;

  EditForm(this._global);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditCubit, EditState>(
      listener: (context, state) {
        state.page.map(
          loading: (page) => true,
          form: (page) => true,
          done: (page) {
            Navigator.of(context).popUntil(ModalRoute.withName(page.route));
          },
        );
      },
      builder: (context, state) {
        return Align(
          alignment: const Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.page.map(
              loading: (_) => [Center(child: CircularProgressIndicator())],
              form: (_) {
                return [
                  _NameInput(),
                  const Padding(padding: EdgeInsets.all(12)),
                  _SubmitButton(_global),
                ];
              },
              done: (_) => [],
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
        return previous.form.name != current.form.name;
      },
      builder: (context, state) {
        return TextFormField(
          autofocus: true,
          key: Keys.name,
          initialValue: state.form.name.value,
          onChanged: (value) {
            context.bloc<EditCubit>().nameChanged(value);
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
  final GlobalKey _global;

  _SubmitButton(this._global);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditCubit, EditState>(
      buildWhen: (previous, current) {
        return previous.form.status != current.form.status;
      },
      builder: (context, state) {
        return state.form.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : RaisedButton(
                key: Keys.submit,
                child: const Text('Submit'),
                onPressed: () async {
                  if (state.form.status.isValidated) {
                    await task(
                      context,
                      _global,
                      context.bloc<EditCubit>().submit,
                      offlineWarning: false,
                    );
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
