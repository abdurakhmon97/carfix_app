import 'package:carfix_app/data/dio/dio_error_mapper.dart';
import 'package:carfix_app/domain/entities/error_entity.dart';
import 'package:carfix_app/domain/entities/result_entity.dart';
import 'package:dio/dio.dart';

abstract class BaseRepository {
  const BaseRepository();

  Future<ResultEntity<T?>> safeCall<T>(Future<T?> Function() apiCall) async {
    try {
      final result = await apiCall();
      return SuccessEntity(result);
    } on DioException catch (e) {
      final errorEntity = DioErrorMapper.map(e);
      return FailureEntity(errorEntity);
    } catch (e) {
      return FailureEntity(ErrorEntity(message: "Unknown error: $e"));
    }
  }
}
