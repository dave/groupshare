import 'package:groupshare/core/excpetions/exceptions.dart';
import 'package:groupshare/pb/groupshare/messages/error.pb.dart';
import 'package:http/http.dart';
import 'package:protobuf/protobuf.dart';

const _domain = 'http://localhost:8080';

class Api {
  Future<U> send<T extends GeneratedMessage, U extends GeneratedMessage>(
    T payload,
    U reply,
  ) async {
    final request = await post(
      '$_domain/$T',
      body: payload.writeToBuffer(),
    );
    if (request.statusCode != 200) {
      throw UserException("Error ${request.statusCode}");
    }
    // TODO: Need "(reply as GeneratedMessage)" for IntelliJ code completion. Remove?
    (reply as GeneratedMessage).mergeFromBuffer(request.bodyBytes);

    final errorField = reply.getTagNumber("err");
    if (errorField == null) {
      return reply;
    }
    final errorValue = reply.getFieldOrNull(errorField);
    if (errorValue == null) {
      return reply;
    }
    final error = errorValue as Error;
    switch (error.type) {
      case Error_Type.AUTH:
        throw AuthException(error.message);
      case Error_Type.EXPIRED:
        throw AuthException(error.message, true);
      default:
        throw UserException(error.message);
    }
  }
}
