import 'dart:async';

import 'package:api_repository/api_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groupshare/main.dart';
import 'package:protod/pserver/pserver.dart';

part 'details_bloc.freezed.dart';

@freezed
abstract class DetailsState with _$DetailsState {
  @Implements(PageStateIncomplete)
  const factory DetailsState.loading() = DetailsStateLoading;

  const factory DetailsState.done(String id, String name) = DetailsStateDone;
}

@freezed
abstract class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.init() = DetailsEventInit;

  const factory DetailsEvent.refresh() = DetailsEventRefresh;
}

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final String _id;
  final Data _data;
  StreamSubscription<DataEvent<Share>> _subscription;

  DetailsBloc(this._id, this._data) : super(DetailsState.loading()) {
    _subscription = _data.shares.stream.listen((DataEvent<Share> event) {
      if (event.id != _id) {
        return;
      }
      if (event is DataEventApply<Share>) {
        add(DetailsEvent.init());
        return;
      }
      if (event is DataEventGot<Share>) {
        add(DetailsEvent.init());
        return;
      }
    });
    add(DetailsEvent.init());
  }

  @override
  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
    yield* event.map(
      init: (event) async* {
        final item = await _data.shares.item(_id);
        if (item == null) {
          throw UserException("Can't find document");
        }
        yield DetailsState.done(item.id, item.value.name);
      },
      refresh: (event) async* {
        await _data.shares.refresh(_id);
      },
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
