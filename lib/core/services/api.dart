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
    T payload,
    U reply,
  ) async {
    final bytes = payload.writeToBuffer();
    Response response;
    for (var i = 0; i < _retries; i++) {
      response = await post(
        '$_prefix/$T',
        body: bytes,
      );
      if (response.statusCode == 200) {
        break;
      }
      //print(response.statusCode);
      //print(response.body);
      sleep(Duration(milliseconds: (500 + _rand.nextInt(500 * (1 << i)))));
    }
    if (response.statusCode != 200) {
      throw UserException("Error ${response.statusCode}");
    }
    reply.mergeFromBuffer(response.bodyBytes);

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

  String randomUnique() {
    var values = List<int>.generate(16, (i) => _rand.nextInt(255));
    return base64UrlEncode(values);
  }
}
