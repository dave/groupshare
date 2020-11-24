class UserException implements Exception {
  String message;
  String debug;

  UserException(this.message, {this.debug = ""});

  @override
  String toString() {
    //return "UserException: $message\n$debug";
    return "$message";
  }
}

class AuthException extends UserException {
  bool expired;

  AuthException(String message, {String debug = "", bool expired = false})
      : this.expired = expired,
        super(message, debug: debug);

  @override
  String toString() {
    //return "AuthException: ${expired?'[expired]':''} $message\n$debug";
    return "$message";
  }
}
