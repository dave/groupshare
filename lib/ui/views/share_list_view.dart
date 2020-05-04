import 'package:flutter/material.dart';
import 'package:groupshare/core/viewmodels/share_list_model.dart';
import 'package:groupshare/ui/views/base_view.dart';

class ShareListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<ShareListModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.group),
                      title: Text('Log off'),
                      onTap: () async {
                        await model.logoff();
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/login', (_) => false);
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          body: Center(child: Text("list")),
        );
      },
    );
  }
}
