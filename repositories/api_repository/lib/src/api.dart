import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:api_repository/pb/api/error.pb.dart';
import 'package:connection_repository/connection_repository.dart';
import 'package:discovery_repository/discovery_repository.dart';
import 'package:exceptions_repository/exceptions_repository.dart';
import 'package:http/http.dart';
import 'package:protobuf/protobuf.dart';
import 'package:protod/pmsg/pmsg.dart';

class Api {
  final Connection _conn;
  final Discovery _discovery;
  final Random _rand;
  bool _offline = false;
  bool _failed = false;
  final int _retries;
  final int _timeout;

  bool offline() => _offline;
  bool failed() => _failed;

  Api(
    this._conn,
    this._discovery,
    this._retries,
    this._timeout,
  ) : _rand = Random();

  Future<void> init() async {
    // start watching connection state if Connection is supplied
    if (_conn != null) {
      _conn.changed.listen((bool connected) {
        _setOffline(!connected);
      });
      _setOffline(!await _conn.check());
    }
  }

  Future<void> registerBackgroundTask(Future f, String note) async {
    try {
      await f;
      _setSuccess();
    } catch (ex, stack) {
      print("error in task $note: $ex $stack");
    }
  }

  // Tokens is a list of messages that are added to all api requests. Used by
  // the auth package to add the auth token.
  Map<dynamic, GeneratedMessage> _tokens = {};

  setToken(dynamic key, GeneratedMessage token) {
    _tokens[key] = token;
  }

  removeToken(dynamic key) {
    _tokens.remove(key);
  }

  Future<R> send<R extends GeneratedMessage, Q extends GeneratedMessage>(
    R response,
    Q request,
  ) async {
    _clearOfflineFailed();
    final indicatorId = randomUnique();
    try {
      _connecting(indicatorId);

      var requestBundle = Bundle();
      _tokens.forEach((_, t) {
        requestBundle.set(t);
      });
      requestBundle.set(request);

      final requestBundleBytes = requestBundle.writeToBuffer();
      Response httpResponse;
      int count = 0;
      Bundle bundle;
      Error err;
      for (var i = 0; i < _retries; i++) {
        if (i > 0) {
          _waiting(indicatorId);

          // i ranges from 1 to 20.
          final factor0 = i ~/ 2.15; // factor0 ranges from 0 to 8
          final factor1 = factor0 + 5; // factor1 ranges from 5 to 13
          final factor2 = 1 << factor1; // factor2 ranges from 32 to 8,192
          final delay = factor2 + _rand.nextInt(factor2);
          /*
          i	min	max
          1	32	64
          2	32	64
          3	64	128
          4	64	128
          5	128	256
          6	128	256
          7	256	512
          8	256	512
          9	512	1,024
          10	512	1,024
          11	1,024	2,048
          12	1,024	2,048
          13	2,048	4,096
          14	2,048	4,096
          15	2,048	4,096
          16	4,096	8,192
          17	4,096	8,192
          18	8,192	16,384
          19	8,192	16,384
          */
          print("retry $i: waiting ${delay}ms");

          await Future.delayed(Duration(
            milliseconds: delay,
          ));
          _connecting(indicatorId);
        }
        count++;
        bool timeout = false;
        try {
          final prefix = _discovery.prefix();
          httpResponse = await post(
            '$prefix/',
            body: requestBundleBytes,
          ).timeout(
            Duration(seconds: _timeout),
            onTimeout: () {
              timeout = true;
              return null;
            },
          );
        } catch (ex) {
          // exception: repeat loop (increment by 4 instead of 1)
          i = i + 3;
          err = Error()
            ..message = "Connection error"
            ..debug = "$ex"
            ..busy = false
            ..retry = true
            ..stop = true;
          continue;
        }
        if (timeout) {
          // timeout: repeat loop (increment by 4 instead of 1)
          i = i + 3;
          err = Error()
            ..message = "Connection error"
            ..debug = "timeout"
            ..busy = false
            ..retry = true
            ..stop = true;
          continue;
        }
        if (httpResponse.statusCode == 200) {
          // success: break out of loop
          bundle = Bundle();
          bundle.mergeFromBuffer(httpResponse.bodyBytes);
          err = bundle.get(Error());
          if (err != null && err.busy) {
            // busy error: repeat loop (i increments by 1)
            continue;
          }
          if (err != null && err.retry) {
            // retry error: repeat loop (increment by 4 instead of 1)
            i = i + 3;
            continue;
          }
          // success or got a non-retry error: break from loop and continue
          break;
        }
        // any other http status: repeat loop (increment by 4 instead of 1)
        err = Error()
          ..message = "Connection error"
          ..debug = "http ${httpResponse.statusCode}: ${httpResponse.body}"
          ..busy = false
          ..retry = true
          ..stop = true;
        i = i + 3;
      }

      if (err == null) {
        _setSuccess();
      } else {
        final suffix = count > 1 ? " after $count attempts" : "";
        final message = err.message + suffix;
        final debug = err.debug ?? "";
        _setFailed(err.stop);
        if (err.auth) {
          throw AuthException(message, debug: debug, expired: err.expired);
        }
        throw UserException(message, debug: debug);
      }

      if (response == null) {
        return null;
      }
      return bundle.get(response);
    } finally {
      _finished(indicatorId);
    }
  }

  String randomUnique() {
    var values = List<int>.generate(16, (i) => _rand.nextInt(255));
    return base64UrlEncode(values);
  }

  Map<String, ConnectionStatus> _connections = {};

  _changed() {
    final _new = _status;
    if (_previous == null || _new != _previous) {
      _controller.add(_new);
      _previous = _new;
    }
  }

  _clearOfflineFailed() {
    _offline = false;
    _failed = false;
  }

  _setSuccess() {
    _offline = false;
    _failed = false;
    _changed();
  }

  _setOffline(bool offline) {
    _offline = offline;
    _changed();
  }

  _setFailed(bool failed) {
    _failed = failed;
    _changed();
  }

  _connecting(String key) {
    _connections[key] = ConnectionStatus.Connecting;
    _changed();
  }

  _waiting(String key) {
    _connections[key] = ConnectionStatus.Waiting;
    _changed();
  }

  _finished(String key) {
    _connections.remove(key);
    _changed();
  }

  ConnectionStatus _previous;

  ConnectionStatus get _status {
    if (_offline) {
      return ConnectionStatus.Offline;
    } else if (_failed) {
      return ConnectionStatus.Failed;
    } else if (_connections.containsValue(ConnectionStatus.Connecting)) {
      return ConnectionStatus.Connecting;
    } else if (_connections.containsValue(ConnectionStatus.Waiting)) {
      return ConnectionStatus.Waiting;
    } else {
      return ConnectionStatus.Saved;
    }
  }

  void goOffline() {
    _setOffline(true);
  }

  final _controller = StreamController<ConnectionStatus>.broadcast();

  Stream<ConnectionStatus> get statusChange async* {
    yield _status;
    yield* _controller.stream;
  }

  void dispose() => _controller.close();
}

enum ConnectionStatus {
  Saved,
  Connecting,
  Waiting,
  Offline,
  Failed,
}
