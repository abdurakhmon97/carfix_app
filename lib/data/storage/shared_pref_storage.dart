import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefStorage {
  static const String _themeKey = 'theme';
  static const String lightTheme = 'light';
  static const String darkTheme = 'dark';
  static const String systemTheme = 'system';
  static const String _localeKey = 'locale';

  static final SharedPrefStorage _instance = SharedPrefStorage._internal();

  factory SharedPrefStorage() {
    return _instance;
  }

  SharedPrefStorage._internal();

  late final SharedPreferences _prefs;

  bool _isInit = false;

  Future<void> initPrefs() async {
    if (_isInit) {
      return;
    }
    _isInit = true;
    _prefs = await SharedPreferences.getInstance();
  }

  //String get getTheme => _prefs.getString(_themeKey) ?? systemTheme;
  String get getTheme => _prefs.getString(_themeKey) ?? lightTheme;

  Future<void> setTheme(String theme) async =>
      await _prefs.setString(_themeKey, theme);

  String get getLocale => _prefs.getString(_localeKey) ?? "uz";

  Future<void> setLocale(String locale) async =>
      await _prefs.setString(_localeKey, locale);
}
