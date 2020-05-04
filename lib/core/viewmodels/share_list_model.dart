import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/core/viewmodels/base_model.dart';
import 'package:groupshare/locator.dart';

class ShareListModel extends BaseModel {
  logoff() async {
    final prefs = locator<Prefs>();
    await prefs.clear();
  }
}
