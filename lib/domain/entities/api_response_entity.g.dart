// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseData<T> _$ApiResponseDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponseData<T>(
      _$nullableGenericFromJson(json['data'], fromJsonT),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseDataToJson<T>(
  ApiResponseData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'runtimeType': instance.$type,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

ApiResponseError<T> _$ApiResponseErrorFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponseError<T>(
      reason: json['reason'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      messageRu: json['messageRu'] as String?,
      messageUz: json['messageUz'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseErrorToJson<T>(
  ApiResponseError<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'reason': instance.reason,
      'code': instance.code,
      'message': instance.message,
      'messageRu': instance.messageRu,
      'messageUz': instance.messageUz,
      'runtimeType': instance.$type,
    };
