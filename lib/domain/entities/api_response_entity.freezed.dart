// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ApiResponse<T> _$ApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  switch (json['runtimeType']) {
    case 'data':
      return ApiResponseData<T>.fromJson(json, fromJsonT);
    case 'error':
      return ApiResponseError<T>.fromJson(json, fromJsonT);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiResponse<T> {
  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ApiResponse<T>);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApiResponse<$T>()';
  }
}

/// @nodoc
class $ApiResponseCopyWith<T, $Res> {
  $ApiResponseCopyWith(ApiResponse<T> _, $Res Function(ApiResponse<T>) __);
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ApiResponseData<T> implements ApiResponse<T> {
  const ApiResponseData(this.data, {final String? $type})
      : $type = $type ?? 'data';
  factory ApiResponseData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseDataFromJson(json, fromJsonT);

  final T? data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseDataCopyWith<T, ApiResponseData<T>> get copyWith =>
      _$ApiResponseDataCopyWithImpl<T, ApiResponseData<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$ApiResponseDataToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponseData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ApiResponse<$T>.data(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseDataCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseDataCopyWith(
          ApiResponseData<T> value, $Res Function(ApiResponseData<T>) _then) =
      _$ApiResponseDataCopyWithImpl;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class _$ApiResponseDataCopyWithImpl<T, $Res>
    implements $ApiResponseDataCopyWith<T, $Res> {
  _$ApiResponseDataCopyWithImpl(this._self, this._then);

  final ApiResponseData<T> _self;
  final $Res Function(ApiResponseData<T>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ApiResponseData<T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ApiResponseError<T> implements ApiResponse<T> {
  const ApiResponseError(
      {this.reason,
      this.code,
      this.message,
      this.messageRu,
      this.messageUz,
      final String? $type})
      : $type = $type ?? 'error';
  factory ApiResponseError.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseErrorFromJson(json, fromJsonT);

  final String? reason;
  final int? code;
  final String? message;
  final String? messageRu;
  final String? messageUz;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseErrorCopyWith<T, ApiResponseError<T>> get copyWith =>
      _$ApiResponseErrorCopyWithImpl<T, ApiResponseError<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$ApiResponseErrorToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponseError<T> &&
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
    return 'ApiResponse<$T>.error(reason: $reason, code: $code, message: $message, messageRu: $messageRu, messageUz: $messageUz)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseErrorCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseErrorCopyWith(
          ApiResponseError<T> value, $Res Function(ApiResponseError<T>) _then) =
      _$ApiResponseErrorCopyWithImpl;
  @useResult
  $Res call(
      {String? reason,
      int? code,
      String? message,
      String? messageRu,
      String? messageUz});
}

/// @nodoc
class _$ApiResponseErrorCopyWithImpl<T, $Res>
    implements $ApiResponseErrorCopyWith<T, $Res> {
  _$ApiResponseErrorCopyWithImpl(this._self, this._then);

  final ApiResponseError<T> _self;
  final $Res Function(ApiResponseError<T>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? messageRu = freezed,
    Object? messageUz = freezed,
  }) {
    return _then(ApiResponseError<T>(
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messageRu: freezed == messageRu
          ? _self.messageRu
          : messageRu // ignore: cast_nullable_to_non_nullable
              as String?,
      messageUz: freezed == messageUz
          ? _self.messageUz
          : messageUz // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
