// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:carfix_app/data/api/auth/auth_api.dart' as _i748;
import 'package:carfix_app/data/dio/dio_module.dart' as _i162;
import 'package:carfix_app/data/repositories/auth_repository_impl.dart'
    as _i374;
import 'package:carfix_app/domain/repositories/auth_repository.dart' as _i234;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.factory<String>(
      () => dioModule.host,
      instanceName: 'Host',
    );
    gh.singletonAsync<_i361.Dio>(() => dioModule.getAuthorizedDioClient(
        host: gh<String>(instanceName: 'Host')));
    gh.singletonAsync<_i361.Dio>(
      () => dioModule.getUnauthorizedDioClient(
          host: gh<String>(instanceName: 'Host')),
      instanceName: 'UnauthorizedClient',
    );
    gh.singletonAsync<_i748.AuthApi>(() async => _i748.AuthApi(
        await getAsync<_i361.Dio>(instanceName: 'UnauthorizedClient')));
    gh.singletonAsync<_i361.Dio>(
      () => dioModule.getLongRequestDioClient(
          host: gh<String>(instanceName: 'Host')),
      instanceName: 'LongRequestDioClient',
    );
    gh.singletonAsync<_i234.AuthRepository>(
        () async => _i374.AuthRepositoryImpl(await getAsync<_i748.AuthApi>()));
    return this;
  }
}

class _$DioModule extends _i162.DioModule {}
