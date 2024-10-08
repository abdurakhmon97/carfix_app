import 'dart:ui';

import 'package:carfix_app/data/storage/shared_pref_storage.dart';
import 'package:carfix_app/utils/theme/dark_theme.dart';
import 'package:carfix_app/utils/theme/theme_settings.dart';
import 'package:flutter/material.dart';

import 'base_colors.dart';
import 'light_theme.dart';

class AppTheme {
  static late BaseColors colors;
  static late ThemeMode themeType;

  static late ThemeData data;
  static late SharedPrefStorage sharedPrefService;

  static Future<void> init() async {
    try {
      sharedPrefService = SharedPrefStorage();
      colors = _getThemeColors();
      switch (sharedPrefService.getTheme) {
        case SharedPrefStorage.lightTheme:
          themeType = ThemeMode.light;
        case SharedPrefStorage.darkTheme:
          themeType = ThemeMode.dark;
        default:
          themeType = ThemeMode.system;
      }

      data = ThemeData(
        useMaterial3: true,
        canvasColor: colors.background,
        scaffoldBackgroundColor: colors.background,
        primaryColor: colors.secondaryPrimary,
        fontFamily: 'Montserrat',
        brightness: themeType == ThemeMode.light
            ? Brightness.light
            : themeType == ThemeMode.dark
                ? Brightness.dark
                : PlatformDispatcher.instance.platformBrightness,
      );
    } catch (_) {}
  }

  static BaseColors _getThemeColors() {
    switch (sharedPrefService.getTheme) {
      case SharedPrefStorage.lightTheme:
        return LightTheme(
            constColors: constantColors[SharedPrefStorage.lightTheme]!);
      case SharedPrefStorage.darkTheme:
        return DarkTheme(
            constColors: constantColors[SharedPrefStorage.darkTheme]!);
      default:
        final Brightness brightness =
            PlatformDispatcher.instance.platformBrightness;
        if (brightness == Brightness.dark) {
          return DarkTheme(
              constColors: constantColors[SharedPrefStorage.darkTheme]!);
        } else {
          return LightTheme(
              constColors: constantColors[SharedPrefStorage.lightTheme]!);
        }
    }
  }
}
