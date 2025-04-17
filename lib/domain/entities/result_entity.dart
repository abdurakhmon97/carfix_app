import 'package:carfix_app/domain/entities/error_entity.dart';

sealed class ResultEntity<T> {
  const ResultEntity();
}

class SuccessEntity<T> extends ResultEntity<T> {
  final T data;

  const SuccessEntity(this.data);
}

class FailureEntity<T> extends ResultEntity<T> {
  final ErrorEntity error;

  const FailureEntity(this.error);
}
