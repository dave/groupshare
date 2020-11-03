import 'package:api/api.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:main/appbar/appbar.dart';
import 'package:main/share/open/open.dart';
import 'package:main/ui/refresher.dart';
import 'package:main/ui/warning.dart';

class OpenPage extends StatelessWidget {
  static const String routeName = 'ShareOpenPage';

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => OpenPage(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OpenBloc(
        RepositoryProvider.of<Data>(context),
        RepositoryProvider.of<Api>(context),
      ),
      child: OpenPageContent(),
    );
  }
}

class OpenPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = SlidableController();
    return Scaffold(
      appBar: AppBarWidget('All Shares'),
      body: BlocBuilder<OpenBloc, OpenState>(
        buildWhen: (previous, current) => current.map(
          loading: (_) => true,
          list: (_) => true,
          flush: (_) => false,
          refreshFinished: (_) => false,
        ),
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(12),
            child: state.maybeMap(
              orElse: () => Container(),
              loading: (state) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Center(child: Text("loading"))],
              ),
              list: (state) => BlocRefreshIndicator<OpenBloc, OpenEvent,
                  OpenState, OpenStateRefreshFinished>(
                single: state.items.isEmpty,
                event: OpenEvent.refresh(),
                warning: true,
                child: state.items.isEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Center(child: Text("List empty."))],
                      )
                    : ListView(
                        physics: AlwaysScrollableScrollPhysics(),
                        children: state.items.map(
                          (item) {
                            return ListTile(
                              title: Text(item.name),
                              onTap: () => true,
                              trailing: item.favourite
                                  ? IconButton(
                                      icon: Icon(Icons.favorite),
                                      onPressed: () {
                                        context.bloc<OpenBloc>().add(
                                              OpenEvent.remove(item.id),
                                            );
                                      },
                                    )
                                  : IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      onPressed: () {
                                        context.bloc<OpenBloc>().add(
                                              OpenEvent.add(item.id),
                                            );
                                      },
                                    ),
                            );
                          },
                        ).toList(),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
