import 'package:groupshare/core/enums/viewstate.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/share.pb.dart';
import 'package:groupshare/ui/base_model.dart';

class ShareListModel extends BaseModel {
  List<String> _shares;
  Map<String, String> _names;
  List<String> get shares => _shares ?? [];
  Map<String, String> get names => _names ?? {};

  initialise() async {
    setState(ViewState.Busy);
    final api = locator<Api>();
    final req = Share_List_Request();
    final resp = await api.send(req, Share_List_Response());
    _shares = resp.shares;
    _names = resp.names;
    setState(ViewState.Idle);

    // TODO: add Store code in here
  }

  logoff() async {
    final prefs = locator<Prefs>();
    await prefs.clear();
  }
}
