import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_entity.freezed.dart';

part 'error_entity.g.dart';

@Freezed(copyWith: false)
abstract class ErrorEntity with _$ErrorEntity implements Exception {
  const factory ErrorEntity({
    String? reason,
    int? code,
    String? message,
    String? messageRu,
    String? messageUz,
  }) = _ErrorEntity;

  factory ErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$ErrorEntityFromJson(json);
}
