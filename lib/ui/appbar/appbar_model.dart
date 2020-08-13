import 'package:flutter/material.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/indicator.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/ui/base_model.dart';

class AppBarModel extends BaseModel {
  Indicator _indicator = locator<Indicator>();
  Status _status;
  Status get status => _status;
  ConnState get connState => _indicator.connState;

  initialise() {
    final auth = locator<Auth>();
    _status = auth.status;
  }

  logoff() async {
    final auth = locator<Auth>();
    await auth.logoff();
  }

  IconData get indicatorIcon {
    switch (_indicator.connState) {
      case ConnState.SAVED:
        return Icons.cloud_done;
      case ConnState.CONNECTING:
        return Icons.cloud_upload;
      case ConnState.WAITING:
        //return Icons.cloud; ?
        return Icons.cached;
      case ConnState.OFFLINE:
        return Icons.cloud_off;
      default:
        throw Exception();
    }
  }

  String get indicatorText {
    switch (_indicator.connState) {
      case ConnState.SAVED:
        return "Saved";
      case ConnState.CONNECTING:
        return "Saving";
      case ConnState.WAITING:
        return "Retrying";
      case ConnState.OFFLINE:
        return "Offline";
      default:
        throw Exception();
    }
  }
}
