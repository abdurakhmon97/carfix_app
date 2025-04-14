import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CommonRequestInterceptor extends QueuedInterceptor {
  CommonRequestInterceptor(
    this._dio,
  );

  final Dio _dio;

  Map<String, String> get _baseHeaders => {
        'Content-Type': 'application/json',
        'charset': 'utf-8',
      };

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll(_baseHeaders);
    options.headers.addAll(
      {
        'Timestamp': DateTime.now().toUtc().toString(),
      },
    );
    debugPrint('${options.method} >>> ${options.uri}');
    debugPrint('Headers: ${options.headers}');
    debugPrint('Query parameters: ${options.queryParameters}');
    debugPrint('Request data: ${options.data}');
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    debugPrint(
      '${response.requestOptions.method} <<< ${response.requestOptions.uri}',
    );
    debugPrint('Response data: ${response.data}');
    return super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint('${err.requestOptions.method} <<< ${err.requestOptions.uri}');
    debugPrint('Error data: ${err.response?.data}');
    if (err.type == DioExceptionType.badResponse) {
      //final String errorMessage =
      //    '${err.requestOptions.method} ${err.requestOptions.path} [${err.response?.statusCode}]';

      final statusCode = err.response?.statusCode;
      if (statusCode != null &&
          (statusCode == 404 || (statusCode >= 500 && statusCode <= 599))) {
        /*AppMetrica.reportError(
          message: errorMessage,
          errorDescription: AppMetricaErrorDescription.fromCurrentStackTrace(
            message: '${err.response?.data}',
            type: errorMessage,
          ),
        );*/
      }
    }
    handler.next(err);
  }
}

class AuthorizedRequestInterceptor extends CommonRequestInterceptor {
  AuthorizedRequestInterceptor(
    super.dio,
    //super.systemRepository,
    //super.charlesRepository,
    //this._tokenRepository,
  );

  //final TokenRepository _tokenRepository;

  //TokenEntity get _token => _tokenRepository.getToken();

  //String get _bearerToken => '${_token.tokenType} ${_token.accessToken}';

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      //options.headers[HttpHeaders.authorizationHeader] = _bearerToken;
      return super.onRequest(options, handler);
    } on DioException catch (e) {
      handler.reject(e, true);
    } on Object catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      try {
        /// Refresh token and retry last request
        //await _tokenRepository.refreshToken(_token);

        final request = err.requestOptions;
        final retryResponse = await _dio.request(
          request.path,
          data: request.data,
          queryParameters: request.queryParameters,
          options: Options(
            method: request.method,
            sendTimeout: request.sendTimeout,
            receiveTimeout: request.receiveTimeout,
            extra: request.extra,
            headers: request.headers,
            responseType: request.responseType,
            contentType: request.contentType,
            validateStatus: request.validateStatus,
            receiveDataWhenStatusError: request.receiveDataWhenStatusError,
            followRedirects: request.followRedirects,
            maxRedirects: request.maxRedirects,
            requestEncoder: request.requestEncoder,
            responseDecoder: request.responseDecoder,
            listFormat: request.listFormat,
          ),
        );
        handler.resolve(retryResponse);
      } on DioException catch (retryError) {
        return super.onError(retryError, handler);
      } on Object catch (_) {
        return super.onError(err, handler);
      }
    } else {
      return super.onError(err, handler);
    }
  }
}
