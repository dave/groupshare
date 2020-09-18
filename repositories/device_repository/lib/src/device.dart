import 'package:device_id/device_id.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Device {
  String _id;
  String get id => _id;

  Future<void> init() async {
    if (kIsWeb) {
      _id = "foo";
    } else {
      _id = await DeviceId.getID;
    }
  }
}

//abstract class Device {
//  String get id;
//}
//
//class DeviceMock implements Device {
//  final String _id;
//
//  DeviceMock(String id) : _id = id;
//
//  String get id => _id;
//}
