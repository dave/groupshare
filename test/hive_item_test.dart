import 'dart:convert';
import 'dart:math';

import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groupshare/pb/groupshare/data/data.op.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/pb/registry.dart';
import 'package:hive/hive.dart';
import 'package:protod/pserver/store.dart';

const BOX_NAME = 'shares-hive-test';

void main() {
  Hive.registerAdapter(ItemAdapter<Share>(0, types));
  setUp(() async {
    Hive.init('.');
    Hive.deleteBoxFromDisk(BOX_NAME);
  });
  test('can save an empty item', () async {
    var items = await Hive.openBox<Item<Share>>(BOX_NAME);
    final item = Item<Share>();
    final key = randomUnique();
    await items.put(key, item);

    // must re-open box in order to remove cached values
    Hive.init(".");
    items = await Hive.openBox<Item<Share>>(BOX_NAME);

    final item1 = items.get(key);

    // in this test we don't want hive to use the cached value, so we first
    // check that the object is not the same:
    expect(item == item1, false);

    expect(item1.value, null);
    expect(item1.state, Int64(0));
    expect(item1.requestId, '');
    expect(item1.buffer.length, 0);
    expect(item1.overflow.length, 0);
  });
  test('can save items to hive', () async {
    final key = randomUnique();
    var items = await Hive.openBox<Item<Share>>(BOX_NAME);
    final item = Item<Share>()
      ..value = (Share()..name = "a")
      ..state = Int64(2)
      ..requestId = 'a'
      ..buffer = [
        Op().Share().Name().Set("b"),
        null,
        Op().Share().Name().Edit("b", "c"),
      ]
      ..overflow = [
        Op().Share().Name().Set("d"),
        null,
        Op().Share().Name().Edit("d", "e"),
      ];
    await items.put(key, item);

    // must re-open box in order to remove cached values
    Hive.init(".");
    items = await Hive.openBox<Item<Share>>(BOX_NAME);

    final keys = items.keys.toList();
    expect(keys[0], key);
    final item1 = items.get(key);

    // in this test we don't want hive to use the cached value, so we first
    // check that the object is not the same:
    expect(item == item1, false);

    expect(item1.value, Share()..name = "a");
    expect(item1.state, Int64(2));
    expect(item1.requestId, 'a');
    expect(item1.buffer[0], Op().Share().Name().Set("b"));
    expect(item1.buffer[1], null);
    expect(item1.buffer[2], Op().Share().Name().Edit("b", "c"));
    expect(item1.overflow[0], Op().Share().Name().Set("d"));
    expect(item1.overflow[1], null);
    expect(item1.overflow[2], Op().Share().Name().Edit("d", "e"));
  });
  tearDown(() async {
    await Hive.deleteBoxFromDisk(BOX_NAME);
    await Hive.close();
  });
}

final _rand = Random();

String randomUnique() {
  var values = List<int>.generate(16, (i) => _rand.nextInt(255));
  return base64UrlEncode(values);
}
