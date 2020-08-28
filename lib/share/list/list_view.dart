import 'package:api_repository/api_repository.dart';
import 'package:connection_repository/connection_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/share/view/view.dart';
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
      create: (context) => ListCubit(
        RepositoryProvider.of<Data>(context),
        RepositoryProvider.of<Api>(context),
        RepositoryProvider.of<Connection>(context),
      )
        ..initConn()
        ..initList(),
      child: ListPageContent(),
    );
  }
}

class ListPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ListCubit, ListState>(
      listener: (context, state) {
        state.page.map(
          offline: (state) => true,
          loading: (state) => true,
          list: (state) => true,
          error: (state) {
            handle(
              context,
              state.error,
              [Button("Retry", () => context.bloc<ListCubit>().initList())],
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBarWidget('Shares'),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () async {
              await Navigator.of(context).push(AddPage.route());
              context.bloc<ListCubit>().initList();
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: state.page.when(
              offline: () => Refresher(
                onRefresh: () async {
                  await context.bloc<ListCubit>().initList();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Offline.",
                      ),
                    )
                  ],
                ),
              ),
              loading: () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Center(child: CircularProgressIndicator())],
              ),
              list: () => RefreshIndicator(
                onRefresh: () async {
                  //await context.bloc<ListCubit>().refreshList();
                  await context.bloc<ListCubit>().initList();
                },
                child: RefreshableReorderableListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  onReorder: (oldIndex, newIndex) {
                    context.bloc<ListCubit>().reorder(oldIndex, newIndex);
                  },
                  children: state.shares.items.map(
                    (item) {
                      final iconColor = _iconColor(
                        Theme.of(context),
                        ListTileTheme.of(context),
                      );
                      return Slidable(
                        key: ValueKey(item.id),
                        actionPane: SlidableDrawerActionPane(),
                        actionExtentRatio: 0.1,
                        child: ListTile(
                          title: Text(item.name),
                          onTap: () async {
                            await Navigator.of(context).push(
                              ViewPage.route(item.id),
                            );
                            context.bloc<ListCubit>().initList();
                          },
                          trailing: state.shares.refreshing[item.id] == true
                              ? Spinner(icon: Icons.sync)
                              : null,
                        ),
                        secondaryActions: <Widget>[
                          IconSlideAction(
                            //caption: 'Delete',
                            color: Colors.transparent,
                            foregroundColor: iconColor,
                            icon: Icons.delete,
                            onTap: () => true,
                          ),
                          IconSlideAction(
                            //caption: 'Refresh',
                            color: Colors.transparent,
                            icon: Icons.sync,
                            foregroundColor: iconColor,
                            onTap: () {
                              context.bloc<ListCubit>().refreshItem(item.id);
                            },
                          ),
                          IconSlideAction(
                            //caption: 'Edit',
                            color: Colors.transparent,
                            icon: Icons.edit,
                            foregroundColor: iconColor,
                            onTap: () async {
                              await Navigator.of(context).push(
                                EditPage.route(
                                  item.id,
                                  ListPage.routeName,
                                ),
                              );
                              context.bloc<ListCubit>().initList();
                            },
                          ),
                        ],
                      );
                    },
                  ).toList(),

//                  children: state.shares.items
//                      .map(
//                        (item) => ListTile(
//                          key: ValueKey(item.id),
//                          title: Text(item.name),
//                          trailing: !state.connected
//                              ? null
//                              : state.shares.refreshing[item.id] == true
//                                  ? IconButton(
//                                      icon: Spinner(icon: Icons.sync),
//                                      onPressed: () {},
//                                    )
//                                  : IconButton(
//                                      icon: Icon(Icons.sync),
//                                      onPressed: () {
//                                        context
//                                            .bloc<ListCubit>()
//                                            .refresh(item.id);
//                                      },
//                                    ),
//                          onTap: () async {
//                            await Navigator.of(context).push(
//                              ViewPage.route(item.id),
//                            );
//                            context.bloc<ListCubit>().initList();
//                          },
//                        ),
//                      )
//                      .toList(),
                ),
              ),
              error: (error) {
                if (error is UserException) {
                  return Text("error, ${error.message}");
                } else {
                  return Text("error, $error");
                }
              },
            ),
          ),
        );
      },
    );
  }
}

Color _iconColor(ThemeData theme, ListTileTheme tileTheme) {
  final enabled = true; // TODO: always?
  final selected = false; // TODO: always?

  // This logic was copied from ListTile:

  if (!enabled) return theme.disabledColor;

  if (selected && tileTheme?.selectedColor != null)
    return tileTheme.selectedColor;

  if (!selected && tileTheme?.iconColor != null) return tileTheme.iconColor;

  switch (theme.brightness) {
    case Brightness.light:
      return selected ? theme.primaryColor : Colors.black45;
    case Brightness.dark:
      return selected
          ? theme.accentColor
          : null; // null - use current icon theme color
  }
  assert(theme.brightness != null);
  return null;
}
