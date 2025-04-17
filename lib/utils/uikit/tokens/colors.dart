import 'package:flutter/material.dart';

class ColorBrand {
  const ColorBrand._();

  static const primary50 = Color(0xFFE9EAF7);
  static const primary100 = Color(0xFFBCC1E7);
  static const primary200 = Color(0xFFA5ADDF);
  static const primary300 = Color(0xFF838ED4);
  static const primary400 = Color(0xFF6D79CC);
  static const primary500 = Color(0xFF4050BC);
  static const primary600 = Color(0xFF35429B);
  static const primary700 = Color(0xFF313D90);
  static const primary800 = Color(0xFF262F6F);
  static const primary900 = Color(0xFF171C42);
}

class ColorBase {
  const ColorBase._();

  static const black2 = Color(0xFFE1E3E7);
  static const black4 = Color(0xFFDDDFE3);
  static const black6 = Color(0xFFD9DBDF);
  static const black8 = Color(0xFFD5D7DB);
  static const black10 = Color(0xFFD1D2D6);
  static const black20 = Color(0xFFBCBEC2);
  static const black30 = Color(0xFFA8A9AD);
  static const black40 = Color(0xFF949599);
  static const black50 = Color(0xFF808084);
  static const black60 = Color(0xFF6B6C70);
  static const black70 = Color(0xFF57585C);
  static const black80 = Color(0xFF434347);
  static const black90 = Color(0xFF2E2F33);
  static const black100 = Color(0xFF1A1A1E);

  static const white2 = Color(0xFFE6E7EB);
  static const white4 = Color(0xFFE6E8EC);
  static const white6 = Color(0xFFE7E8EC);
  static const white8 = Color(0xFFE7E9ED);
  static const white10 = Color(0xFFE8E9ED);
  static const white20 = Color(0xFFEAECEF);
  static const white30 = Color(0xFFEDEEF1);
  static const white40 = Color(0xFFEFF1F3);
  static const white50 = Color(0xFFF2F3F5);
  static const white60 = Color(0xFFF5F5F7);
  static const white70 = Color(0xFFF7F8F9);
  static const white80 = Color(0xFFFAFAFB);
  static const white90 = Color(0xFFFCFCFD);
  static const white100 = Color(0xFFFFFFFF);

  static const gray50 = Color(0xFFF9FAFB);
  static const gray100 = Color(0xFFF3F4F6);
  static const gray200 = Color(0xFFE5E7EB);
  static const gray300 = Color(0xFFD2D6DB);
  static const gray400 = Color(0xFF9DA4AE);
  static const gray500 = Color(0xFF6C737F);
  static const gray600 = Color(0xFF4D5761);
  static const gray700 = Color(0xFF384250);
  static const gray800 = Color(0xFF1F2A37);
  static const gray900 = Color(0xFF111927);

  static const success50 = Color(0xFFECFDF3);
  static const success100 = Color(0xFFDCFAE6);
  static const success200 = Color(0xFFABEFC6);
  static const success300 = Color(0xFF75E0A7);
  static const success400 = Color(0xFF47CD89);
  static const success500 = Color(0xFF17B26A);
  static const success600 = Color(0xFF079455);
  static const success700 = Color(0xFF067647);
  static const success800 = Color(0xFF085D3A);
  static const success900 = Color(0xFF074D31);

  static const warning50 = Color(0xFFFFFAEB);
  static const warning100 = Color(0xFFFEF0C7);
  static const warning200 = Color(0xFFFEDF89);
  static const warning300 = Color(0xFFFEC84B);
  static const warning400 = Color(0xFFFDB022);
  static const warning500 = Color(0xFFF79009);
  static const warning600 = Color(0xFFDC6803);
  static const warning700 = Color(0xFFB54708);
  static const warning800 = Color(0xFF93370D);
  static const warning900 = Color(0xFF7A2E0E);

  static const error50 = Color(0xFFFEF3F2);
  static const error100 = Color(0xFFFEE4E2);
  static const error200 = Color(0xFFFECDCA);
  static const error300 = Color(0xFFFDA29B);
  static const error400 = Color(0xFFF97066);
  static const error500 = Color(0xFFF04438);
  static const error600 = Color(0xFFD92D20);
  static const error700 = Color(0xFFB42318);
  static const error800 = Color(0xFF912018);
  static const error900 = Color(0xFF7A271A);
}

class TextColor {
  static const textBody = ColorBase.black100;
  static const textDescription = ColorBase.gray500;
  static const textGray = ColorBase.gray400;
  static const textWhite = ColorBase.white100;
  static const textPlaceholder = ColorBase.gray400;
  static const textDisable = ColorBase.gray400;
  static const textBrand = ColorBrand.primary600;
  static const textBrandActive = ColorBrand.primary700;
  static const textSuccess = ColorBase.success600;
  static const textWarning = ColorBase.warning600;
  static const textError = ColorBase.error600;
  static const textErrorActive = ColorBase.error700;
  static const textTertiary = Color(0xFF475467);
}

class BorderColor {
  static const borderPrimary = ColorBase.gray300;
  static const borderSecondary = ColorBase.gray200;
  static const borderTertiary = ColorBase.white20;
  static const borderWhite = ColorBase.white100;
  static const borderDark = ColorBase.black100;
  static const borderDisable = ColorBase.gray200;
  static const borderBrand = ColorBrand.primary500;
  static const borderBrandActive = ColorBrand.primary700;
  static const borderBrandSuccess = ColorBase.success500;
  static const borderBrandWarning = ColorBase.warning500;
  static const borderBrandError = ColorBase.error500;
  static const borderBrandErrorActive = ColorBase.error700;
}

class ForegroundColor {
  static const fgWhite = ColorBase.white100;
  static const fgPrimary = ColorBase.gray900;
  static const fgSecondary = ColorBase.gray700;
  static const fgTertiary = ColorBase.gray600;
  static const fgQuaternary = ColorBase.gray500;
  static const fgQuinary = ColorBase.gray400;
  static const fgSenary = ColorBase.gray300;
  static const fgDisable = ColorBase.gray400;
  static const fgBrandPrimary = ColorBrand.primary500;
  static const fgBrandPrimaryActive = ColorBrand.primary700;
  static const fgBrandSecondary = ColorBrand.primary600;
  static const fgSuccessPrimary = ColorBase.success600;
  static const fgWarningPrimary = ColorBase.warning600;
  static const fgErrorPrimary = ColorBase.error600;
}

class BackgroundColor {
  static const bgContainer = ColorBase.gray100;
  static const bgPrimary = ColorBase.white100;
  static const bgSecondary = ColorBase.gray100;
  static const bgTertiary = ColorBase.gray200;
  static const bgDark = ColorBrand.primary900;
  static const bgDarkItemActive = ColorBase.white100;
  static const bgDisable = ColorBase.gray100;
  static const bgBrand = ColorBrand.primary50;
  static const bgBrandSolid = ColorBrand.primary500;
  static const bgBrandSolidActive = ColorBrand.primary700;
  static const bgBrandSolidDisable = ColorBrand.primary50;
  static const bgSuccess = ColorBase.success100;
  static const bgWarning = ColorBase.warning100;
  static const bgError = ColorBase.error100;
  static const bgErrorSolid = ColorBase.error500;
  static const bgErrorSolidActive = ColorBase.error700;
  static const bgModal = ColorBase.black50;
}
