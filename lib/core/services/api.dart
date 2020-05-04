import 'package:groupshare/core/excpetions/exceptions.dart';
import 'package:groupshare/data/auth.pb.dart';
import 'package:groupshare/data/error.pb.dart';
import 'package:groupshare/data/login.pb.dart';
import 'package:groupshare/data/token.pb.dart';
import 'package:http/http.dart';
import 'package:protobuf/protobuf.dart';

const _domain = 'http://localhost:8080';

class Api {
  Future<U> send<T extends GeneratedMessage, U extends GeneratedMessage>(
    T payload,
  ) async {
    final response = await post(
      '$_domain/$T',
      body: payload.writeToBuffer(),
    );
    final resp = fromBuffer<U>(response.bodyBytes);
    final errorField = resp.getTagNumber("err");
    if (errorField == null) {
      return resp;
    }
    final errorValue = resp.getFieldOrNull(errorField);
    if (errorValue == null) {
      return resp;
    }
    final error = errorValue as Error;
    switch (error.type) {
      case Error_Types.AUTH_ERROR:
        throw AuthException(error.message);
      case Error_Types.AUTH_EXPIRED:
        throw AuthException(error.message, true);
      default:
        throw UserException(error.message);
    }
  }

  T fromBuffer<T>(List<int> b) {
    switch (T) {
      case AuthResponse:
        return AuthResponse.fromBuffer(b) as T;
      case TokenResponse:
        return TokenResponse.fromBuffer(b) as T;
      case LoginResponse:
        return LoginResponse.fromBuffer(b) as T;
      default:
        throw Exception('$T is not defined in fromBuffer');
    }
  }
}
