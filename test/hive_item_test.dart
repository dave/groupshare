import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/data.op.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/pb/registry.dart';
import 'package:hive/hive.dart';
import 'package:protod/pserver/store.dart';

void main() {
  setUp(() async {
    Hive.init('.');
    Hive.registerAdapter(ItemAdapter(0, types));
    locator.registerSingleton<Box<Item<Share>>>(
      await Hive.openBox<Item<Share>>('shares'),
    );
  });
  test('can save items to hive', () async {
    final items = locator<Box<Item<Share>>>();
    final item = Item<Share>()
      ..value = (Share()..name = "a")
      ..state = Int64(2)
      ..request = 'a'
      ..buffer = ([
        Op().Share().Name().Set("b"),
        Op().Share().Name().Edit("b", "c"),
      ]);
    await items.put("a", item);
    final keys = items.keys.toList();
    expect(keys[0], 'a');
    final item1 = items.get(keys[0]);
    expect(item1.value, Share()..name = "a");
    expect(item1.state, Int64(2));
    expect(item1.request, 'a');
    expect(item1.buffer[0], Op().Share().Name().Set("b"));
    expect(item1.buffer[1], Op().Share().Name().Edit("b", "c"));
  });
  tearDown(() async {
    await Hive.deleteFromDisk();
    await Hive.close();
  });
}
