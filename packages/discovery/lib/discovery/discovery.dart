import 'dart:io';

import 'package:flutter_is_emulator_fixed/flutter_is_emulator.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Discovery {
  bool _androidSimulator = false;
  final bool _live;

  Discovery(this._live);

  Future<void> init() async {
    if (!kIsWeb && Platform.isAndroid) {
      _androidSimulator = await FlutterIsEmulator.isDeviceAnEmulatorOrASimulator;
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
