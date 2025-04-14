import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:carfix_app/di/di_container.config.dart';

/// Команда для генерации:
/// dart run build_runner build --delete-conflicting-outputs
final getIt = GetIt.instance;

@InjectableInit()
Future<void> initDi() async {
  getIt.init();

  return getIt.allReady();
}

Future<void> disposeDi() {
  return getIt.reset();
}
