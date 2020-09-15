import 'dart:io';

import 'package:flutter_is_emulator/flutter_is_emulator.dart';

class Discovery {
  bool _simulator;
  final bool _live;

  Discovery(this._live);

  Future<void> init() async {
    _simulator = await FlutterIsEmulator.isDeviceAnEmulatorOrASimulator;
  }

  String prefix() {
    if (_live) {
      return 'https://groupshare.uc.r.appspot.com';
    }
    if (_simulator && Platform.isAndroid) {
      return 'http://10.0.2.2:8080';
    }
    return 'http://localhost:8080';
  }
}
