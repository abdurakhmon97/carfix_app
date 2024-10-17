import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:carfix_app/data/storage/shared_pref_storage.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:equatable/equatable.dart';

part 'language_event.dart';

part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageInitial()) {
    on<LoadLocale>(_loadLocale);
    on<SwitchLocale>(_switchLocale);
    on<CheckLocaleInStorage>(_checkStorage);
  }

  final _sharedPref = SharedPrefStorage();

  FutureOr<void> _loadLocale(
      LoadLocale event, Emitter<LanguageState> emit) async {
    final locale = _sharedPref.getLocale;
    if (locale == "ru") {
      LocaleSettings.setLocale(AppLocale.ru);
      emit(const LanguageLoaded(locale: AppLocale.ru));
    } else {
      LocaleSettings.setLocale(AppLocale.uz);
      emit(const LanguageLoaded(locale: AppLocale.uz));
    }
  }

  FutureOr<void> _switchLocale(
      SwitchLocale event, Emitter<dynamic> emit) async {
    await _sharedPref.setLocale(event.locale.languageCode);
    LocaleSettings.setLocale(event.locale);
    emit(LanguageLoaded(locale: event.locale));
  }

  FutureOr<void> _checkStorage(
      CheckLocaleInStorage event, Emitter<LanguageState> emit) async {
    final locale = _sharedPref.getLocale;
    emit(CheckLocaleInStorageSuccess(isSelected: locale != null));
  }
}
