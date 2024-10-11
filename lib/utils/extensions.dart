import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension Localization on BuildContext {
  MediaQueryData get queryData => MediaQuery.of(this);

  double get viewPaddingBottom => MediaQuery.of(this).viewPadding.bottom;

  double get viewPaddingTop => MediaQuery.of(this).viewPadding.top;

  Size get screenSize => MediaQuery.of(this).size;

  void popUntil(String path, [Object? returnValue]) {
    final delegate = GoRouter.of(this).routerDelegate;
    final routes = delegate.currentConfiguration.matches;
    for (var i = routes.length - 1; i > 0; i--) {
      if (routes[i].matchedLocation.endsWith(path)) break;
      GoRouter.of(this).pop(returnValue);
    }
  }

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
