import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/appbar/appbar.dart';
import 'package:groupshare/handle.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/list/list.dart';

class ShareListPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => ShareListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShareListCubit(
        RepositoryProvider.of<Data>(context),
        RepositoryProvider.of<Api>(context),
      )..initialise(),
      child: ShareListPageContent(),
    );
  }
}

class ShareListPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShareListCubit, ShareListState>(
      listener: (context, state) {
        if (state is ShareListStateError) {
          handle(
            context,
            state.error,
            [
              Button(
                "Retry",
                () => context.bloc<ShareListCubit>().initialise(),
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
              Navigator.of(context).push(ShareAddPage.route());
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: RefreshIndicator(
              onRefresh: () async {
                context.bloc<ShareListCubit>().initialise();
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
                  children: [
                    Center(child: CircularProgressIndicator()),
                    RaisedButton(
                      child: Text("retry"),
                      onPressed: () =>
                          context.bloc<ShareListCubit>().initialise(),
                    )
                  ],
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
