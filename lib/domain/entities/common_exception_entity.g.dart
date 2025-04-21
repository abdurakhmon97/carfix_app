// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_exception_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommonExceptionEntity _$CommonExceptionEntityFromJson(
        Map<String, dynamic> json) =>
    _CommonExceptionEntity(
      reason: json['reason'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      messageRu: json['messageRu'] as String?,
      messageUz: json['messageUz'] as String?,
    );

Map<String, dynamic> _$CommonExceptionEntityToJson(
        _CommonExceptionEntity instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'code': instance.code,
      'message': instance.message,
      'messageRu': instance.messageRu,
      'messageUz': instance.messageUz,
    };
