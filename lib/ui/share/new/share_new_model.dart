import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart' as data;
import 'package:groupshare/ui/base_model.dart';
import 'package:protod/pserver/store.dart';

class ShareNewModel extends BaseModel {
  Future newShare(String name) async {
    final store = locator<Store<data.Share>>();

    final item =
        await store.add(store.randomUnique(), data.Share()..name = name);

    print(item.value.name);
    // TODO: unfinished
  }
}
