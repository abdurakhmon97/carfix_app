part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;

  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.error(ErrorEntity error) = AuthError;

  const factory AuthState.registerSuccess() = AuthRegisterSuccess;

  const factory AuthState.loginSuccess() = AuthLoginSuccess;
}
