import 'package:device_id/device_id.dart';

abstract class Device {
  String get id;
}

class DeviceImpl implements Device {
  final String _id;

  DeviceImpl(String id) : _id = id;

  static Future<DeviceImpl> initialise() async {
    return DeviceImpl(await DeviceId.getID);
  }

  String get id => _id;
}

class DeviceMock implements Device {
  final String _id;

  DeviceMock(String id) : _id = id;

  String get id => _id;
}
