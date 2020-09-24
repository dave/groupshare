import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/share/view/view.dart';
import 'package:groupshare/task.dart';
import 'package:groupshare/ui/refresher.dart';

class ViewPage extends StatelessWidget {
  static const String routeName = 'ShareViewPage';

  static Route route(String id) {
    return MaterialPageRoute<void>(
      builder: (_) => ViewPage(id: id),
      settings: RouteSettings(name: routeName),
    );
  }

  final String _id;

  ViewPage({
    Key key,
    @required String id,
  })  : _id = id,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewCubit(
        RepositoryProvider.of<Data>(context),
        RepositoryProvider.of<Api>(context),
        _id,
      )..init(),
      child: ViewForm(),
    );
  }
}

class ViewForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final global = GlobalKey();
    return BlocConsumer<ViewCubit, ViewState>(
      key: global,
      listener: (context, state) {
        state.map(
          initial: (state) => true,
          loading: (state) => true,
          offline: (state) => true,
          error: (state) {
            handle(
              context,
              state.error,
              state.stack,
              buttons: [
                Button(
                  "Home",
                  () => Navigator.of(context).popUntil(
                    ModalRoute.withName(ListPage.routeName),
                  ),
                ),
                Button(
                  "Retry",
                  () => context.bloc<ViewCubit>().initPage(),
                )
              ],
            );
          },
          done: (state) => true,
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBarWidget('Title'),
          floatingActionButton: state is ViewStateDone
              ? FloatingActionButton(
                  child: Icon(Icons.edit),
                  onPressed: () async {
                    await Navigator.of(context).push(EditPage.route(
                      state.id,
                      ViewPage.routeName,
                    ));
                    context.bloc<ViewCubit>().initPage();
                  },
                )
              : null,
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Align(
              alignment: const Alignment(0, -1 / 3),
              child: Refresher(
                onRefresh: () async {
                  await task(context, global, () async {
                    await context.bloc<ViewCubit>().refresh();
                  });
                },
                child: state.map(
                  initial: (state) => null,
                  offline: (_) => Center(
                    child: Text(
                      "Offline.",
                    ),
                  ),
                  loading: (_) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (state) => null,
                  done: (state) => Center(child: Text(state.name)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
