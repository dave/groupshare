import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/data/data.op.dart';
import 'package:groupshare/pb/groupshare/data/share.pb.dart';
import 'package:groupshare/pb/groupshare/messages/auth.pb.dart';
import 'package:protod/delta/delta.dart';
import 'package:protod/google/protobuf/any.pb.dart';
import 'package:protod/pstore/pstore.pb.dart';

void main() {
  setUp(() async {
    locator.registerSingleton<Auth>(AuthMock());
    locator.registerSingleton<Api>(Api(prefix: LOCAL_PREFIX));
  });
  test('api test', () async {
    final api = locator<Api>();
    final auth = locator<Auth>();

    final token = await getToken(api, "a@b.c");

    var authMock = auth as AuthMock;
    authMock
      ..t = token
      ..s = Status.Done;

    final id = api.randomUnique();
    final type = Share().info_.qualifiedMessageName;
    // session1 - adds the share then sets the name
    var session1share = Share()..name = "a";
    var session1state = Int64(1);
    await api.send(
      Payload_Add_Request()
        ..documentType = type
        ..documentId = id
        ..value = Any.pack(session1share),
      null,
    );

    final session1opSetName = Op().Share().Name().Set("b");
    apply(session1opSetName, session1share);
    expect(session1share.name, "b");
    final session1editResponse1 = await api.send(
      Payload_Edit_Request()
        ..documentType = type
        ..documentId = id
        ..stateId = api.randomUnique()
        ..state = session1state
        ..op = session1opSetName,
      Payload_Edit_Response(),
    );
    session1state = session1editResponse1.state;
    apply(session1editResponse1.op, session1share);
    expect(session1share.name, "b");
    expect(session1state, Int64(2));

    // session2 - gets the share and edits the name
    final session2getResponse = await api.send(
      Payload_Get_Request()
        ..documentType = type
        ..documentId = id,
      Payload_Get_Response(),
    );
    var session2state = session2getResponse.state;
    var session2share = session2getResponse.value.unpackInto(Share());
    expect(session2share.name, "b");
    expect(session2state, Int64(2));

    final session2opEditNameAppendC = Op().Share().Name().Edit("b", "bc");
    apply(session2opEditNameAppendC, session2share);
    expect(session2share.name, "bc");
    final session2editResponse1 = await api.send(
      Payload_Edit_Request()
        ..documentType = type
        ..documentId = id
        ..stateId = api.randomUnique()
        ..state = session2state
        ..op = session2opEditNameAppendC,
      Payload_Edit_Response(),
    );
    session2state = session2editResponse1.state;
    apply(session2editResponse1.op, session2share);
    expect(session2share.name, "bc");
    expect(session2state, Int64(3));

    // session1 - edits name
    final session1opEditNameAppendD = Op().Share().Name().Edit("b", "bd");
    apply(session1opEditNameAppendD, session1share);
    expect(session1share.name, "bd");
    final session1editResponse2 = await api.send(
      Payload_Edit_Request()
        ..documentType = type
        ..documentId = id
        ..stateId = api.randomUnique()
        ..state = session1state
        ..op = session1opEditNameAppendD,
      Payload_Edit_Response(),
    );
    session1state = session1editResponse2.state;
    apply(session1editResponse2.op, session1share);
    expect(session1share.name, "bcd");
    expect(session1state, Int64(4));
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
