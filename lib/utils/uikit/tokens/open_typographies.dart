import 'package:carfix_app/utils/uikit/tokens/base_colors.dart';
import 'package:carfix_app/utils/uikit/tokens/typographies.dart';
import 'package:flutter/material.dart';

class OpenTypographies extends ThemeExtension<OpenTypographies> {
  const OpenTypographies({
    required this.headlineLg,
    required this.headlineSm,
    required this.titleRg,
    required this.titleSB,
    required this.bodyTextLGRg,
    required this.bodyTextLGMd,
    required this.bodyTextLGSB,
    required this.bodyTextSmRg,
    required this.bodyTextSmMd,
    required this.bodyTextSmSB,
    required this.labelLGRg,
    required this.labelLGMd,
    required this.labelLGSB,
    required this.labelSmRg,
    required this.labelSmMd,
    required this.labelSmSB,
  });

  final TextStyle headlineLg;
  final TextStyle headlineSm;
  final TextStyle titleRg;
  final TextStyle titleSB;
  final TextStyle bodyTextLGRg;
  final TextStyle bodyTextLGMd;
  final TextStyle bodyTextLGSB;
  final TextStyle bodyTextSmRg;
  final TextStyle bodyTextSmMd;
  final TextStyle bodyTextSmSB;
  final TextStyle labelLGRg;
  final TextStyle labelLGMd;
  final TextStyle labelLGSB;
  final TextStyle labelSmRg;
  final TextStyle labelSmMd;
  final TextStyle labelSmSB;

  factory OpenTypographies.fromColors(TextColor textColor) {
    return OpenTypographies(
      headlineLg: Typographies.headlineLG.copyWith(color: textColor.textBody),
      headlineSm: Typographies.headlineSM.copyWith(color: textColor.textBody),
      titleRg: Typographies.titleRegular.copyWith(color: textColor.textBody),
      titleSB: Typographies.titleSemiBold.copyWith(color: textColor.textBody),
      bodyTextLGRg:
          Typographies.bodyTextLGRegular.copyWith(color: textColor.textBody),
      bodyTextLGMd:
          Typographies.bodyTextLGMedium.copyWith(color: textColor.textBody),
      bodyTextLGSB:
          Typographies.bodyTextLGSemiBold.copyWith(color: textColor.textBody),
      bodyTextSmRg:
          Typographies.bodyTextSMRegular.copyWith(color: textColor.textBody),
      bodyTextSmMd:
          Typographies.bodyTextSMMedium.copyWith(color: textColor.textBody),
      bodyTextSmSB:
          Typographies.bodyTextLGSemiBold.copyWith(color: textColor.textBody),
      labelLGRg:
          Typographies.labelLGRegular.copyWith(color: textColor.textBody),
      labelLGMd: Typographies.labelLGMedium.copyWith(color: textColor.textBody),
      labelLGSB:
          Typographies.labelLGSemiBold.copyWith(color: textColor.textBody),
      labelSmRg:
          Typographies.labelSMRegular.copyWith(color: textColor.textBody),
      labelSmMd: Typographies.labelSMMedium.copyWith(color: textColor.textBody),
      labelSmSB:
          Typographies.labelSMSemiBold.copyWith(color: textColor.textBody),
    );
  }

  @override
  ThemeExtension<OpenTypographies> copyWith() {
    return this;
  }

  @override
  ThemeExtension<OpenTypographies> lerp(
      covariant ThemeExtension<OpenTypographies>? other, double t) {
    return this;
  }
}
