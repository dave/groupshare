import 'package:device_id/device_id.dart';

class Device {
  final String _id;

  Device(String id) : _id = id;

  static Future<Device> initialise() async {
    return Device(await DeviceId.getID);
  }

  String get id => _id;
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
