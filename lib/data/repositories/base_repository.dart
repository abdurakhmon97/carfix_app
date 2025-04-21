import 'dart:developer';

import 'package:carfix_app/data/dio/dio_error_mapper.dart';
import 'package:carfix_app/domain/entities/common_exception_entity.dart';
import 'package:carfix_app/domain/entities/result_entity.dart';
import 'package:dio/dio.dart';

abstract class BaseRepository {
  const BaseRepository();

  Future<ResultEntity<T?>> safeCall<T>(
    Future<T?> Function() apiCall,
  ) async {
    try {
      final result = await apiCall();
      return SuccessEntity(result);
    } on DioException catch (e) {
      log('Base repo error ${e.toString()}');
      final mappedError = DioErrorMapper.map(e);
      return FailureEntity(mappedError);
    } catch (e) {
      return FailureEntity(
        CommonExceptionEntity(message: "Unknown error: $e"),
      );
    }
  }
}
