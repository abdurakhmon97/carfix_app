// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorEntity _$ErrorEntityFromJson(Map<String, dynamic> json) => _ErrorEntity(
      reason: json['reason'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      messageRu: json['messageRu'] as String?,
      messageUz: json['messageUz'] as String?,
    );

Map<String, dynamic> _$ErrorEntityToJson(_ErrorEntity instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'code': instance.code,
      'message': instance.message,
      'messageRu': instance.messageRu,
      'messageUz': instance.messageUz,
    };
