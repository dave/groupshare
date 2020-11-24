import 'dart:async';

import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:client/client/bloc.dart';
import 'package:pserver/pserver/pserver.dart';

part 'item_bloc.freezed.dart';

@freezed
abstract class ItemState with _$ItemState {
  const factory ItemState(
    String id,
    String name,
    bool local,
    bool dirty,
    bool sending,
  ) = _ItemState;
}

@freezed
abstract class ItemEvent with _$ItemEvent {
  const factory ItemEvent.setup() = ItemEventSetup;

  const factory ItemEvent.init() = ItemEventInit;
}

class ItemBloc extends ExtendedBloc<ItemEvent, ItemState> {
  final Data _data;
  final String _id;
  final String _name;
  StreamSubscription<DataEvent<Share>> _subscription;

  ItemBloc(this._id, this._name, this._data) : super(_item(_id, _name, _data)) {
    add(ItemEvent.setup());
  }

  @override
  Stream<ItemState> mapEventToState(ItemEvent event) async* {
    yield* event.map(
      setup: (event) async* {
        _subscription?.cancel();
        _subscription = _data.shares.stream.listen((DataEvent<Share> event) {
          if (event is DataEventApply ||
              event is DataEventGetting ||
              event is DataEventGetFailed ||
              event is DataEventGot ||
              event is DataEventSending ||
              event is DataEventSent ||
              event is DataEventDeleted) {
            if (event.id != _id) {
              return;
            }
            add(ItemEvent.init());
          }
        });
        add(ItemEvent.init());
      },
      init: (event) async* {
        yield _item(_id, _name, _data);
      },
    );
  }

  static ItemState _item(String _id, String _name, Data _data) {
    return ItemState(
      _id,
      _data.shares.has(_id) ? _data.shares.meta(_id) : _name,
      _data.shares.has(_id),
      _data.shares.dirty().contains(_id),
      _data.shares.getting().contains(_id)
          ? true
          : _data.shares.open(_id)
              ? _data.shares.get(_id).item.sending()
              : false,
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
