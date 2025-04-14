import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_entity.freezed.dart';

part 'api_response_entity.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.data(T? data) = ApiResponseData;

  const factory ApiResponse.error({
    String? reason,
    int? code,
    String? message,
    String? messageRu,
    String? messageUz,
  }) = ApiResponseError;

  factory ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
