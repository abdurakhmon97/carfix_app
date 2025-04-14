part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(ApiResponseError? error) = _Error;
  const factory AuthState.registerSuccess() = _RegisterSuccess;
}
