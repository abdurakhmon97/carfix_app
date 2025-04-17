import 'package:carfix_app/data/storage/shared_pref_storage.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  static final ThemeProvider _instance = ThemeProvider._internal();

  factory ThemeProvider() {
    return _instance;
  }

  ThemeProvider._internal();

  ThemeMode _mode = ThemeMode.dark;

  ThemeMode get mode => _mode;

  void loadThemeMode() {
    final prefs = SharedPrefStorage();
    final mode = prefs.getTheme;
    if (mode == 'light') {
      _mode = ThemeMode.light;
    } else if (mode == 'dark') {
      _mode = ThemeMode.dark;
    }
    notifyListeners();
  }

  void setTheme(ThemeMode mode) {
    _mode = mode;
    final prefs = SharedPrefStorage();
    if (mode == ThemeMode.light) {
      prefs.setTheme('light');
    } else if (mode == ThemeMode.dark) {
      prefs.setTheme('dark');
    }
    notifyListeners();
  }
}
