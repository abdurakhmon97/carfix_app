import 'package:carfix_app/data/api/auth/auth_api.dart';
import 'package:carfix_app/data/repositories/base_repository.dart';
import 'package:carfix_app/domain/entities/result_entity.dart';
import 'package:carfix_app/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends BaseRepository implements AuthRepository {
  const AuthRepositoryImpl(this._authApi);

  final AuthApi _authApi;

  @override
  Future<ResultEntity<void>> register({
    required String phone,
  }) {
    return safeCall(() => _authApi.register(phone));
  }

  @override
  Future<ResultEntity<void>> login({
    required String phone,
    required String otp,
  }) {
    return safeCall(() => _authApi.login(phone, otp));
  }
}
