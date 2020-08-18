import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:api_repository/pb/api/error.pb.dart';
import 'package:connection_repository/connection_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:http/http.dart';
import 'package:protobuf/protobuf.dart';
import 'package:protod/pmsg/pmsg.dart';

const LOCAL_PREFIX = 'http://localhost:8080';
const LIVE_PREFIX = 'https://groupshare.uc.r.appspot.com';
const TIMEOUT_SECONDS = 2;

class Api {
  final String _prefix;
  final int _retries;
  final Connection _conn;
  final Random _rand;
  bool _online;
  StreamSubscription<bool> _connChangeSubscription;

  bool online() => _online;

  Api(Connection conn, {String prefix = LOCAL_PREFIX, int retries = 20})
      : _conn = conn,
        _retries = retries,
        _prefix = prefix,
        _rand = Random();

  Future<void> init() async {
    // start watching connection state
    if (_connChangeSubscription == null) {
      _connChangeSubscription = _conn.changed.listen((bool connected) {
        _connected(connected);
      });
    }
    _connected(await _conn.check());
  }

  // tokens is a list of messages that are added to all api requests. Used by
  // the auth package to add the auth token.
  Map<dynamic, GeneratedMessage> tokens = {};

  Future<R> send<R extends GeneratedMessage, Q extends GeneratedMessage>(
    R response,
    Q request,
  ) async {
    final indicatorId = randomUnique();
    try {
      _connecting(indicatorId);

      var requestBundle = Bundle();
      tokens.forEach((_, t) {
        requestBundle.set(t);
      });
      requestBundle.set(request);

      final requestBundleBytes = requestBundle.writeToBuffer();
      Response httpResponse;
      for (var i = 0; i < _retries; i++) {
        if (i > 0) {
          _waiting(indicatorId);
          await Future.delayed(Duration(
            milliseconds: (500 + _rand.nextInt(500 * (1 << i))),
          ));
          _connecting(indicatorId);
        }
        httpResponse = await post(
          '$_prefix/',
          body: requestBundleBytes,
        ).timeout(
          Duration(seconds: TIMEOUT_SECONDS),
          onTimeout: () => throw UserException("Timeout"),
        );
        if (httpResponse.statusCode == 200) {
          break;
        }
        if (httpResponse.statusCode == 503) {
          continue;
        }
        throw UserException(
          "Error ${httpResponse.statusCode}: ${httpResponse.body}",
        );
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
    } finally {
      _finished(indicatorId);
    }
  }

  String randomUnique() {
    var values = List<int>.generate(16, (i) => _rand.nextInt(255));
    return base64UrlEncode(values);
  }

  Map<String, ConnectionState> _connections = {};

  _changed() {
    final _new = _state;
    if (_previous == null || _new != _previous) {
      _controller.add(_new);
      _previous = _new;
    }
  }

  _connected(bool connected) {
    _online = connected;
    _changed();
  }

  _connecting(String key) {
    _connections[key] = ConnectionState.Connecting;
    _changed();
  }

  _waiting(String key) {
    _connections[key] = ConnectionState.Waiting;
    _changed();
  }

  _finished(String key) {
    _connections.remove(key);
    _changed();
  }

  ConnectionState _previous;

  ConnectionState get _state {
    if (!_online) {
      return ConnectionState.Offline;
    } else {
      if (_connections.containsValue(ConnectionState.Connecting)) {
        return ConnectionState.Connecting;
      } else if (_connections.containsValue(ConnectionState.Waiting)) {
        return ConnectionState.Waiting;
      } else {
        return ConnectionState.Saved;
      }
    }
  }

  final _controller = StreamController<ConnectionState>.broadcast();

  Stream<ConnectionState> get state async* {
    yield _state;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}

enum ConnectionState {
  Saved,
  Connecting,
  Waiting,
  Offline,
}
