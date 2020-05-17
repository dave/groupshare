import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/ui/base_model.dart';

class AppBarModel extends BaseModel {
  Status _status;
  Status get status => _status;

  initialise() {
    final auth = locator<Auth>();
    _status = auth.status();
  }

  logoff() async {
    final prefs = locator<Prefs>();
    await prefs.clear();
  }
}
