abstract class ExceptionEntity implements Exception {
  final String message;

  const ExceptionEntity([this.message = '']);
}

class UserNotFoundException extends ExceptionEntity {
  const UserNotFoundException([super.message = 'User not found']);
}

class InvalidCredentialsException extends ExceptionEntity {
  const InvalidCredentialsException([super.message = 'Invalid credentials']);
}
