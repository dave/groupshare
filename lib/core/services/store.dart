import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/pb/groupshare/messages/share.pb.dart' as messages;
import 'package:protod/pserver/data.pb.dart';
import 'package:protod/pserver/store.dart';

class ShareAdapter extends StoreAdapter<Share> {
  final Api _api;
  final Auth _auth;
  ShareAdapter()
      : this._api = locator<Api>(),
        this._auth = locator<Auth>();

  @override
  Future<GetResponse<Share>> get(String id) async {
    final request = messages.Share_Get_Request()
      ..token = _auth.token()
      ..id = id;
    final response = await _api.send(request, messages.Share_Get_Response());
    return GetResponse<Share>(response.state, response.share);
  }

  @override
  Future<Payload_Response> edit(Payload_Request payload) async {
    final request = messages.Share_Edit_Request()
      ..token = _auth.token()
      ..payload = payload;
    final response = await _api.send(request, messages.Share_Edit_Response());
    return response.payload;
  }

  @override
  Future<void> add(String id, Share value) async {
    final request = messages.Share_Add_Request()
      ..token = _auth.token()
      ..id = id
      ..share = value;
    await _api.send(request, messages.Share_Add_Response());
    return;
  }
}
