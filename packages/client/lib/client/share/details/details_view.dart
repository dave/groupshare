import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client/client/appbar/appbar.dart';
import 'package:client/client/share/edit/edit.dart';
import 'package:client/client/share/details/details.dart';
import 'package:client/client/ui/refresher.dart';

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
    return BlocBuilder<DetailsBloc, DetailsState>(
      buildWhen: (previous, current) => current.map(
        loading: (state) => true,
        done: (state) => true,
        flush: (state) => false,
        refreshFinished: (state) => false,
      ),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBarWidget('Title'),
          floatingActionButton: state.maybeMap(
            orElse: () => Container(),
            done: (state) => FloatingActionButton(
              child: Icon(Icons.edit),
              onPressed: () async {
                await Navigator.of(context).push(
                  EditPage.route(
                    state.id,
                    DetailsPage.routeName,
                  ),
                );
              },
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(12),
            child: Align(
              alignment: Alignment(0, -1 / 3),
              child: BlocRefreshIndicator<DetailsBloc, DetailsEvent, DetailsState, DetailsStateRefreshFinished>(
                single: true,
                event: DetailsEvent.refresh(),
                warning: true,
                child: state.maybeMap(
                  orElse: () => Container(),
                  loading: (state) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  done: (state) => Center(
                    child: Text(state.name),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
