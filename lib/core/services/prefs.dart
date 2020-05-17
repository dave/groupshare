import 'package:shared_preferences/shared_preferences.dart';

enum _prefsKey {
  Email,
  Time,
  Id,
  Hash,
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
    await _prefs.remove(_prefsKey.Id.toString());
    await _prefs.remove(_prefsKey.Hash.toString());
  }

  String get email => _prefs.getString(_prefsKey.Email.toString());
  String get time => _prefs.getString(_prefsKey.Time.toString());
  String get id => _prefs.getString(_prefsKey.Id.toString());
  String get hash => _prefs.getString(_prefsKey.Hash.toString());

  Future<bool> setEmail(String value) async {
    return _prefs.setString(_prefsKey.Email.toString(), value);
  }

  Future<bool> setTime(String value) async {
    return _prefs.setString(_prefsKey.Time.toString(), value);
  }

  Future<bool> setId(String value) async {
    return _prefs.setString(_prefsKey.Id.toString(), value);
  }

  Future<bool> setHash(String value) async {
    return _prefs.setString(_prefsKey.Hash.toString(), value);
  }

  Future<bool> removeId() async {
    return _prefs.remove(_prefsKey.Id.toString());
  }

  Future<bool> removeHash() async {
    return _prefs.remove(_prefsKey.Hash.toString());
  }
}
