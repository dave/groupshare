import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/data/login.pb.dart';
import 'package:groupshare/locator.dart';

import 'base_model.dart';

class LoginModel extends BaseModel {
  Future sendEmail(String email) async {
    final device = locator<Device>();
    final api = locator<Api>();
    final prefs = locator<Prefs>();

    final req = LoginRequest.create()
      ..device = device.id
      ..email = email;

    final resp = await api.send<LoginRequest, LoginResponse>(req);
    if (resp.err.error) {
      throw Exception(resp.err.message);
    }

    await prefs.setEmail(email);
    await prefs.setTime(resp.time);
    await prefs.removeToken();
  }
}
