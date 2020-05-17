import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart' as data;
import 'package:groupshare/pb/groupshare/messages/share.pb.dart';

import '../../base_model.dart';

class ShareNewModel extends BaseModel {
  Future newShare(String name) async {
    final api = locator<Api>();
    final auth = locator<Auth>();

    final req = Share_Add_Request.create()
      ..token = auth.token()
      ..share = (data.Share()..name = name);

    await api.send<Share_Add_Request, Share_Add_Response>(
      req,
      Share_Add_Response(),
    );
  }
}
