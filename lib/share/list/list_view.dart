import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/edit/edit.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/ui/spinner.dart';

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
            onPressed: () {
              Navigator.of(context).pushReplacement(AddPage.route());
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: RefreshIndicator(
              onRefresh: () async {
                await context.bloc<ListCubit>().initialise();
              },
              child: state.page.when(
                offline: () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "We can't display this page because you don't have an internet connection.",
                      ),
                    )
                  ],
                ),
                loading: () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Center(child: CircularProgressIndicator())],
                ),
                list: () => ListView.builder(
                  itemCount: state.shares.items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.shares.items[index].name),
                      trailing: state.shares
                                  .refreshing[state.shares.items[index].id] ==
                              true
                          ? IconButton(
                              icon: Spinner(icon: Icons.sync),
                              onPressed: () {},
                            )
                          : IconButton(
                              icon: Icon(Icons.sync),
                              onPressed: () {
                                context.bloc<ListCubit>().refresh(
                                      state.shares.items[index].id,
                                    );
                              },
                            ),
                      onTap: () => Navigator.of(context).push(
                        EditPage.route(state.shares.items[index].id),
                      ),
                    );
                  },
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
          ),
        );
      },
    );
  }
}
