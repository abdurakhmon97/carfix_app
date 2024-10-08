part of 'theme_bloc.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();
}

final class ThemeInitial extends ThemeState {
  @override
  List<Object> get props => [];
}

final class ThemeLoaded extends ThemeState {
  const ThemeLoaded({
    required this.theme,
    required this.mode,
  });

  final ThemeData theme;
  final ThemeMode mode;

  @override
  List<Object> get props => [theme, mode];
}
