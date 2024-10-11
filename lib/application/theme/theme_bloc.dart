import 'dart:async';

import 'package:carfix_app/data/storage/shared_pref_storage.dart';
import 'package:carfix_app/utils/theme/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<LoadTheme>(_loadTheme);
    on<ChangeTheme>(_changeTheme);
  }

  final prefs = SharedPrefStorage();

  FutureOr<void> _changeTheme(
      ChangeTheme event, Emitter<ThemeState> emit) async {
    await prefs.setTheme(event.mode.name);
    await AppTheme.init();
    emit(
      ThemeLoaded(theme: AppTheme.data, mode: AppTheme.themeType),
    );
  }

  FutureOr<void> _loadTheme(LoadTheme event, Emitter<ThemeState> emit) async {
    await AppTheme.init();
    emit(
      ThemeLoaded(theme: AppTheme.data, mode: AppTheme.themeType),
    );
  }
}
