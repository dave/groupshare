import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/share/view/view.dart';
import 'package:groupshare/ui/refresher.dart';
import 'package:groupshare/ui/spinner.dart';
import 'package:refreshable_reorderable_list/refreshable_reorderable_list.dart';

class ListPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => ListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListCubit(
        RepositoryProvider.of<Data>(context),
        RepositoryProvider.of<Api>(context),
      )..initialise(),
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
              [Button("Retry", () => context.bloc<ListCubit>().initialise())],
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
              context.bloc<ListCubit>().initialise();
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: state.page.when(
              offline: () => Refresher(
                onRefresh: () async {
                  await context.bloc<ListCubit>().initialise();
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
                  await context.bloc<ListCubit>().initialise();
                },
                child: RefreshableReorderableListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  onReorder: (oldIndex, newIndex) {
                    context.bloc<ListCubit>().reorder(oldIndex, newIndex);
                  },
                  children: state.shares.items
                      .map(
                        (item) => ListTile(
                          key: ValueKey(item.id),
                          title: Text(item.name),
                          trailing: state.shares.refreshing[item.id] == true
                              ? IconButton(
                                  icon: Spinner(icon: Icons.sync),
                                  onPressed: () {},
                                )
                              : IconButton(
                                  icon: Icon(Icons.sync),
                                  onPressed: () {
                                    context.bloc<ListCubit>().refresh(item.id);
                                  },
                                ),
                          onTap: () async {
                            await Navigator.of(context).push(
                              ViewPage.route(item.id),
                            );
                            context.bloc<ListCubit>().initialise();
                          },
                        ),
                      )
                      .toList(),
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
