import 'package:carfix_app/domain/entities/exception_entity.dart';

sealed class ResultEntity<T> {
  const ResultEntity();
}

final class SuccessEntity<T> extends ResultEntity<T> {
  final T data;

  const SuccessEntity(this.data);
}

final class FailureEntity<T> extends ResultEntity<T> {
  final ExceptionEntity exception;

  const FailureEntity(this.exception);
}
