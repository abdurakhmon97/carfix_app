import 'package:carfix_app/utils/uikit/tokens/base_colors.dart';
import 'package:carfix_app/utils/uikit/tokens/dark_colors.dart';
import 'package:carfix_app/utils/uikit/tokens/light_colors.dart';
import 'package:flutter/material.dart';

class OpenColors extends ThemeExtension<OpenColors> {
  const OpenColors({
    required this.brand,
    required this.base,
    required this.text,
    required this.border,
    required this.foreground,
    required this.background,
  });

  final ColorBrand brand;
  final ColorBase base;
  final TextColor text;
  final BorderColor border;
  final ForegroundColor foreground;
  final BackgroundColor background;

  static final light = OpenColors(
    brand: LightColorBrand(),
    base: LightColorBase(),
    text: LightTextColor(),
    border: LightBorderColor(),
    foreground: LightForegroundColor(),
    background: LightBackgroundColor(),
  );

  static final dark = OpenColors(
    brand: DarkColorBrand(),
    base: DarkColorBase(),
    text: DarkTextColor(),
    border: DarkBorderColor(),
    foreground: DarkForegroundColor(),
    background: DarkBackgroundColor(),
  );

  @override
  OpenColors copyWith({
    ColorBrand? brand,
    ColorBase? base,
    TextColor? text,
    BorderColor? border,
    ForegroundColor? foreground,
    BackgroundColor? background,
  }) {
    return OpenColors(
      brand: brand ?? this.brand,
      base: base ?? this.base,
      text: text ?? this.text,
      border: border ?? this.border,
      foreground: foreground ?? this.foreground,
      background: background ?? this.background,
    );
  }

  @override
  OpenColors lerp(covariant ThemeExtension<OpenColors>? other, double t) {
    return this;
  }
}
