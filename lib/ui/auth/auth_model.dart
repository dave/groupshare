import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/auth.pb.dart';

import '../base_model.dart';

class AuthModel extends BaseModel {
  Future getAuth(String code) async {
    final device = locator<Device>();
    final prefs = locator<Prefs>();
    final api = locator<Api>();

    final req = Auth_Request()
      ..email = prefs.email
      ..device = device.id
      ..time = prefs.time
      ..test = true
      ..code = code;

    final resp = await api.send(req, Auth_Response());
    await prefs.setId(resp.id);
    await prefs.setHash(resp.hash);
  }

  logoff() async {
    final prefs = locator<Prefs>();
    await prefs.clear();
  }
}
