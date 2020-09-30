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

const FAST_RETRY_INCREMENT = 3;

class Api {
  final Connection _conn;
  final Discovery _discovery;
  final int _retries;
  final int _timeout;

  Api(
    this._conn,
    this._discovery, {
    int retries,
    int timeout,
  })  : this._retries = retries,
        this._timeout = timeout,
        _rand = Random();

  Future<void> init() async {
    // start watching connection state
    _conn.stream.listen((bool connected) {
      if (connected) {
        _statusSuccess();
      } else {
        _statusOffline(true);
      }
    });
    final online = await _conn.check();
    _statusOffline(!online);
    if (online) {
      _broadcastBackOnline();
    }
  }

  // ************************ Background Tasks ************************

  Future<void> registerBackgroundTask(Future f, String note) async {
    try {
      await f;
    } catch (ex, stack) {
      print("error in task '$note': $ex\n$stack");
    }
  }

  // ************************ Tokens ************************

  // Tokens is a list of messages that are added to all api requests. Used by
  // the auth package to add the auth token.
  Map<dynamic, GeneratedMessage> _tokens = {};

  setToken(dynamic key, GeneratedMessage token) {
    _tokens[key] = token;
  }

  removeToken(dynamic key) {
    _tokens.remove(key);
  }

  // ************************ Send Function ************************

  Future<R> send<R extends GeneratedMessage, Q extends GeneratedMessage>(
    R response,
    Q request,
  ) async {
    final indicatorId = randomUnique();
    try {
      _statusConnecting(indicatorId);

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
      DateTime requestTime;
      for (var i = 0; i < _retries; i++) {
        if (i > 0) {
          _statusWaiting(indicatorId);

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
          ...
          16	4,096	8,192
          17	4,096	8,192
          18	8,192	16,384
          19	8,192	16,384
          */
          //print("retry $indicatorId $i: waiting ${delay}ms");

          await Future.delayed(Duration(
            milliseconds: delay,
          ));
          _statusConnecting(indicatorId);
        }
        count++;
        bool gotTimeout = false;
        requestTime = DateTime.now();
        try {
          final prefix = _discovery.prefix();

          httpResponse = await post(
            '$prefix/',
            body: requestBundleBytes,
          ).timeout(
            Duration(seconds: _timeout),
            onTimeout: () {
              gotTimeout = true;
              return null;
            },
          );
        } catch (ex, stack) {
          err = Error()
            ..message = "Connection error"
            ..debug = "$ex $stack"
            ..busy = false
            ..retry = true
            ..stop = true;
          if (_offline) {
            // if we get an error and we're already offline, don't retry
            break;
          } else {
            // exception: repeat loop (increment by 4 instead of 1)
            i = i + FAST_RETRY_INCREMENT;
            continue;
          }
        }
        if (gotTimeout) {
          err = Error()
            ..message = "Connection error"
            ..debug = "timeout"
            ..busy = false
            ..retry = true
            ..stop = true;
          if (_offline) {
            // if we get an error and we're already offline, don't retry
            break;
          } else {
            // timeout: repeat loop (increment by 4 instead of 1)
            i = i + FAST_RETRY_INCREMENT;
            continue;
          }
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
            i = i + FAST_RETRY_INCREMENT;
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
        i = i + FAST_RETRY_INCREMENT;
      }

      if (err == null) {
        _statusSuccess();
      } else {
        final suffix = count > 1 ? " after $count attempts" : "";
        final message = err.message + suffix;
        final debug = err.debug ?? "";
        if (err.stop && !_offline) {
          // only set the failed flag if online... if offline, then this error
          // is probably because you're offline.
          _statusFailed(true);
        }
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
      _statusFinished(indicatorId);
    }
  }

  // ************************ Status Stream ************************

  ConnectionStatus _previousStatus;
  final _statusStream = StreamController<ConnectionStatus>.broadcast();
  Map<String, ConnectionStatus> _connections = {};
  bool _offline = false;
  bool _failed = false;

  bool offline() => _offline;

  bool failed() => _failed;

  ConnectionStatus status() {
    if (_connections.containsValue(ConnectionStatus.Connecting)) {
      return ConnectionStatus.Connecting;
    } else if (_connections.containsValue(ConnectionStatus.Waiting)) {
      return ConnectionStatus.Waiting;
    } else if (_offline) {
      return ConnectionStatus.Offline;
    } else if (_failed) {
      return ConnectionStatus.Failed;
    } else {
      return ConnectionStatus.Saved;
    }
  }

  Stream<ConnectionStatus> get statusStream async* {
    yield status();
    yield* _statusStream.stream;
  }

  _broadcastStatusIfChanged() {
    final newStatus = status();
    if (_previousStatus == null || newStatus != _previousStatus) {
      _statusStream.add(newStatus);
      _previousStatus = newStatus;
    }
  }

  void disconnect() {
    _statusOffline(true);
  }

  _statusSuccess() {
    final wasOffline = _offline || _failed;

    _offline = false;
    _failed = false;
    _broadcastStatusIfChanged();

    if (wasOffline) {
      _broadcastBackOnline();
    }
  }

  _statusOffline(bool offline) {
    _offline = offline;
    _broadcastStatusIfChanged();
  }

  _statusFailed(bool failed) {
    _failed = failed;
    _broadcastStatusIfChanged();
  }

  _statusConnecting(String key) {
    _connections[key] = ConnectionStatus.Connecting;
    _broadcastStatusIfChanged();
  }

  _statusWaiting(String key) {
    _connections[key] = ConnectionStatus.Waiting;
    _broadcastStatusIfChanged();
  }

  _statusFinished(String key) {
    _connections.remove(key);
    _broadcastStatusIfChanged();
  }

  // ************************ Back Online Stream ************************

  final _backOnlineStream = StreamController<bool>.broadcast();

  Stream<bool> get backOnlineStream => _backOnlineStream.stream;

  _broadcastBackOnline() {
    _backOnlineStream.add(true);
  }

  // ************************ Random Unique ************************

  final Random _rand;

  String randomUnique() {
    var values = List<int>.generate(16, (i) => _rand.nextInt(255));
    return base64UrlEncode(values);
  }

  // ************************ Dispose ************************

  void dispose() {
    _statusStream.close();
    _backOnlineStream.close();
  }
}

enum ConnectionStatus {
  Saved,
  Connecting,
  Waiting,
  Offline,
  Failed,
}
