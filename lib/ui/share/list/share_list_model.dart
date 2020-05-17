import 'package:groupshare/core/enums/viewstate.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/share.pb.dart';
import 'package:groupshare/ui/base_model.dart';

class ShareListModel extends BaseModel {
  List<String> _shares;
  List<String> get shares => _shares;

  initialise() async {
    setState(ViewState.Busy);
    final api = locator<Api>();
    final auth = locator<Auth>();
    final req = Share_List_Request()..token = auth.token();
    final resp = await api.send(req, Share_List_Response());
    _shares = resp.shares;
    setState(ViewState.Idle);
  }

  logoff() async {
    final prefs = locator<Prefs>();
    await prefs.clear();
  }
}
