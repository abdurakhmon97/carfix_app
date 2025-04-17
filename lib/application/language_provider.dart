import 'package:carfix_app/data/storage/shared_pref_storage.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  static final LanguageProvider _instance = LanguageProvider._internal();

  factory LanguageProvider() {
    return _instance;
  }

  LanguageProvider._internal();

  AppLocale? _locale;

  AppLocale? get locale => _locale;

  Future<void> setLocale(AppLocale appLocale) async {
    if (!AppLocale.values.contains(appLocale)) return;
    final prefRepository = SharedPrefStorage();
    prefRepository.setLocale(appLocale.languageCode);
    _locale = locale;
    notifyListeners();
  }

  Future<void> loadLocale() async {
    final prefRepository = SharedPrefStorage();
    final String? localeCode = prefRepository.getLocale;
    if (localeCode == null) {
      _locale = AppLocale.uz;
      prefRepository.setLocale(AppLocale.uz.languageCode);
    } else {
      _locale = AppLocale.values.firstWhere(
        (locale) => locale.languageCode == localeCode,
        orElse: () => AppLocale.uz,
      );
    }
    notifyListeners();
  }
}
