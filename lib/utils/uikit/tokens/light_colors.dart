import 'dart:ui';

import 'package:carfix_app/utils/uikit/tokens/base_colors.dart';


class LightColorBrand extends ColorBrand {
  @override
  Color get primary50 => const Color(0xFFE9EAF7);

  @override
  Color get primary100 => const Color(0xFFBCC1E7);

  @override
  Color get primary200 => const Color(0xFFA5ADDF);

  @override
  Color get primary300 => const Color(0xFF838ED4);

  @override
  Color get primary400 => const Color(0xFF6D79CC);

  @override
  Color get primary500 => const Color(0xFF4050BC);

  @override
  Color get primary600 => const Color(0xFF35429B);

  @override
  Color get primary700 => const Color(0xFF313D90);

  @override
  Color get primary800 => const Color(0xFF262F6F);

  @override
  Color get primary900 => const Color(0xFF171C42);
}

class LightColorBase extends ColorBase {
  @override
  Color get black2 => const Color(0xFFE1E3E7);

  @override
  Color get black4 => const Color(0xFFDDDFE3);

  @override
  Color get black6 => const Color(0xFFD9DBDF);

  @override
  Color get black8 => const Color(0xFFD5D7DB);

  @override
  Color get black10 => const Color(0xFFD1D2D6);

  @override
  Color get black20 => const Color(0xFFBCBEC2);

  @override
  Color get black30 => const Color(0xFFA8A9AD);

  @override
  Color get black40 => const Color(0xFF949599);

  @override
  Color get black50 => const Color(0xFF808084);

  @override
  Color get black60 => const Color(0xFF6B6C70);

  @override
  Color get black70 => const Color(0xFF57585C);

  @override
  Color get black80 => const Color(0xFF434347);

  @override
  Color get black90 => const Color(0xFF2E2F33);

  @override
  Color get black100 => const Color(0xFF1A1A1E);

  @override
  Color get white2 => const Color(0xFFE6E7EB);

  @override
  Color get white4 => const Color(0xFFE6E8EC);

  @override
  Color get white6 => const Color(0xFFE7E8EC);

  @override
  Color get white8 => const Color(0xFFE7E9ED);

  @override
  Color get white10 => const Color(0xFFE8E9ED);

  @override
  Color get white20 => const Color(0xFFEAECEF);

  @override
  Color get white30 => const Color(0xFFEDEEF1);

  @override
  Color get white40 => const Color(0xFFEFF1F3);

  @override
  Color get white50 => const Color(0xFFF2F3F5);

  @override
  Color get white60 => const Color(0xFFF5F5F7);

  @override
  Color get white70 => const Color(0xFFF7F8F9);

  @override
  Color get white80 => const Color(0xFFFAFAFB);

  @override
  Color get white90 => const Color(0xFFFCFCFD);

  @override
  Color get white100 => const Color(0xFFFFFFFF);

  @override
  Color get gray50 => const Color(0xFFF9FAFB);

  @override
  Color get gray100 => const Color(0xFFF3F4F6);

  @override
  Color get gray200 => const Color(0xFFE5E7EB);

  @override
  Color get gray300 => const Color(0xFFD2D6DB);

  @override
  Color get gray400 => const Color(0xFF9DA4AE);

  @override
  Color get gray500 => const Color(0xFF6C737F);

  @override
  Color get gray600 => const Color(0xFF4D5761);

  @override
  Color get gray700 => const Color(0xFF384250);

  @override
  Color get gray800 => const Color(0xFF1F2A37);

  @override
  Color get gray900 => const Color(0xFF111927);

  @override
  Color get success50 => const Color(0xFFECFDF3);

  @override
  Color get success100 => const Color(0xFFDCFAE6);

  @override
  Color get success200 => const Color(0xFFABEFC6);

  @override
  Color get success300 => const Color(0xFF75E0A7);

  @override
  Color get success400 => const Color(0xFF47CD89);

  @override
  Color get success500 => const Color(0xFF17B26A);

  @override
  Color get success600 => const Color(0xFF079455);

  @override
  Color get success700 => const Color(0xFF067647);

  @override
  Color get success800 => const Color(0xFF085D3A);

  @override
  Color get success900 => const Color(0xFF074D31);

  @override
  Color get warning50 => const Color(0xFFFFFAEB);

  @override
  Color get warning100 => const Color(0xFFFEF0C7);

  @override
  Color get warning200 => const Color(0xFFFEDF89);

  @override
  Color get warning300 => const Color(0xFFFEC84B);

  @override
  Color get warning400 => const Color(0xFFFDB022);

  @override
  Color get warning500 => const Color(0xFFF79009);

  @override
  Color get warning600 => const Color(0xFFDC6803);

  @override
  Color get warning700 => const Color(0xFFB54708);

  @override
  Color get warning800 => const Color(0xFF93370D);

  @override
  Color get warning900 => const Color(0xFF7A2E0E);

  @override
  Color get error50 => const Color(0xFFFEF3F2);

  @override
  Color get error100 => const Color(0xFFFEE4E2);

  @override
  Color get error200 => const Color(0xFFFECDCA);

  @override
  Color get error300 => const Color(0xFFFDA29B);

  @override
  Color get error400 => const Color(0xFFF97066);

  @override
  Color get error500 => const Color(0xFFF04438);

  @override
  Color get error600 => const Color(0xFFD92D20);

  @override
  Color get error700 => const Color(0xFFB42318);

  @override
  Color get error800 => const Color(0xFF912018);

  @override
  Color get error900 => const Color(0xFF7A271A);
}

class LightTextColor extends TextColor {
  @override
  Color get textBody => LightColorBase().black100;

  @override
  Color get textBrand => LightColorBrand().primary600;

  @override
  Color get textBrandActive => LightColorBrand().primary700;

  @override
  Color get textDescription => LightColorBase().gray500;

  @override
  Color get textDisable => LightColorBase().gray400;

  @override
  Color get textError => LightColorBase().error600;

  @override
  Color get textErrorActive => LightColorBase().error700;

  @override
  Color get textGray => LightColorBase().gray400;

  @override
  Color get textPlaceholder => LightColorBase().gray400;

  @override
  Color get textSuccess => LightColorBase().success600;

  @override
  Color get textTertiary => const Color(0xFF475467);

  @override
  Color get textWarning => LightColorBase().warning600;

  @override
  Color get textWhite => LightColorBase().white100;
}

class LightBorderColor extends BorderColor {
  @override
  Color get borderBrand => LightColorBrand().primary500;

  @override
  Color get borderBrandActive => LightColorBrand().primary700;

  @override
  Color get borderBrandError => LightColorBase().error500;

  @override
  Color get borderBrandErrorActive => LightColorBase().error700;

  @override
  Color get borderBrandSuccess => LightColorBase().success500;

  @override
  Color get borderBrandWarning => LightColorBase().warning500;

  @override
  Color get borderDark => LightColorBase().black100;

  @override
  Color get borderDisable => LightColorBase().gray200;

  @override
  Color get borderPrimary => LightColorBase().gray300;

  @override
  Color get borderSecondary => LightColorBase().gray200;

  @override
  Color get borderTertiary => LightColorBase().white20;

  @override
  Color get borderWhite => LightColorBase().white100;
}

class LightForegroundColor extends ForegroundColor {
  @override
  Color get fgBrandPrimary => LightColorBrand().primary500;

  @override
  Color get fgBrandPrimaryActive => LightColorBrand().primary700;

  @override
  Color get fgBrandSecondary => LightColorBrand().primary600;

  @override
  Color get fgDisable => LightColorBase().gray400;

  @override
  Color get fgErrorPrimary => LightColorBase().error600;

  @override
  Color get fgPrimary => LightColorBase().gray900;

  @override
  Color get fgQuaternary => LightColorBase().gray500;

  @override
  Color get fgQuinary => LightColorBase().gray400;

  @override
  Color get fgSecondary => LightColorBase().gray700;

  @override
  Color get fgSenary => LightColorBase().gray300;

  @override
  Color get fgSuccessPrimary => LightColorBase().success600;

  @override
  Color get fgTertiary => LightColorBase().gray600;

  @override
  Color get fgWarningPrimary => LightColorBase().warning600;

  @override
  Color get fgWhite => LightColorBase().white100;
}

class LightBackgroundColor extends BackgroundColor {
  @override
  Color get bgBrand => LightColorBrand().primary50;

  @override
  Color get bgBrandSolid => LightColorBrand().primary500;

  @override
  Color get bgBrandSolidActive => LightColorBrand().primary700;

  @override
  Color get bgBrandSolidDisable => LightColorBrand().primary50;

  @override
  Color get bgContainer => LightColorBase().gray100;

  @override
  Color get bgDark => LightColorBrand().primary900;

  @override
  Color get bgDarkItemActive => LightColorBase().white100;

  @override
  Color get bgDisable => LightColorBase().gray100;

  @override
  Color get bgError => LightColorBase().error100;

  @override
  Color get bgErrorSolid => LightColorBase().error500;

  @override
  Color get bgErrorSolidActive => LightColorBrand().primary700;

  @override
  Color get bgModal => LightColorBase().black50;

  @override
  Color get bgPrimary => LightColorBase().white100;

  @override
  Color get bgSecondary => LightColorBase().gray100;

  @override
  Color get bgSuccess => LightColorBase().success100;

  @override
  Color get bgTertiary => LightColorBase().gray200;

  @override
  Color get bgWarning => LightColorBase().warning100;
}
