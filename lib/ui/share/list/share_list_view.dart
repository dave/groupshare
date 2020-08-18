//import 'package:flutter/material.dart';
//import 'package:groupshare/ui/appbar/appbar_view.dart';
//import 'package:groupshare/ui/base_view.dart';
//import 'package:groupshare/ui/handle.dart';
//import 'package:groupshare/ui/share/list/share_list_model.dart';
//
//class ShareListView extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return BaseView<ShareListModel>(
//      onModelReady: (model) async {
//        action() async {
//          try {
//            await model.initialise();
//          } catch (ex) {
//            handle(context, ex, [Button("Retry", action)]);
//            return;
//          }
//        }
//
//        await action();
//      },
//      builder: (context, model, child) {
//        return Scaffold(
//          appBar: AppBarView('Shares'),
//          floatingActionButton: FloatingActionButton(
//            child: Icon(Icons.add),
//            onPressed: () {
//              Navigator.pushNamed(context, '/share/add');
//            },
//          ),
//          body: model.busy
//              ? Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: [Center(child: CircularProgressIndicator())],
//                )
//              : model.offline
//                  ? Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: [
//                        Center(
//                          child: Text(
//                            "We can't display this page "
//                            "because you don't have an "
//                            "internet connection.",
//                          ),
//                        )
//                      ],
//                    )
//                  : RefreshIndicator(
//                      onRefresh: () async {
//                        await model.initialise();
//                      },
//                      child: ListView.builder(
//                        itemCount: model.items.length,
//                        itemBuilder: (context, index) {
//                          return ListTile(title: Text(model.items[index].name));
//                        },
//                      ),
//                    ),
//        );
//      },
//    );
//  }
//}
