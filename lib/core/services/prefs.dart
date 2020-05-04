import 'package:shared_preferences/shared_preferences.dart';

enum _prefsKey {
  Email,
  Time,
  Token,
}

class Prefs {
  final SharedPreferences _prefs;

  Prefs(SharedPreferences prefs) : _prefs = prefs;

  static Future<Prefs> initialise() async {
    return Prefs(await SharedPreferences.getInstance());
  }

  clear() async {
    await _prefs.remove(_prefsKey.Email.toString());
    await _prefs.remove(_prefsKey.Time.toString());
    await _prefs.remove(_prefsKey.Token.toString());
  }

  String get email => _prefs.getString(_prefsKey.Email.toString());
  String get time => _prefs.getString(_prefsKey.Time.toString());
  String get token => _prefs.getString(_prefsKey.Token.toString());

  Future<bool> setEmail(String value) async {
    return _prefs.setString(_prefsKey.Email.toString(), value);
  }

  Future<bool> setTime(String value) async {
    return _prefs.setString(_prefsKey.Time.toString(), value);
  }

  Future<bool> setToken(String value) async {
    return _prefs.setString(_prefsKey.Token.toString(), value);
  }

  Future<bool> removeToken() async {
    return _prefs.remove(_prefsKey.Token.toString());
  }
}
