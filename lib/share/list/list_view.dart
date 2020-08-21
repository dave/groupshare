import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/list/list.dart';

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
        if (state is ListStateError) {
          handle(
            context,
            state.error,
            [
              Button(
                "Retry",
                () => context.bloc<ListCubit>().initialise(),
              ),
            ],
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBarWidget('Shares'),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(AddPage.route());
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: RefreshIndicator(
              onRefresh: () async {
                context.bloc<ListCubit>().initialise();
              },
              child: state.when(
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
                list: (shares) => ListView.builder(
                  itemCount: shares.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(shares[index].name));
                  },
                ),
                error: (ex) {
                  if (ex is UserException) {
                    return Text("error, ${ex.message}");
                  } else {
                    return Text("error, $ex");
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
