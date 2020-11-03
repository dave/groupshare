import 'package:api/api.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:main/appbar/appbar.dart';
import 'package:main/bloc.dart';
import 'package:main/share/add/add.dart';
import 'package:main/share/delete/delete.dart';
import 'package:main/share/edit/edit.dart';
import 'package:main/share/list/item/item.dart';
import 'package:main/share/list/list.dart';
import 'package:main/share/details/details.dart';
import 'package:main/share/open/open.dart';
import 'package:main/ui/refresher.dart';
import 'package:main/ui/warning.dart';
import 'package:refreshable_reorderable_list/refreshable_reorderable_list.dart';
import 'package:main/ui/unicorndial.dart';

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
    final controller = SlidableController();
    return Scaffold(
      appBar: AppBarWidget('Favourites'),
      floatingActionButton: BlocBuilder<ListBloc, ListState>(
          buildWhen: stateIs<ListStateList>((p, c) => p.badge != c.badge),
          builder: (context, state) {
            return UnicornDialer(
              orientation: UnicornOrientation.VERTICAL,
              parentButton: Icon(Icons.add),
              hasBackground: false,
              badge: state is ListStateList ? state.badge : "",
              buttons: [
                UnicornButton(
                  button: FloatingActionButton(
                    heroTag: "all",
                    mini: true,
                    child: Icon(Icons.article_outlined),
                    onPressed: () async {
                      await Navigator.of(context).push(OpenPage.route());
                    },
                  ),
                  labelText: "All",
                  hasLabel: true,
                  labelBackgroundColor: Colors.transparent,
                  labelHasShadow: false,
                  badge: state is ListStateList ? state.badge : "",
                ),
                UnicornButton(
                  button: FloatingActionButton(
                    heroTag: "new",
                    mini: true,
                    child: Icon(Icons.post_add),
                    onPressed: () async {
                      await Navigator.of(context).push(AddPage.route());
                    },
                  ),
                  labelText: "New",
                  hasLabel: true,
                  labelBackgroundColor: Colors.transparent,
                  labelHasShadow: false,
                ),
              ],
            );
          }),
      body: BlocBuilder<ListBloc, ListState>(
        buildWhen: (previous, current) => current.map(
          loading: (_) => true,
          list: (_) => true,
          flush: (_) => false,
          refreshFinished: (_) => false,
        ),
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(12),
            child: state.maybeMap(
              orElse: () => Container(),
              loading: (state) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Center(child: Text("loading"))],
              ),
              list: (state) => BlocRefreshIndicator<ListBloc, ListEvent,
                  ListState, ListStateRefreshFinished>(
                single: state.items.isEmpty,
                event: ListEvent.refresh(),
                warning: true,
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
                              onDelete: () => Navigator.of(context).push(
                                DeletePage.route(item.id),
                              ),
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
            ),
          );
        },
      ),
    );
  }
}
