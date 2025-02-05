import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:carfix_app/presentation/authorization/login_screen.dart';
import 'package:carfix_app/presentation/authorization/registration_screen.dart';
import 'package:carfix_app/presentation/oil/oil_screen.dart';
import 'package:carfix_app/presentation/otp/otp_arguments.dart';
import 'package:carfix_app/presentation/otp/otp_screen.dart';
import 'package:carfix_app/presentation/service_list/service_list_screen.dart';
import 'package:carfix_app/presentation/splash/splash_screen.dart';
import 'package:carfix_app/presentation/tyre/tyre_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

Alice _alice = Alice(
  configuration: AliceConfiguration(
    showNotification: false,
    showInspectorOnShake:
        const bool.fromEnvironment('dart.vm.product') ? false : true,
  ),
);

class Navigation {
  GoRouter get router => _router;

  late final GoRouter _router = GoRouter(
    navigatorKey: _alice.getNavigatorKey(),
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
      GoRoute(
        path: OtpScreen.tag,
        name: OtpScreen.tag,
        builder: (_, state) => OtpScreen(
          arguments: state.extra as OtpArguments,
        ),
      ),
      GoRoute(
        path: ServiceListScreen.tag,
        name: ServiceListScreen.tag,
        builder: (_, __) => const ServiceListScreen(),
        routes: [
          GoRoute(
            path: OilScreen.tag,
            name: OilScreen.tag,
            builder: (_, __) => const OilScreen(),
          ),
          GoRoute(
            path: TyreScreen.tag,
            name: TyreScreen.tag,
            builder: (_, __) => const TyreScreen(),
          ),
        ],
      ),
    ],
  );
}
