import 'package:carfix_app/domain/entities/exception_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_exception_entity.freezed.dart';

part 'common_exception_entity.g.dart';

@Freezed(copyWith: false)
abstract class CommonExceptionEntity with _$CommonExceptionEntity implements ExceptionEntity {
  const factory CommonExceptionEntity({
    String? reason,
    int? code,
    String? message,
    String? messageRu,
    String? messageUz,
  }) = _CommonExceptionEntity;

  factory CommonExceptionEntity.fromJson(Map<String, dynamic> json) =>
      _$CommonExceptionEntityFromJson(json);
}
