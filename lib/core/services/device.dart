import 'package:device_id/device_id.dart';

class Device {
  final String _id;

  Device(String id) : _id = id;

  static Future<Device> initialise() async {
    return Device(await DeviceId.getID);
  }

  String get id {
    return _id;
  }
}
