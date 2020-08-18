//import 'package:flutter/widgets.dart';
//import 'package:groupshare/core/enums/viewstate.dart';
//import 'package:groupshare/locator.dart';
//import 'package:groupshare/services/auth.dart';
//
//class BaseModel extends ChangeNotifier {
//  ViewState _state = ViewState.Idle;
//
//  ViewState get state => _state;
//  bool get busy => _state == ViewState.Busy;
//  bool get offline => _state == ViewState.Offline;
//
//  void setState(ViewState viewState) {
//    _state = viewState;
//    notifyListeners();
//  }
//
//  logoff() async {
//    final auth = locator<Auth>();
//    await auth.logoff();
//  }
//}
