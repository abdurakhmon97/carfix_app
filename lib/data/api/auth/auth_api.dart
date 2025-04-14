import 'package:carfix_app/domain/entities/api_response_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@RestApi()
@singleton
abstract class AuthApi {
  @factoryMethod
  factory AuthApi(@Named("UnauthorizedClient") Dio dio) = _AuthApi;

  @POST('/api/v1/register')
  Future<ApiResponse<String>> register(
    @Field('phone') String phone,
    @Field('username') String username,
  );
}
