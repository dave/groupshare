import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/data/auth.pb.dart';
import 'package:groupshare/locator.dart';

import 'base_model.dart';

class AuthModel extends BaseModel {
  Future getAuth(String code) async {
    final device = locator<Device>();
    final prefs = locator<Prefs>();
    final api = locator<Api>();

    final req = AuthRequest.create()
      ..email = prefs.email
      ..device = device.id
      ..time = prefs.time
      ..code = code;

    final resp = await api.send<AuthRequest, AuthResponse>(req, AuthResponse());
    await prefs.setToken(resp.token);
  }
}
