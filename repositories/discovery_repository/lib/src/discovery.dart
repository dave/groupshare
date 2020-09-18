import 'dart:io';

import 'package:flutter_is_emulator/flutter_is_emulator.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Discovery {
  bool _androidSimulator;
  final bool _live;

  Discovery(this._live);

  Future<void> init() async {
    if (!kIsWeb) {
      if (Platform.isAndroid) {
        _androidSimulator =
        await FlutterIsEmulator.isDeviceAnEmulatorOrASimulator;
      } else {
        _androidSimulator = false;
      }
    }
  }

  String prefix() {
    if (_live) {
      return 'https://groupshare.uc.r.appspot.com';
    }
    if (_androidSimulator) {
      return 'http://10.0.2.2:8080';
    }
    return 'http://localhost:8080';
  }
}
