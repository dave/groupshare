import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/auth.pb.dart';

import '../base_model.dart';

class LoginModel extends BaseModel {
  Future sendEmail(String email) async {
    final device = locator<Device>();
    final api = locator<Api>();
    final auth = locator<Auth>();

    final req = Login_Request()
      ..device = device.id
      ..email = email;

    final resp = await api.send(req, Login_Response());
    await auth.setEmail(email);
    await auth.setTime(resp.time);
    await auth.removeHash();
  }
}
