part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;

  const factory AuthState.loading() = Loading;

  const factory AuthState.error(ErrorEntity error) = Error;

  const factory AuthState.registerSuccess() = RegisterSuccess;
}
