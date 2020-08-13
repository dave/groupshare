import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/data.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/auth.pb.dart';
import 'package:groupshare/ui/base_model.dart';

class AuthModel extends BaseModel {
  Future<void> getAuth(String code) async {
    final device = locator<Device>();
    final api = locator<Api>();
    final auth = locator<Auth>();
    final data = locator<Data>();

    final req = Auth_Request()
      ..email = auth.email
      ..device = device.id
      ..time = auth.time
      ..test = true
      ..code = code;

    final resp = await api.send(req, Auth_Response());

    await auth.setId(resp.id);
    await auth.setHash(resp.hash);
    await data.initUser();
  }

  logoff() async {
    final auth = locator<Auth>();
    await auth.logoff();
  }
}
