import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ExtendedBloc<Event, State> extends Bloc<Event, State> {
  ExtendedBloc(State initialState) : super(initialState) {
    onChange(Change<State>(currentState: null, nextState: initialState));
  }

  Event get lastEvent => _lastEvent;
  Event _lastEvent;

  @override
  void onEvent(Event event) {
    _lastEvent = event;
    super.onEvent(event);
  }
}

bool Function(dynamic, dynamic) stateIs<T>(bool Function(T, T) f) {
  bool wrap(dynamic previous, dynamic current) {
    return current is T &&
        (previous is! T || (previous is T && f(previous, current)));
  }

  return wrap;
}