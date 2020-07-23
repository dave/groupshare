import 'package:flutter_test/flutter_test.dart';
import 'package:groupshare/core/services/hive.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:hive/hive.dart';

void main() {
  setUp(() async {
    Hive.init('.');
    Hive.registerAdapter(ProtoAdapter<Share>(1, "data"));
    final box = await Hive.openBox<Share>('shares');
    locator.registerSingleton<Box<Share>>(box);
  });
  test('can save protobuf objects to hive', () async {
    final shares = locator<Box<Share>>();
    final share = Share()..name = "Boat";
    final id = await shares.add(share);
    final share1 = shares.get(id);
    expect(share1.name, "Boat");
  });
  tearDown(() async {
    await Hive.deleteFromDisk();
    await Hive.close();
  });
}
