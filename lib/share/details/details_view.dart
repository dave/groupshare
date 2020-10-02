import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/share/details/details.dart';
import 'package:groupshare/task.dart';
import 'package:groupshare/ui/refresher.dart';

class DetailsPage extends StatelessWidget {
  static const String routeName = 'ShareDetailsPage';

  static Route route(String id) {
    return MaterialPageRoute<void>(
      builder: (_) => DetailsPage(id: id),
      settings: RouteSettings(name: routeName),
    );
  }

  final String _id;

  DetailsPage({
    Key key,
    @required String id,
  })  : _id = id,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsBloc(
        _id,
        RepositoryProvider.of<Data>(context),
      ),
      child: DetailsContent(),
    );
  }
}

class DetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final global = GlobalKey();
    return BlocConsumer<DetailsBloc, DetailsState>(
      key: global,
      listenWhen: (previous, current) => current.map(
        resetRefresh: (state) => true,
        loading: (state) => false,
        done: (state) => false,
      ),
      listener: (context, state) {
        state.map(
          loading: (state) => true,
          done: (state) => true,
        );
      },
      buildWhen: (previous, current) => current.map(
        loading: (state) => true,
        done: (state) => true,
      ),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBarWidget('Title'),
          floatingActionButton: state.map(
            loading: (state) => Container(),
            done: (state) => FloatingActionButton(
              child: Icon(Icons.edit),
              onPressed: () async {
                await Navigator.of(context).push(EditPage.route(
                  state.id,
                  DetailsPage.routeName,
                ));
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Align(
              alignment: const Alignment(0, -1 / 3),
              child: Refresher(
                onRefresh: () async {
                  context.bloc<DetailsBloc>().add(DetailsEvent.refresh());
                },
                child: state.map(
                  loading: (_) => Center(
                    child: CircularProgressIndicator(),
                  ),
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
