part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();
}

final class LoadTheme extends ThemeEvent {
  @override
  List<Object> get props => [];
}

final class ChangeTheme extends ThemeEvent {
  const ChangeTheme(this.mode);

  final ThemeMode mode;

  @override
  List<Object> get props => [mode];
}
