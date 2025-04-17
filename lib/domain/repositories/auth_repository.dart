import 'package:carfix_app/domain/entities/result_entity.dart';

abstract class AuthRepository {
  const AuthRepository();

  Future<ResultEntity<void>> register({
    required String phone,
  });
}
