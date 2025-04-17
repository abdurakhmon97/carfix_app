import 'package:carfix_app/domain/entities/error_entity.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

extension SvgPictureExt on SvgPicture {
  SvgPicture copyWith({
    Color? color,
    double? width,
    final double? height,
    BoxFit? fit,
  }) {
    final colorFilter =
        color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null;
    return SvgPicture(
      bytesLoader,
      colorFilter: colorFilter ?? this.colorFilter,
      width: width ?? this.width,
      height: height ?? this.height,
      fit: fit ?? this.fit,
    );
  }
}

extension StringExt on String {
  String removeSpacesForAmount() {
    return replaceAll(RegExp(r'[^0-9.]'), '');
  }

  String removeSpaces() {
    final result = replaceAll(RegExp(r'\s+'), '');
    return result;
  }
}

extension ErrorEntityExt on ErrorEntity {
  String getError(AppLocale locale) {
    return switch (locale) {
      AppLocale.ru => messageRu ?? "",
      AppLocale.uz => messageUz ?? "",
    };
  }
}
