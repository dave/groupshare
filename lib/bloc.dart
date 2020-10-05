import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ExtendedBloc<Event, State> extends Bloc<Event, State> {
  ExtendedBloc(State initialState) : super(initialState) {
    onChange(Change<State>(currentState: null, nextState: initialState));
  }
}

