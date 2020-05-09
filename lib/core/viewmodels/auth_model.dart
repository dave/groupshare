import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/messages/auth.pb.dart';

import 'base_model.dart';

class AuthModel extends BaseModel {
  Future getAuth(String code) async {
    final device = locator<Device>();
    final prefs = locator<Prefs>();
    final api = locator<Api>();

    final req = Auth_Request.create()
      ..email = prefs.email
      ..device = device.id
      ..time = prefs.time
      ..code = code;

    final resp =
        await api.send<Auth_Request, Auth_Response>(req, Auth_Response());
    await prefs.setToken(resp.token);
  }

  logoff() async {
    final prefs = locator<Prefs>();
    await prefs.clear();
  }
}
