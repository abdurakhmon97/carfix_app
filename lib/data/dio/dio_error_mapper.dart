import 'package:carfix_app/domain/entities/error_entity.dart';
import 'package:dio/dio.dart';

class DioErrorMapper {
  static ErrorEntity map(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const ErrorEntity(
          message: "Connection timeout",
          messageUz: "Ulanish vaqti tugadi",
          messageRu: "Время ожидания подключения истекло",
        );
      case DioExceptionType.badResponse:
        return ErrorEntity.fromJson(
          exception.response?.data['error'],
        );
      case DioExceptionType.cancel:
        return const ErrorEntity(
          message: "Request was cancelled",
          messageUz: "Soʻrov bekor qilindi",
          messageRu: "Запрос был отменён",
        );
      case DioExceptionType.connectionError:
        return const ErrorEntity(
          message: "No internet connection",
          messageUz: "Internet aloqasi yoʻq",
          messageRu: "Нет подключения к интернету",
        );
      default:
        return ErrorEntity(
          message: exception.message ?? "Unexpected error",
          messageUz: "Kutilmagan xatolik",
          messageRu: "Неожиданная ошибка",
        );
    }
  }
}
