import 'package:flutter/material.dart';
import 'package:groupshare/ui/appbar/appbar_view.dart';
import 'package:groupshare/ui/base_view.dart';
import 'package:groupshare/ui/handle.dart';
import 'package:groupshare/ui/share/list/share_list_model.dart';

class ShareListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ShareListModel>(
      onModelReady: (model) async {
        try {
          await model.initialise();
        } catch (ex) {
          handle(context, ex, [
            Button("Log off", () async {
              await model.logoff();
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', (_) => false);
            }),
          ]);
          return;
        }
      },
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBarView('Shares'),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/share/new');
            },
          ),
          body: model.busy
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Center(child: CircularProgressIndicator())])
              : ListView.builder(
                  itemCount: model.shares.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(model.shares[index]));
                  },
                ),
        );
      },
    );
  }
}
