import 'package:carfix_app/data/api/auth/auth_api.dart';
import 'package:carfix_app/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._authApi);

  final AuthApi _authApi;

  @override
  Future<void> register({
    required String phone,
    required String username,
  }) async {
    await _authApi.register(phone, username);
  }
}
