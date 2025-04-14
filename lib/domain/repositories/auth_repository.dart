abstract class AuthRepository {
  const AuthRepository();

  Future<void> register({
    required String phone,
    required String username,
  });
}
