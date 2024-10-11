part of 'language_bloc.dart';

sealed class LanguageState extends Equatable {
  const LanguageState();
}

final class LanguageInitial extends LanguageState {
  @override
  List<Object> get props => [];
}

final class LanguageLoaded extends LanguageState {
  const LanguageLoaded({required this.locale});

  final AppLocale locale;

  @override
  List<Object> get props => [locale];
}
