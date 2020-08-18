//import 'package:device_repository/src/data.dart';
//import 'package:groupshare/locator.dart';
//import 'package:groupshare/pb/groupshare/data/data.op.dart';
//import 'package:groupshare/pb/groupshare/data/share.pb.dart';
//import 'package:groupshare/pb/groupshare/data/user.pb.dart';
//import 'package:groupshare/ui/base_model.dart';
//import 'package:protod/pserver/pserver.dart';
//
//class ShareAddModel extends BaseModel {
//  Future addShare(String name) async {
//    final store = locator<Store<Share>>();
//    final data = locator<Data>();
//
//    final share = Share()..name = name;
//    final id = store.randomUnique();
//
//    store.add(id, share);
//
//    data.user.op(Op().User().Shares().Insert(
//          0,
//          User_AvailableShare()
//            ..id = id
//            ..name = name
//            ..new_3 = true,
//        ));
//  }
//}
