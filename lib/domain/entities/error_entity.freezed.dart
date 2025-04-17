// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ErrorEntity {
  String? get reason;
  int? get code;
  String? get message;
  String? get messageRu;
  String? get messageUz;

  /// Serializes this ErrorEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorEntity &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageRu, messageRu) ||
                other.messageRu == messageRu) &&
            (identical(other.messageUz, messageUz) ||
                other.messageUz == messageUz));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reason, code, message, messageRu, messageUz);

  @override
  String toString() {
    return 'ErrorEntity(reason: $reason, code: $code, message: $message, messageRu: $messageRu, messageUz: $messageUz)';
  }
}

/// @nodoc
@JsonSerializable()
class _ErrorEntity implements ErrorEntity {
  const _ErrorEntity(
      {this.reason, this.code, this.message, this.messageRu, this.messageUz});
  factory _ErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$ErrorEntityFromJson(json);

  @override
  final String? reason;
  @override
  final int? code;
  @override
  final String? message;
  @override
  final String? messageRu;
  @override
  final String? messageUz;

  @override
  Map<String, dynamic> toJson() {
    return _$ErrorEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorEntity &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageRu, messageRu) ||
                other.messageRu == messageRu) &&
            (identical(other.messageUz, messageUz) ||
                other.messageUz == messageUz));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reason, code, message, messageRu, messageUz);

  @override
  String toString() {
    return 'ErrorEntity(reason: $reason, code: $code, message: $message, messageRu: $messageRu, messageUz: $messageUz)';
  }
}

// dart format on
