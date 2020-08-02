import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:groupshare/core/excpetions/exceptions.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/error.pb.dart';
import 'package:http/http.dart';
import 'package:protobuf/protobuf.dart';
import 'package:protod/pmsg/pmsg.dart';

const LOCAL_PREFIX = 'http://localhost:8080';
const LIVE_PREFIX = 'https://groupshare.uc.r.appspot.com';
const TIMEOUT_SECONDS = 2;

class Api {
  final String _prefix;
  final int _retries;
  final Auth _auth;
  final Random _rand;

  Api({String prefix = LOCAL_PREFIX, int retries = 20})
      : _retries = retries,
        _prefix = prefix,
        _auth = locator<Auth>(),
        _rand = Random();

  Future<U> send<T extends GeneratedMessage, U extends GeneratedMessage>(
    T request,
    U response,
  ) async {
    var requestBundle = Bundle();
    if (_auth.status() == Status.Done) {
      requestBundle.set(_auth.token());
    }
    requestBundle.set(request);

    final requestBundleBytes = requestBundle.writeToBuffer();
    Response httpResponse;
    for (var i = 0; i < _retries; i++) {
      if (i > 0) {
        print("sleep");
        sleep(Duration(milliseconds: (500 + _rand.nextInt(500 * (1 << i)))));
      }
      httpResponse = await post('$_prefix/', body: requestBundleBytes).timeout(
          Duration(seconds: TIMEOUT_SECONDS),
          onTimeout: () => throw UserException("Timeout"));
      if (httpResponse.statusCode == 200) {
        break;
      }
      if (httpResponse.statusCode == 503) {
        continue;
      }
      throw UserException("Error ${httpResponse.statusCode}");
    }
    var responseBundle = Bundle();
    responseBundle.mergeFromBuffer(httpResponse.bodyBytes);

    final error = responseBundle.get(Error());
    if (error != null) {
      switch (error.type) {
        case Error_Type.AUTH:
          throw AuthException(error.message);
        case Error_Type.EXPIRED:
          throw AuthException(error.message, true);
        default:
          throw UserException(error.message);
      }
    }
    if (response == null) {
      return null;
    }
    return responseBundle.get(response);
  }

  String randomUnique() {
    var values = List<int>.generate(16, (i) => _rand.nextInt(255));
    return base64UrlEncode(values);
  }
}
