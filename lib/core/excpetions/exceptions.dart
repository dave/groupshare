class UserException implements Exception {
  String message;
  UserException(this.message);
}

class AuthException extends UserException {
  bool expired;
  AuthException(String message, [bool expired = false])
      : this.expired = expired,
        super(message);
}
