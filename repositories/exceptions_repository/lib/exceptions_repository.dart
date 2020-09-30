class UserException implements Exception {
  String message;
  String debug;
  dynamic retry;

  UserException(this.message, {this.debug = "", this.retry});

  @override
  String toString() {
    //return "UserException: $message\n$debug";
    return "$message";
  }
}

class AuthException extends UserException {
  bool expired;

  AuthException(String message,
      {String debug = "", dynamic retry, bool expired = false})
      : this.expired = expired,
        super(message, debug: debug, retry: retry);

  @override
  String toString() {
    //return "AuthException: ${expired?'[expired]':''} $message\n$debug";
    return "$message";
  }
}
