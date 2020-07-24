//import 'package:flutter_test/flutter_test.dart';
//import 'package:groupshare/core/services/api.dart';
//import 'package:groupshare/locator.dart';
//import 'package:groupshare/pb/groupshare/data/share.pb.dart';
//import 'package:hive/hive.dart';
//
//void main() {
//  setUp(() async {
//    locator.registerSingleton<Api>(Api(prefix: LOCAL_PREFIX));
//  });
//  test('api test', () async {
//    final api = locator<Api>();
//    api.send(payload, reply)
//    final share = Share()..name = "Boat";
//    final id = await shares.add(share);
//    final share1 = shares.get(id);
//    expect(share1.name, "Boat");
//  });
//  tearDown(() async {
//    await Hive.deleteFromDisk();
//    await Hive.close();
//  });
//}
