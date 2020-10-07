import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/_foo/foo.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/bloc.dart';

class FooPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => FooPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Foo'),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => FooBloc(
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
    return BlocConsumer<FooBloc, FooState>(
      listenWhen: (previous, current) => current.map(
        form: (_) => false,
        done: (_) => true,
      ),
      listener: (context, state) {
        state.maybeMap(
          orElse: () => true,
          done: (state) {
            //...
            return true;
          },
        );
      },
      buildWhen: (previous, current) => current.map(
        form: (_) => true,
        done: (_) => false,
      ),
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
    return BlocBuilder<FooBloc, FooState>(
      buildWhen: stateIs<FooStateForm>((p, c) => p.name != c.name),
      builder: (context, state) {
        return state is FooStateForm
            ? TextFormField(
                autofocus: true,
                key: Keys.name,
                initialValue: state.name.value,
                onChanged: (value) {
                  context.bloc<FooBloc>().add(FooEvent.change(value));
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
    return BlocBuilder<FooBloc, FooState>(
      buildWhen: stateIs<FooStateForm>((p, c) => p.status != c.status),
      builder: (context, state) {
        return state is FooStateForm
            ? state.status.isSubmissionInProgress
                ? CircularProgressIndicator()
                : RaisedButton(
                    key: Keys.submit,
                    child: const Text('Submit'),
                    onPressed: () async {
                      if (state.status.isValidated) {
                        context.bloc<FooBloc>().add(FooEvent.submit());
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
