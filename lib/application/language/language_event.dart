part of 'language_bloc.dart';

sealed class LanguageEvent extends Equatable {
  const LanguageEvent();
}

final class LoadLocale extends LanguageEvent {
  @override
  List<Object> get props => [];
}

final class SwitchLocale extends LanguageEvent {
  const SwitchLocale({required this.locale});

  final AppLocale locale;

  @override
  List<Object> get props => [locale];
}

final class CheckLocaleInStorage extends LanguageEvent {
  @override
  List<Object> get props => [];
}