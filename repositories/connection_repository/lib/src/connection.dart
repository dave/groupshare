import 'package:connectivity/connectivity.dart';

class Connection {
  final Connectivity _connectivity = Connectivity();

  Stream<bool> get changed {
    return _connectivity.onConnectivityChanged.map(
      (ConnectivityResult result) {
        print(result.toString());
        return result != ConnectivityResult.none;
      },
    );
  }

  Future<bool> check() async {
    return await _connectivity.checkConnectivity() != ConnectivityResult.none;
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
