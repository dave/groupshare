import 'package:groupshare/core/services/device.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/token.pb.dart';

enum Status { Empty, Auth, Done }

class Auth {
  Token token() {
    final prefs = locator<Prefs>();
    final device = locator<Device>();
    return Token()
      ..id = prefs.id
      ..hash = prefs.hash
      ..device = device.id;
  }

  Status status() {
    final prefs = locator<Prefs>();
    if (prefs.email == null || prefs.time == null) {
      return Status.Empty;
    }
    if (prefs.hash == null || prefs.id == null) {
      return Status.Auth;
    }
    return Status.Done;
  }
}
