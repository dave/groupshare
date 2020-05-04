import 'package:flutter/material.dart';
import 'package:groupshare/core/viewmodels/home_model.dart';
import 'package:groupshare/ui/views/base_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      onModelReady: (model) async {
        final mode = await model.token();
        if (mode == Status.Empty || mode == Status.Error) {
          Navigator.pushNamedAndRemoveUntil(context, '/login', (_) => false);
        } else if (mode == Status.Auth) {
          Navigator.pushNamedAndRemoveUntil(context, '/auth', (_) => false);
        } else if (mode == Status.Done) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/share/list', (_) => false);
        }
      },
      builder: (context, model, child) {
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
