import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:groupshare/core/excpetions/exceptions.dart';
import 'package:groupshare/pb/groupshare/messages/error.pb.dart';
import 'package:http/http.dart';
import 'package:protobuf/protobuf.dart';

const LOCAL_PREFIX = 'http://localhost:8080';
const LIVE_PREFIX = 'https://groupshare.uc.r.appspot.com';

class Api {
  final _prefix;
  final _retries;
  final _rand = Random();

  Api({String prefix = LOCAL_PREFIX, int retries = 20})
      : _retries = retries,
        _prefix = prefix;

  Future<U> send<T extends GeneratedMessage, U extends GeneratedMessage>(
    T request,
    U response,
  ) async {
    final requestBytes = request.writeToBuffer();
    Response httpResponse;
    for (var i = 0; i < _retries; i++) {
      if (i > 0) {
        sleep(Duration(milliseconds: (500 + _rand.nextInt(500 * (1 << i)))));
      }
      httpResponse = await post(
        '$_prefix/$T',
        body: requestBytes,
      );
      if (httpResponse.statusCode == 200) {
        break;
      }
      if (httpResponse.statusCode == 503) {
        continue;
      }
      throw UserException("Error ${httpResponse.statusCode}");
    }
    response.mergeFromBuffer(httpResponse.bodyBytes);

    final errorField = response.getTagNumber("err");
    if (errorField == null) {
      return response;
    }
    final errorValue = response.getFieldOrNull(errorField);
    if (errorValue == null) {
      return response;
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

  String randomUnique() {
    var values = List<int>.generate(16, (i) => _rand.nextInt(255));
    return base64UrlEncode(values);
  }
}
