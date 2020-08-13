import 'package:groupshare/core/enums/viewstate.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/data.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/data.op.dart';
import 'package:groupshare/pb/groupshare/data/user.pb.dart';
import 'package:groupshare/pb/groupshare/messages/share.pb.dart';
import 'package:groupshare/ui/base_model.dart';

class ShareListModel extends BaseModel {
  List<User_AvailableShare> _items;
  List<User_AvailableShare> get items => _items ?? [];

  Future<void> initialise() async {
    setState(ViewState.Busy);

    final data = locator<Data>();

    if (data.user == null) {
      setState(ViewState.Offline);
      return;
    }

    _items = data.user.value.shares;
    setState(ViewState.Idle);

    final api = locator<Api>();

    if (!api.connected()) {
      return;
    }

    await data.user.send();

    final req = Share_List_Request();
    final response = await api.send(req, Share_List_Response());

    final shares = data.user.value.shares;
    response.items.forEach((Share_List_Response_Item item) {
      final i = shares.indexWhere((s) => s.id == item.id);
      if (i == -1) {
        // There is an item in the server response that isn't in the user
        // cache. Add to the cache.
        data.user.op(Op().User().Shares().Insert(
              shares.length,
              User_AvailableShare()
                ..id = item.id
                ..name = item.name,
            ));
      } else {
        // shares found in the list response have their new flag reset
        if (shares[i].new_3) {
          data.user.op(Op().User().Shares().Index(i).New().Set(false));
        }
      }
    });
    for (var i = shares.length - 1; i >= 0; i--) {
      // We have to iterate through in reverse when deleting items so as not to
      // shift the index when items are deleted
      final item = shares[i];
      if (!item.new_3 && !response.items.any((s) => s.id == item.id)) {
        // There is an item in the user cache that isn't in the server
        // response. Delete from the cache, but only if new flag is not set.
        data.user.op(Op().User().Shares().Index(i).Delete());
      }
    }

    _items = data.user.value.shares;
    setState(ViewState.Idle);
  }
}
