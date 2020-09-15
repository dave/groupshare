import 'package:device_id/device_id.dart';

class Device {
  String _id;
  String get id => _id;

  Future<void> init() async {
    _id = await DeviceId.getID;
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
