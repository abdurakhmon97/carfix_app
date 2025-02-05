import 'dart:ui';

import 'package:carfix_app/data/storage/shared_pref_storage.dart';
import 'package:flutter/material.dart';

const _seedColor = Color(0xFFD3EA60);

class AppTheme {
  static late ThemeMode themeType;

  static late ThemeData data;
  static late SharedPrefStorage sharedPrefService;
  static late ColorScheme colorScheme;

  static Future<void> init() async {
    try {
      sharedPrefService = SharedPrefStorage();
      switch (sharedPrefService.getTheme) {
        case SharedPrefStorage.lightTheme:
          themeType = ThemeMode.light;
          colorScheme = ColorScheme.fromSeed(
            seedColor: _seedColor,
          );
        case SharedPrefStorage.darkTheme:
          themeType = ThemeMode.dark;
          colorScheme = ColorScheme.fromSeed(
            seedColor: _seedColor,
            brightness: Brightness.dark,
          );
        default:
          themeType = ThemeMode.system;
          if (PlatformDispatcher.instance.platformBrightness ==
              Brightness.dark) {
            colorScheme = ColorScheme.fromSeed(
              seedColor: _seedColor,
              brightness: Brightness.dark,
            );
          } else {
            colorScheme = ColorScheme.fromSeed(
              seedColor: _seedColor,
            );
          }
      }

      data = ThemeData(
        useMaterial3: true,
        textTheme: _material3TextTheme(),
        colorScheme: colorScheme,
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: colorScheme.primaryContainer,
        brightness: themeType == ThemeMode.light
            ? Brightness.light
            : themeType == ThemeMode.dark
                ? Brightness.dark
                : PlatformDispatcher.instance.platformBrightness,
      );
    } catch (_) {}
  }

  static _material3TextTheme() => TextTheme(
        displayLarge: TextStyle(
          fontSize: 57.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.25,
          height: 1.12,
          color: colorScheme.onSurface,
        ),
        displayMedium: TextStyle(
          fontSize: 45.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.0,
          height: 1.15,
          color: colorScheme.onSurface,
        ),
        displaySmall: TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.0,
          height: 1.22,
          color: colorScheme.onSurface,
        ),
        headlineLarge: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.0,
          height: 1.25,
          color: colorScheme.onSurface,
        ),
        headlineMedium: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.0,
          height: 1.25,
          color: colorScheme.onSurface,
        ),
        headlineSmall: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.0,
          height: 1.33,
          color: colorScheme.onSurface,
        ),
        titleLarge: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.0,
          height: 1.27,
          color: colorScheme.onSurface,
        ),
        titleMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          height: 1.5,
          color: colorScheme.onSurface,
        ),
        titleSmall: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          height: 1.43,
          color: colorScheme.onSurface,
        ),
        bodyLarge: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
          height: 1.5,
          color: colorScheme.onSurface,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          height: 1.43,
          color: colorScheme.onSurface,
        ),
        bodySmall: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          height: 1.33,
          color: colorScheme.onSurface,
        ),
        labelLarge: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          height: 1.43,
          color: colorScheme.onSurface,
        ),
        labelMedium: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          height: 1.33,
          color: colorScheme.onSurface,
        ),
        labelSmall: TextStyle(
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          height: 1.27,
          color: colorScheme.onSurface,
        ),
      );
}

class AppTextTheme extends TextTheme {
  const AppTextTheme({
    this.commonRedStyle,
  });

  final TextStyle? commonRedStyle;
}
