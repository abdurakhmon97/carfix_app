import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefStorage {
  static const String _themeKey = 'theme';
  static const String lightTheme = 'light';
  static const String darkTheme = 'dark';
  static const String systemTheme = 'system';

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

  String get getTheme => _prefs.getString(_themeKey) ?? systemTheme;

  void setTheme(String theme) => _prefs.setString(_themeKey, theme);
}
