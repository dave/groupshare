import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/pb/groupshare/messages/share.pb.dart' as messages;
import 'package:hive/hive.dart';
import 'package:protod/pserver/data.pb.dart';
import 'package:protod/pserver/store.dart';

setupStores() async {
  locator.registerSingleton<Store<Share>>(
    Store<Share>(await Hive.openBox<Item<Share>>('shares'), ShareAdapter()),
  );
}

class ShareAdapter extends StoreAdapter<Share> {
  final Api _api;
  final Auth _auth;
  ShareAdapter()
      : this._api = locator<Api>(),
        this._auth = locator<Auth>();

  @override
  Future<GetResponse<Share>> get(Payload_Get_Request payload) async {
    final request = messages.Share_Get_Request()
      ..token = _auth.token()
      ..payload = payload;
    final response = await _api.send(request, messages.Share_Get_Response());
    return GetResponse<Share>(response.payload, response.share);
  }

  @override
  Future<Payload_Edit_Response> edit(Payload_Edit_Request payload) async {
    final request = messages.Share_Edit_Request()
      ..token = _auth.token()
      ..payload = payload;
    final response = await _api.send(request, messages.Share_Edit_Response());
    return response.payload;
  }

  @override
  Future<Payload_Add_Response> add(
    Payload_Add_Request payload,
    Share value,
  ) async {
    final request = messages.Share_Add_Request()
      ..token = _auth.token()
      ..share = value
      ..payload = payload;
    final response = await _api.send(request, messages.Share_Add_Response());
    return response.payload;
  }
}
