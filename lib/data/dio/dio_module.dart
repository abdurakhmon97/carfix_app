import 'package:carfix_app/data/dio/api_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const _requestTimeoutInMilliseconds = 20000;
const _longRequestTimeoutInMilliseconds = 61000;

@module
abstract class DioModule {
  @Named("Host")
  String get host => const String.fromEnvironment(
        'BASE_URL',
        defaultValue: 'http://carfix.eu-central-1.elasticbeanstalk.com/',
      );

  @singleton
  Future<Dio> getAuthorizedDioClient({
    @Named("Host") required String host,
    //required TokenRepository tokenRepository,
  }) async {
    final baseUrl = _buildBaseUrl(host);
    final authorizedDioClient = _createDioClient(baseUrl);
    authorizedDioClient.interceptors.addAll([
      AuthorizedRequestInterceptor(
        authorizedDioClient,
        //inject(),
        //inject(),
        //tokenRepository,
      ),
    ]);
    return authorizedDioClient;
  }

  @Named("LongRequestDioClient")
  @singleton
  Future<Dio> getLongRequestDioClient({
    @Named("Host") required String host,
    //required TokenRepository tokenRepository,
  }) async {
    final baseUrl = _buildBaseUrl(host);
    final authorizedDioClient = _createDioClient(
      baseUrl,
      requestTimeoutInMilliseconds: _longRequestTimeoutInMilliseconds,
    );
    authorizedDioClient.interceptors.addAll([
      AuthorizedRequestInterceptor(
        authorizedDioClient,
        //inject(),
        //inject(),
        //tokenRepository,
      ),
    ]);
    return authorizedDioClient;
  }

  @Named("UnauthorizedClient")
  @singleton
  Future<Dio> getUnauthorizedDioClient({
    @Named("Host") required String host,
  }) async {
    final baseUrl = _buildBaseUrl(host);
    final unauthorizedDioClient = _createDioClient(baseUrl);
    unauthorizedDioClient.interceptors.addAll([
      CommonRequestInterceptor(
        unauthorizedDioClient,
      ),
    ]);
    return unauthorizedDioClient;
  }

  Dio _createDioClient(
    String baseUrl, {
    int requestTimeoutInMilliseconds = _requestTimeoutInMilliseconds,
  }) {
    final options = BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(
          milliseconds: requestTimeoutInMilliseconds,
        ),
        receiveTimeout: Duration(
          milliseconds: requestTimeoutInMilliseconds,
        ));
    return Dio(options);
  }

  String _buildBaseUrl(String host) => 'https://$host/';
}
