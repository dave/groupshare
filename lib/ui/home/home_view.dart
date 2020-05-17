import 'package:flutter/material.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/ui/appbar/appbar_view.dart';
import 'package:groupshare/ui/base_view.dart';
import 'package:groupshare/ui/handle.dart';
import 'package:groupshare/ui/home/home_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      onModelReady: (model) async {
        try {
          await model.validate();
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
        if (model.status == Status.Empty) {
          Navigator.pushNamedAndRemoveUntil(context, '/login', (_) => false);
        } else if (model.status == Status.Auth) {
          Navigator.pushNamedAndRemoveUntil(context, '/auth', (_) => false);
        } else if (model.status == Status.Done) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/share/list', (_) => false);
        }
      },
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBarView('Home'),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Center(child: CircularProgressIndicator())]),
        );
      },
    );
  }
}
