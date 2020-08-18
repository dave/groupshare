//import 'package:api_repository/api_repository.dart';
//import 'package:auth_repository/auth_repository.dart';
//import 'package:flutter/material.dart';
//import 'package:groupshare/locator.dart';
//import 'package:groupshare/ui/base_model.dart';
//
//class AppBarModel extends BaseModel {
//  Api _api = locator<Api>();
//  Auth _auth = locator<Auth>();
//  Status _status;
//  Status get status => _status;
//
//  initialise() {
//    _status = _auth.status;
//  }
//
//  logoff() async {
//    final auth = locator<Auth>();
//    await auth.logoff();
//  }
//
//  IconData get indicatorIcon {
//    switch (_indicator.connState) {
//      case ConnState.SAVED:
//        return Icons.cloud_done;
//      case ConnState.CONNECTING:
//        return Icons.cloud_upload;
//      case ConnState.WAITING:
//        //return Icons.cloud; ?
//        return Icons.cached;
//      case ConnState.OFFLINE:
//        return Icons.cloud_off;
//      default:
//        throw Exception();
//    }
//  }
//
//  String get indicatorText {
//    switch (_indicator.connState) {
//      case ConnState.SAVED:
//        return "Saved";
//      case ConnState.CONNECTING:
//        return "Saving";
//      case ConnState.WAITING:
//        return "Retrying";
//      case ConnState.OFFLINE:
//        return "Offline";
//      default:
//        throw Exception();
//    }
//  }
//}
