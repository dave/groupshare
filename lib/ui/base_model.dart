import 'package:flutter/widgets.dart';
import 'package:groupshare/core/enums/viewstate.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;
  bool get busy => _state == ViewState.Busy;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
