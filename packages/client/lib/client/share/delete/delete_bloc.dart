import 'dart:async';

import 'package:api/api.dart';
import 'package:data/data.dart';
import 'package:exceptions/exceptions.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:client/client/bloc.dart';
import 'package:client/client/share/delete/delete.dart';
import 'package:client/client/share/open/open.dart';

part 'delete_bloc.freezed.dart';

@freezed
abstract class DeleteState with _$DeleteState {
  const factory DeleteState.form({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(const Type.pure()) Type type,
  }) = DeleteStateForm;

  const factory DeleteState.done() = DeleteStateDone;
}

@freezed
abstract class DeleteEvent with _$DeleteEvent {
  const factory DeleteEvent.change(DeleteType type) = DeleteEventChange;

  const factory DeleteEvent.submit() = DeleteEventSubmit;
}

class DeleteBloc extends ExtendedBloc<DeleteEvent, DeleteState> {
  final String _id;
  final Data _data;
  final Api _api;

  DeleteBloc(this._id, this._data, this._api) : super(DeleteState.form());

  @override
  Stream<DeleteState> mapEventToState(DeleteEvent event) async* {
    final _state = state;
    yield* event.map(
      change: (event) async* {
        if (_state is DeleteStateForm) {
          final value = Type.dirty(event.type);
          yield _state.copyWith(type: value, status: Formz.validate([value]));
        }
      },
      submit: (event) async* {
        if (_state is DeleteStateForm) {
          try {
            yield _state.copyWith(status: FormzStatus.submissionInProgress);
            switch (_state.type.value) {
              case DeleteType.local:
                _deleteLocal(_id);
                break;
              case DeleteType.favourites:
                _deleteLocal(_id);
                final found = _deleteUser(_id);
                if (!found) {
                  throw UserException("Can't find document in favourites.");
                }
                break;
              case DeleteType.remove:
                _deleteLocal(_id);
                _deleteUser(_id);
                updateUserAvailableDelete(_data, _id);
                await _api.send(null, Share_Remove_Request()..id = _id);
                break;
              case DeleteType.delete:
                _deleteLocal(_id);
                _deleteUser(_id);
                updateUserAvailableDelete(_data, _id);
                await _api.send(null, Share_Delete_Request()..id = _id);
                break;
            }
            yield DeleteState.done();
          } catch (ex) {
            // Clear submissionInProgress on error
            yield _state.copyWith(status: Formz.validate([_state.type]));
            throw (ex);
          }
        }
      },
    );
  }

  void _deleteLocal(String id) {
    _data.shares.delete(_id);
  }

  bool _deleteUser(String id) {
    final userFavIndex = _data.user.value.favourites.indexWhere((fav) => fav.id == _id);
    if (userFavIndex == -1) {
      return false;
    }
    _data.user.op(op.user.favourites.index(userFavIndex).delete());
    return true;
  }
}
