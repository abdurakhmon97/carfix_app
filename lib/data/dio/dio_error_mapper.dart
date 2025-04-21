import 'package:carfix_app/domain/entities/common_exception_entity.dart';
import 'package:carfix_app/domain/entities/exception_entity.dart';
import 'package:carfix_app/domain/entities/exception_mapper.dart';
import 'package:dio/dio.dart';

class DioErrorMapper {
  static ExceptionEntity map(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.badResponse:
        final error = CommonExceptionEntity.fromJson(
          exception.response?.data['error'],
        );
        final domainException =
            ExceptionMapper.mapDomainException(error.reason);
        return domainException ?? error;
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const CommonExceptionEntity(
          message: "Connection timeout",
          messageUz: "Ulanish vaqti tugadi",
          messageRu: "Время ожидания подключения истекло",
        );
      case DioExceptionType.cancel:
        return const CommonExceptionEntity(
          message: "Request was cancelled",
          messageUz: "Soʻrov bekor qilindi",
          messageRu: "Запрос был отменён",
        );
      case DioExceptionType.connectionError:
        return const CommonExceptionEntity(
          message: "No internet connection",
          messageUz: "Internet aloqasi yoʻq",
          messageRu: "Нет подключения к интернету",
        );
      default:
        return CommonExceptionEntity(
          message: exception.message ?? "Unexpected error",
          messageUz: "Kutilmagan xatolik",
          messageRu: "Неожиданная ошибка",
        );
    }
  }
}
