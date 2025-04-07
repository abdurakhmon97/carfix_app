import 'package:equatable/equatable.dart';

final class ApiResponse<T> with EquatableMixin {
  final T? data;
  final ApiError? error;

  ApiResponse({this.data, this.error});

  bool get hasError => error != null;

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    if (json.containsKey('error')) {
      return ApiResponse<T>(error: ApiError.fromJson(json['error']));
    }

    if (json['data'] is List) {
      return ApiResponse<T>(
        data: (json['data'] as List).map((e) => fromJsonT(e)).toList() as T,
      );
    }

    return ApiResponse<T>(data: fromJsonT(json['data']));
  }

  @override
  List<Object?> get props => [data, error];
}

final class ApiError with EquatableMixin {
  const ApiError({
    this.reason,
    this.code,
    this.message,
    this.messageRu,
    this.messageUz,
  });

  final String? reason;
  final int? code;
  final String? message;
  final String? messageRu;
  final String? messageUz;

  factory ApiError.fromJson(Map<String, dynamic> json) {
    return ApiError(
      reason: json['reason'],
      code: json['code'],
      message: json['message'],
      messageRu: json['messageRu'],
      messageUz: json['messageUz'],
    );
  }

  @override
  List<Object?> get props => [
        reason,
        code,
        message,
        messageRu,
        messageUz,
      ];
}
