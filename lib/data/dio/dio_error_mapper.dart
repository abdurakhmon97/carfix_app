import 'package:carfix_app/domain/entities/error_entity.dart';
import 'package:dio/dio.dart';

class DioErrorMapper {
  static ErrorEntity map(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const ErrorEntity(message: "Connection timeout");
      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode ?? 0;
        final message = exception.response?.statusMessage ?? "Unknown error";
        return ErrorEntity(message: message, code: statusCode);
      case DioExceptionType.cancel:
        return const ErrorEntity(message: "Request was cancelled");
      case DioExceptionType.connectionError:
        return const ErrorEntity(message: "No internet connection");
      default:
        return ErrorEntity(message: exception.message ?? "Unexpected error");
    }
  }
}
