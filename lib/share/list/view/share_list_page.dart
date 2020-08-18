import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/share/add/add.dart';
import 'package:groupshare/share/list/list.dart';
import 'package:groupshare/ui/handle.dart';

class ShareListPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => ShareListPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShareListCubit, ShareListState>(
      cubit: ShareListCubit(
        RepositoryProvider.of<Data>(context),
        RepositoryProvider.of<Api>(context),
      ),
      listener: (context, state) {
        if (state is ShareListStateError) {
          handle(context, state.error);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Shares')),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                ShareAddPage.route(),
                (route) => false,
              );
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
                        "We can't display this page "
                        "because you don't have an "
                        "internet connection.",
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
                error: (ex) => Text("error"),
              ),
            ),
          ),
        );
      },
    );
  }
}
