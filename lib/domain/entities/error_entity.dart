import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_entity.freezed.dart';

part 'error_entity.g.dart';

@Freezed(copyWith: false)
abstract class ErrorEntity with _$ErrorEntity {
  const factory ErrorEntity({
    String? reason,
    int? code,
    String? message,
    String? messageRu,
    String? messageUz,
  }) = _ErrorEntity;

  factory ErrorEntity.fromJson(Map<String, Object?> json) =>
      _$ErrorEntityFromJson(json);
}
