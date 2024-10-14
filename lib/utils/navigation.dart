import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:carfix_app/presentation/authorization/login_screen.dart';
import 'package:carfix_app/presentation/authorization/registration_screen.dart';
import 'package:carfix_app/presentation/splash/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class Navigation {
  GoRouter get router => _router;

  Alice alice = Alice(
    configuration: AliceConfiguration(
      showNotification: false,
      showInspectorOnShake:
          const bool.fromEnvironment('dart.vm.product') ? false : true,
    ),
  );

  late final GoRouter _router = GoRouter(
    navigatorKey: alice.getNavigatorKey(),
    initialLocation: SplashScreen.tag,
    debugLogDiagnostics: kDebugMode,
    overridePlatformDefaultLocation: true,
    routes: [
      GoRoute(
        path: SplashScreen.tag,
        name: SplashScreen.tag,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: LoginScreen.tag,
        name: LoginScreen.tag,
        builder: (_, __) => const LoginScreen(),
        routes: [
          GoRoute(
            path: RegistrationScreen.tag,
            name: RegistrationScreen.tag,
            builder: (_, __) => const RegistrationScreen(),
          ),
        ],
      ),
    ],
  );
}
