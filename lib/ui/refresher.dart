import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groupshare/main.dart';

class Refresher extends StatelessWidget {
  final Widget child;
  final Future<void> Function() onRefresh;

  const Refresher({
    Key key,
    @required this.child,
    @required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return RefreshIndicator(
          onRefresh: onRefresh,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: child,
            ),
          ),
        );
      },
    );
  }
}

class BlocRefreshIndicator<B extends Bloc<E, S>, E, S, A> extends StatefulWidget {
  final Widget child;
  final E onRefreshEvent;

  const BlocRefreshIndicator({
    Key key,
    @required this.child,
    @required this.onRefreshEvent,
  }) : super(key: key);

  @override
  _BlocRefreshIndicatorState<B, E, S, A> createState() => _BlocRefreshIndicatorState<B, E, S, A>();
}

class _BlocRefreshIndicatorState<B extends Bloc<E, S>, E, S, A> extends State<BlocRefreshIndicator<B,E,S, A>> {
  Completer<void> _completer;

  @override
  void initState() {
    super.initState();
    _completer = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, S>(
      listener: (BuildContext context, S state) {
        if (state is A || (state is ActionHolder && state.action is A)) {
          _completer?.complete();
          _completer = Completer();
        }
      },
      builder: (BuildContext context, S state) {
        return RefreshIndicator(
          onRefresh: () async {
            BlocProvider.of<B>(context).add(widget.onRefreshEvent);
            return _completer.future;
          },
          child: widget.child,
        );
      },
    );

  }
}
