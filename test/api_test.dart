import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/data.op.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart' as data;
import 'package:groupshare/pb/groupshare/messages/auth.pb.dart';
import 'package:groupshare/pb/groupshare/messages/login.pb.dart';
import 'package:groupshare/pb/groupshare/messages/share.pb.dart';
import 'package:groupshare/pb/groupshare/messages/token.pb.dart';
import 'package:protod/delta/delta.dart';

void main() {
  setUp(() async {
    locator.registerSingleton<Api>(Api(prefix: LOCAL_PREFIX));
  });
  test('api test', () async {
    final api = locator<Api>();
    final token = await getToken(api, "a@b.c");

    // session1 - adds the share then sets the name
    var session1share = data.Share()..name = "a";
    var session1state = Int64(1);
    final session1addResponse = await api.send(
      Share_Add_Request()
        ..token = token
        ..request = api.randomUnique()
        ..share = session1share,
      Share_Add_Response(),
    );
    final id = session1addResponse.id;

    final session1opSetName = Op().Share().Name().Set("b");
    apply(session1opSetName, session1share);
    expect(session1share.name, "b");
    final session1editResponse1 = await api.send(
      Share_Edit_Request()
        ..token = token
        ..request = api.randomUnique()
        ..id = id
        ..state = session1state
        ..op = session1opSetName,
      Share_Edit_Response(),
    );
    session1state = session1editResponse1.state;
    apply(session1editResponse1.op, session1share);
    expect(session1share.name, "b");

    // session2 - gets the share and edits the name
    final session2getResponse = await api.send(
      Share_Get_Request()
        ..token = token
        ..id = id,
      Share_Get_Response(),
    );
    var session2state = session2getResponse.state;
    var session2share = session2getResponse.share;
    expect(session2share.name, "b");

    final session2opEditNameAppendC = Op().Share().Name().Edit("b", "bc");
    apply(session2opEditNameAppendC, session2share);
    expect(session2share.name, "bc");
    final session2editResponse1 = await api.send(
      Share_Edit_Request()
        ..token = token
        ..request = api.randomUnique()
        ..id = id
        ..state = session2state
        ..op = session2opEditNameAppendC,
      Share_Edit_Response(),
    );
    session2state = session2editResponse1.state;
    apply(session2editResponse1.op, session2share);
    expect(session2share.name, "bc");

    // session1 - edits name
    final session1opEditNameAppendD = Op().Share().Name().Edit("b", "bd");
    apply(session1opEditNameAppendD, session1share);
    expect(session1share.name, "bd");
    final session1editResponse2 = await api.send(
      Share_Edit_Request()
        ..token = token
        ..request = api.randomUnique()
        ..id = id
        ..state = session1state
        ..op = session1opEditNameAppendD,
      Share_Edit_Response(),
    );
    session1state = session1editResponse2.state;
    apply(session1editResponse2.op, session1share);
    expect(session1share.name, "bcd");
  });
}

Future<Token> getToken(Api api, String email) async {
  const _device = "a";
  final loginResp = await api.send(
    Login_Request()
      ..device = _device
      ..email = email,
    Login_Response(),
  );
  final authResp = await api.send(
    Auth_Request()
      ..email = email
      ..device = _device
      ..time = loginResp.time
      ..code = ""
      ..test = true, // accept incorrect code (testing only)
    Auth_Response(),
  );
  return Token()
    ..id = authResp.id
    ..hash = authResp.hash
    ..device = _device;
}
