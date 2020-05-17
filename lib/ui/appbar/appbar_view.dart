import 'package:flutter/material.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/ui/appbar/appbar_model.dart';
import 'package:groupshare/ui/base_view.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  String _pageTitle;

  AppBarView(this._pageTitle);

  @override
  Widget build(BuildContext context) {
    return BaseView<AppBarModel>(
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) {
        return AppBar(
          title: Text(_pageTitle),
          actions: [
            if (model.status == Status.Done || model.status == Status.Auth)
              PopupMenuButton(
                icon: Icon(Icons.settings),
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
                  ),
//                  PopupMenuItem(
//                    child: ListTile(
//                      leading: Icon(Icons.help_outline),
//                      title: Text('Help'),
//                    ),
//                  )
                ],
              ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize {
    return AppBar().preferredSize;
  }
}
