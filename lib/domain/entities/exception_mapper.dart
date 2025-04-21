import 'package:carfix_app/domain/entities/exception_entity.dart';

class ExceptionMapper {
  static ExceptionEntity? mapDomainException(String? reason) {
    if (reason == null) return null;

    final errorMap = {
      'user_not_found': () => const UserNotFoundException(),
      'user_not_exists': () => const UserNotFoundException(),
      'invalid_credentials': () => const InvalidCredentialsException(),
    };

    return errorMap[reason]?.call();
  }
}
