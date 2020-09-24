class UserException implements Exception {
  String message;
  String debug;

  UserException(String message, {String debug = ""})
      : this.message = message,
        this.debug = debug;

  @override
  String toString() {
    return "UserException: $message\n$debug";
  }
}

class AuthException extends UserException {
  bool expired;
  AuthException(String message, {String debug = "", bool expired = false})
      : this.expired = expired,
        super(message, debug: debug);

  @override
  String toString() {
    return "AuthException: ${expired?'[expired]':''} $message\n$debug";
  }
}
