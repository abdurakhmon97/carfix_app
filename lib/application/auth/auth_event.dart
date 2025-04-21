part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.register({
    required String phone,
  }) = _Register;

  const factory AuthEvent.login({
    required String phone,
    required String otp,
  }) = _Login;
}
