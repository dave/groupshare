import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/share/view/view.dart';
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
      create: (context) {
        return ListCubit(
          RepositoryProvider.of<Data>(context),
          RepositoryProvider.of<Api>(context),
        )..init();
      },
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
              state.stack,
              buttons: [
                Button("OK", () => context.bloc<ListCubit>().initList(false)),
              ],
            );
          },
        );
      },
      builder: (context, state) {
        final controller = SlidableController();
        return Scaffold(
          appBar: AppBarWidget('Shares'),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () async {
              await Navigator.of(context).push(AddPage.route());
              context.bloc<ListCubit>().initList(false);
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: state.page.when(
              offline: () => Refresher(
                onRefresh: () async {
                  // When we pull down the refresh on the offline view, we
                  // refresh the list but not all of the items.
                  try {
                    await task(context, () async {
                      await context.bloc<ListCubit>().initList(true);
                    });
                  } catch (ex, stack) {
                    handle(context, ex, stack);
                  }
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
                children: [Center(child: Text("loading"))],
              ),
              list: () => state.shares.items.length == 0
                  ? Refresher(
                      onRefresh: () async {
                        // When we pull down the refresh on the empty list, we
                        // refresh the list but not all of the items.
                        try {
                          await task(context, () async {
                            await context.bloc<ListCubit>().initList(true);
                          });
                        } catch (ex, stack) {
                          handle(context, ex, stack);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "List empty.",
                            ),
                          )
                        ],
                      ),
                    )
                  : RefreshIndicator(
                      onRefresh: () async {
                        // When we pull down the refresh on the list view, we
                        // initiate a refresh of all the items.
                        try {
                          await task(context, () async {
                            await context.bloc<ListCubit>().refreshAllItems();
                          });
                        } catch (ex, stack) {
                          handle(context, ex, stack);
                        }
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
                              controller: controller,
                              key: ValueKey(item.id),
                              actionPane: SlidableDrawerActionPane(),
                              actionExtentRatio: 0.1,
                              child: SlidableListTile(controller, item, state),
                              secondaryActions: <Widget>[
                                if (item.local)
                                  IconSlideAction(
                                    //caption: 'Delete',
                                    color: Colors.transparent,
                                    foregroundColor: iconColor,
                                    icon: Icons.delete,
                                    onTap: () {
                                      context
                                          .bloc<ListCubit>()
                                          .deleteItem(item.id);
                                    },
                                  ),
                                if (item.local)
                                  IconSlideAction(
                                    //caption: 'Refresh',
                                    color: Colors.transparent,
                                    icon: Icons.sync,
                                    foregroundColor: iconColor,
                                    onTap: () async {
                                      try {
                                        await task(context, () async {
                                          await context
                                              .bloc<ListCubit>()
                                              .refreshItem(item.id);
                                        });
                                      } catch (ex, stack) {
                                        handle(context, ex, stack);
                                      }
                                    },
                                  ),
                                if (item.local)
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
                                      context.bloc<ListCubit>().initList(false);
                                    },
                                  ),
                              ],
                            );
                          },
                        ).toList(),
                      ),
                    ),
              error: (error, stack) => Container(),
            ),
          ),
        );
      },
    );
  }
}

class SlidableListTile extends StatelessWidget {
  final AvailableShare _item;
  final ListState _state;
  final SlidableController _controller;

  const SlidableListTile(
    SlidableController controller,
    AvailableShare item,
    ListState state, {
    Key key,
  })  : _controller = controller,
        _item = item,
        _state = state,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_item.name),
      onTap: () async {
        await Navigator.of(context).push(
          ViewPage.route(_item.id),
        );
        context.bloc<ListCubit>().initList(false);
      },
      trailing: _state.shares.refreshing[_item.id] == true
          ? IconButton(
              icon: Spinner(icon: Icons.sync),
              onPressed: () {},
            )
          : _item.local
              ? IconButton(
                  icon: Icon(Icons.offline_pin),
                  onPressed: () {
                    final thisItemIsOpen = _controller.activeState != null &&
                        _controller.activeState == Slidable.of(context) &&
                        _controller.activeState.actionType ==
                            SlideActionType.secondary;

                    final anotherItemIsOpen = _controller.activeState != null &&
                        _controller.activeState != Slidable.of(context) &&
                        _controller.activeState.actionType ==
                            SlideActionType.secondary;

                    if (anotherItemIsOpen) {
                      _controller.activeState.close();
                    }
                    if (thisItemIsOpen) {
                      Slidable.of(context).close();
                    } else {
                      Slidable.of(context).open(
                        actionType: SlideActionType.secondary,
                      );
                    }
                  },
                )
              : IconButton(
                  icon: Icon(Icons.file_download),
                  onPressed: () async {
                    try {
                      await task(context, () async {
                        await context.bloc<ListCubit>().initItem(_item.id);
                      });
                    } catch (ex, stack) {
                      handle(context, ex, stack);
                    }
                  },
                ),
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
