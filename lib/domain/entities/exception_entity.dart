abstract class ExceptionEntity implements Exception {
  const ExceptionEntity();
}

class UserNotFoundException extends ExceptionEntity {
  const UserNotFoundException();
}

class InvalidCredentialsException extends ExceptionEntity {
  const InvalidCredentialsException();
}
