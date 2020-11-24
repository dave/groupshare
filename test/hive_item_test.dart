import 'dart:convert';
import 'dart:math';

import 'package:data/data.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:pserver/pserver/pserver.dart';

const BOX_NAME = 'shares-hive-test';

void main() {
  Hive.registerAdapter(ItemAdapter<Share>(0, null));
  setUp(() async {
    Hive.init('.');
    Hive.deleteBoxFromDisk(BOX_NAME);
  });
  test('can save an empty item', () async {
    var items = await Hive.openBox<Item<Share>>(BOX_NAME);
    final item = Item<Share>(null, null, null, null, null, null, null);
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
    final item = Item<Share>(
      null,
      "",
      (Share()..name = "a"),
      Int64(2),
      'a',
      [
        op.share.name.set("b"),
        null,
        op.share.name.edit("b", "c"),
      ],
      [
        op.share.name.set("d"),
        null,
        op.share.name.edit("d", "e"),
      ],
    );
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
    expect(item1.buffer[0], op.share.name.set("b"));
    expect(item1.buffer[1], null);
    expect(item1.buffer[2], op.share.name.edit("b", "c"));
    expect(item1.overflow[0], op.share.name.set("d"));
    expect(item1.overflow[1], null);
    expect(item1.overflow[2], op.share.name.edit("d", "e"));
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
