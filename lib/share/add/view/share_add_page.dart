import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/share/add/add.dart';

class ShareAddPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => ShareAddPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShareAdd')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => ShareAddCubit(
            RepositoryProvider.of<Data>(context),
          ),
          child: ShareAddForm(),
        ),
      ),
    );
  }
}
