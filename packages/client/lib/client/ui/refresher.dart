import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client/client/ui/warning.dart';

class BlocRefreshIndicator<B extends Bloc<E, S>, E, S, A>
    extends StatefulWidget {
  final Widget child;
  final E event;
  final bool single;
  final bool warning;

  const BlocRefreshIndicator({
    Key key,
    @required this.child,
    @required this.event,
    this.single = false,
    this.warning = false,
  }) : super(key: key);

  @override
  _BlocRefreshIndicatorState<B, E, S, A> createState() =>
      _BlocRefreshIndicatorState<B, E, S, A>();
}

class _BlocRefreshIndicatorState<B extends Bloc<E, S>, E, S, A>
    extends State<BlocRefreshIndicator<B, E, S, A>> {
  Completer<void> _completer;

  @override
  void initState() {
    super.initState();
    _completer = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    BlocConsumer<B, S> consumerAndRefresher(Widget child) {
      return BlocConsumer<B, S>(
        listenWhen: (S previous, S current) => current is A,
        listener: (BuildContext context, S state) {
          _completer?.complete();
          _completer = Completer();
        },
        builder: (BuildContext context, S state) {
          return RefreshIndicator(
            onRefresh: () async {
              final done = await warning(
                context,
                () => BlocProvider.of<B>(context).add(widget.event),
                enabled: widget.warning,
              );
              if (done) {
                return _completer.future;
              }
            },
            child: child,
          );
        },
      );
    }

    if (widget.single) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return consumerAndRefresher(
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: widget.child,
              ),
            ),
          );
        },
      );
    } else {
      return consumerAndRefresher(widget.child);
    }
  }
}
