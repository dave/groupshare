class Indicator {
  bool _offline = false;
  Map<String, ConnState> _connections = {};

  setOffline(bool isOffline) {
    _offline = isOffline;
  }

  connConnecting(String key) {
    _connections[key] = ConnState.CONNECTING;
  }

  connWaiting(String key) {
    _connections[key] = ConnState.WAITING;
  }

  connFinished(String key) {
    _connections.remove(key);
  }

  ConnState get connState {
    if (_offline) {
      return ConnState.OFFLINE;
    } else {
      if (_connections.containsValue(ConnState.CONNECTING)) {
        return ConnState.CONNECTING;
      } else if (_connections.containsValue(ConnState.WAITING)) {
        return ConnState.WAITING;
      } else {
        return ConnState.SAVED;
      }
    }
  }
}

enum ConnState {
  SAVED,
  CONNECTING,
  WAITING,
  OFFLINE,
}
