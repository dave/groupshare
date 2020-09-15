import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/edit/edit.dart';

//import 'package:formz/formz.dart';

class EditPage extends StatelessWidget {
  static Route route(String id, String popRoute) {
    return MaterialPageRoute<void>(
      builder: (_) => EditPage(
        id: id,
        popRoute: popRoute,
      ),
    );
  }

  final String _id;
  final String _popRoute;
  EditPage({
    Key key,
    @required String id,
    @required String popRoute,
  })  : _id = id,
        _popRoute = popRoute,
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
            _popRoute,
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
        state.page.map(
          initial: (page) => true,
          offline: (page) => true,
          loading: (page) => true,
          form: (page) => true,
          error: (page) {
            handle(
              context,
              page.error,
              page.stack,
              buttons: [
                Button(
                  "Retry",
                  () => context.bloc<EditCubit>().retry(page.retryState),
                )
              ],
            );
          },
          done: (page) {
            Navigator.of(context).popUntil(
              ModalRoute.withName(state.popRoute),
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
        final currentPage = current.page;
        final previousPage = previous.page;
        if (currentPage is PageStateForm) {
          if (previousPage is PageStateForm) {
            return previousPage.name != currentPage.name;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        final page = state.page;
        if (page is PageStateForm) {
          return TextFormField(
            autofocus: true,
            key: Keys.name,
            initialValue: page.name.value,
            onChanged: (value) {
              context.bloc<EditCubit>().nameChanged(value);
            },
            decoration: InputDecoration(
              labelText: 'name',
              errorText: page.name.invalid ? 'invalid name' : null,
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
        final currentPage = current.page;
        final previousPage = previous.page;
        if (currentPage is PageStateForm) {
          if (previousPage is PageStateForm) {
            return previousPage.status != currentPage.status;
          }
          return true;
        }
        return false;
      },
      builder: (context, state) {
        final page = state.page;
        if (page is PageStateForm) {
          return page.status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : RaisedButton(
                  key: Keys.submit,
                  child: const Text('Submit'),
                  onPressed: () {
                    if (page.status.isValidated) {
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
