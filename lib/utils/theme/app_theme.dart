import 'dart:ui';

import 'package:carfix_app/data/storage/shared_pref_storage.dart';
import 'package:flutter/material.dart';

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
            seedColor: const Color(0xFFD3EA60),
          );
        case SharedPrefStorage.darkTheme:
          themeType = ThemeMode.dark;
          colorScheme = ColorScheme.fromSeed(
            seedColor: const Color(0xFFD3EA60),
            brightness: Brightness.dark,
          );
        default:
          themeType = ThemeMode.system;
          if (PlatformDispatcher.instance.platformBrightness ==
              Brightness.dark) {
            colorScheme = ColorScheme.fromSeed(
              seedColor: const Color(0xFFD3EA60),
              brightness: Brightness.dark,
            );
          } else {
            colorScheme = ColorScheme.fromSeed(
              seedColor: const Color(0xFFD3EA60),
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

/*static _darkColorScheme() => const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xFFD0BCFF),
        // Lighter variant of primary color
        onSurface: Color(0xFF381E72),
        // Text color on primary
        primaryContainer: Color(0xFF4F378B),
        // Primary container background
        onSurfaceContainer: Color(0xFFEADDFF),
        // Text on primary container
        secondary: Color(0xFFCCC2DC),
        // Secondary color
        onSecondary: Color(0xFF332D41),
        // Text on secondary
        secondaryContainer: Color(0xFF4A4458),
        // Secondary container background
        onSecondaryContainer: Color(0xFFE8DEF8),
        // Text on secondary container
        tertiary: Color(0xFFEFB8C8),
        // Tertiary color
        onTertiary: Color(0xFF492532),
        // Text on tertiary
        error: Color(0xFFF2B8B5),
        // Error color
        onError: Color(0xFF601410),
        // Text color on background
        surface: Color(0xFF1C1B1F),
        // Dark surface (card background)
        onSurface: Color(0xFFE6E1E5),
        // Text on surface
        surfaceContainerHighest: Color(0xFF49454F),
        // Alternate surface color
        onSurfaceVariant: Color(0xFFCAC4D0),
        // Text on alternate surface
        outline: Color(0xFF938F99), // Outlines and borders
      );

  static _lightColorScheme() => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF6750A4),
        // Main brand color
        onSurface: Color(0xFF342C2C),
        // Text color on primary
        primaryContainer: Color(0xFFEADDFF),
        // Background color for primary elements
        onSurfaceContainer: Color(0xFF21005D),
        // Text on primary container
        secondary: Color(0xFF625B71),
        // Secondary color
        onSecondary: Color(0xFFFFFFFF),
        // Text on secondary
        secondaryContainer: Color(0xFFE8DEF8),
        // Background color for secondary
        onSecondaryContainer: Color(0xFF1D192B),
        // Text on secondary container
        tertiary: Color(0xFF7D5260),
        // Tertiary color
        onTertiary: Color(0xFFFFFFFF),
        // Text on tertiary
        error: Color(0xFFB3261E),
        // Error color
        onError: Color(0xFFFFFFFF),
        // Text color on background
        surface: Color(0xFFFFFBFE),
        // Surface (card background)
        onSurface: Color(0xFF1C1B1F),
        // Text on surface
        surfaceContainerHighest: Color(0xFFE7E0EC),
        // Alternate surface color
        onSurfaceVariant: Color(0xFF49454F),
        // Text on alternate surface
        outline: Color(0xFF79747E), // Outlines and borders
      );*/
}
