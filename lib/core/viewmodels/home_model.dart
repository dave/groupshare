import 'package:groupshare/core/excpetions/exceptions.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/core/viewmodels/base_model.dart';
import 'package:groupshare/data/token.pb.dart';
import 'package:groupshare/locator.dart';

enum Status { Empty, Auth, Done, Error }

class HomeModel extends BaseModel {
  Future<Status> token() async {
    final prefs = await locator.getAsync<Prefs>();
    final device = locator<Device>();
    final api = locator<Api>();

    if (prefs.email == null || prefs.time == null) {
      await prefs.clear();
      return Status.Empty;
    }

    if (prefs.token == null) {
      return Status.Auth;
    }

    final req = TokenRequest.create()
      ..email = prefs.email
      ..device = device.id
      ..time = prefs.time
      ..token = prefs.token;

    try {
      await api.send<TokenRequest, TokenResponse>(req, TokenResponse());
    } on AuthException catch (ex) {
      // only clear the auth data if we get an auth error
      await prefs.clear();
      return Status.Error;
    } catch (ex) {
      return Status.Error;
    }
    return Status.Done;
  }
}
