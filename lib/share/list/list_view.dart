import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/bloc.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:groupshare/share/list/item/item.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/share/details/details.dart';
import 'package:groupshare/task.dart';
import 'package:groupshare/ui/refresher.dart';
import 'package:groupshare/ui/spinner.dart';
import 'package:refreshable_reorderable_list/refreshable_reorderable_list.dart';

class ListPage extends StatelessWidget {
  static const String routeName = 'ShareListPage';

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => ListPage(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListBloc(
        RepositoryProvider.of<Data>(context),
        RepositoryProvider.of<Api>(context),
      ),
      child: ListPageContent(),
    );
  }
}

class ListPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListBloc, ListState>(
      buildWhen: (previous, current) => current.map(
        loading: (_) => true,
        list: (_) => true,
        flush: (_) => false,
        refreshFinished: (_) => false,
      ),
      builder: (context, state) {
        final controller = SlidableController();
        return Scaffold(
          appBar: AppBarWidget('Shares'),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () async {
              await Navigator.of(context).push(AddPage.route());
            },
          ),
          body: Padding(
            padding: EdgeInsets.all(12),
            child: state.maybeMap(
              loading: (state) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Center(child: Text("loading"))],
              ),
              list: (state) => BlocRefreshIndicator<ListBloc, ListEvent,
                  ListState, ListStateRefreshFinished>(
                single: state.items.isEmpty,
                event: ListEvent.refresh(),
                child: state.items.isEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Center(child: Text("List empty."))],
                      )
                    : RefreshableReorderableListView(
                        physics: AlwaysScrollableScrollPhysics(),
                        onReorder: (from, to) {
                          context.bloc<ListBloc>().add(
                                ListEvent.reorder(from, to),
                              );
                        },
                        children: state.items.map(
                          (item) {
                            return ItemWidget(
                              item.id,
                              item.name,
                              controller,
                              onDelete: () => context
                                  .bloc<ListBloc>()
                                  .add(ListEvent.delete(item.id)),
                              onRefresh: () => warning(
                                context,
                                () => context.bloc<ListBloc>().add(
                                      ListEvent.item(item.id),
                                    ),
                              ),
                              onEdit: () => warning(
                                context,
                                () => Navigator.of(context).push(
                                  EditPage.route(
                                    item.id,
                                    ListPage.routeName,
                                  ),
                                ),
                                enabled: !item.local,
                              ),
                              onDownload: () => warning(
                                context,
                                () => context.bloc<ListBloc>().add(
                                      ListEvent.item(item.id),
                                    ),
                              ),
                              onOpen: () => warning(
                                context,
                                () => Navigator.of(context).push(
                                  DetailsPage.route(
                                    item.id,
                                  ),
                                ),
                                enabled: !item.local,
                              ),
                              key: ValueKey(item.id),
                            );
                          },
                        ).toList(),
                      ),
              ),
              orElse: () => Container(),
            ),
          ),
        );
      },
    );
  }
}
