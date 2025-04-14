part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.register({
    required String phone,
    required String username,
  }) = _Register;
}
