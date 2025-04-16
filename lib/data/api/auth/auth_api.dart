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
  Future<void> register(
    @Field('phone') String phone,
  );
}
