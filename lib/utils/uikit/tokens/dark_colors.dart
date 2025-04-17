import 'dart:ui';

import 'package:carfix_app/utils/uikit/tokens/base_colors.dart';

class DarkColorBrand extends ColorBrand {
  @override
  Color get primary50 => const Color(0xFF0A0C23);

  @override
  Color get primary100 => const Color(0xFF141A3D);

  @override
  Color get primary200 => const Color(0xFF1F2857);

  @override
  Color get primary300 => const Color(0xFF2A3671);

  @override
  Color get primary400 => const Color(0xFF35448B);

  @override
  Color get primary500 => const Color(0xFF4F5CCF);

  @override
  Color get primary600 => const Color(0xFF6D79CC);

  @override
  Color get primary700 => const Color(0xFF8B94D9);

  @override
  Color get primary800 => const Color(0xFFA9AFE6);

  @override
  Color get primary900 => const Color(0xFFC7CBF3);
}

class DarkColorBase extends ColorBase {
  // Black scale (light grays for dark theme)
  @override
  Color get black2 => const Color(0xFFFCFCFD);

  @override
  Color get black4 => const Color(0xFFFAFAFB);

  @override
  Color get black6 => const Color(0xFFF7F8F9);

  @override
  Color get black8 => const Color(0xFFF5F5F7);

  @override
  Color get black10 => const Color(0xFFF2F3F5);

  @override
  Color get black20 => const Color(0xFFEFF1F3);

  @override
  Color get black30 => const Color(0xFFEDEEF1);

  @override
  Color get black40 => const Color(0xFFEAECEF);

  @override
  Color get black50 => const Color(0xFFE8E9ED);

  @override
  Color get black60 => const Color(0xFFE7E9ED);

  @override
  Color get black70 => const Color(0xFFE7E8EC);

  @override
  Color get black80 => const Color(0xFFE6E8EC);

  @override
  Color get black90 => const Color(0xFFE6E7EB);

  @override
  Color get black100 => const Color(0xFFE1E3E7);

  // White scale (dark grays for dark theme)
  @override
  Color get white2 => const Color(0xFF171C42);

  @override
  Color get white4 => const Color(0xFF1A1E4C);

  @override
  Color get white6 => const Color(0xFF1D2156);

  @override
  Color get white8 => const Color(0xFF202460);

  @override
  Color get white10 => const Color(0xFF23276A);

  @override
  Color get white20 => const Color(0xFF2E2F33);

  @override
  Color get white30 => const Color(0xFF3A3B40);

  @override
  Color get white40 => const Color(0xFF45474D);

  @override
  Color get white50 => const Color(0xFF51535A);

  @override
  Color get white60 => const Color(0xFF5D5F67);

  @override
  Color get white70 => const Color(0xFF696B74);

  @override
  Color get white80 => const Color(0xFF757781);

  @override
  Color get white90 => const Color(0xFF81838E);

  @override
  Color get white100 => const Color(0xFF8D8F9B);

  // Gray scale inverted
  @override
  Color get gray50 => const Color(0xFF111927);

  @override
  Color get gray100 => const Color(0xFF1F2A37);

  @override
  Color get gray200 => const Color(0xFF384250);

  @override
  Color get gray300 => const Color(0xFF4D5761);

  @override
  Color get gray400 => const Color(0xFF6C737F);

  @override
  Color get gray500 => const Color(0xFF9DA4AE);

  @override
  Color get gray600 => const Color(0xFFD2D6DB);

  @override
  Color get gray700 => const Color(0xFFE5E7EB);

  @override
  Color get gray800 => const Color(0xFFF3F4F6);

  @override
  Color get gray900 => const Color(0xFFF9FAFB);

  // Success colors (darker greens)
  @override
  Color get success50 => const Color(0xFF022C15);

  @override
  Color get success100 => const Color(0xFF044326);

  @override
  Color get success200 => const Color(0xFF065A38);

  @override
  Color get success300 => const Color(0xFF097249);

  @override
  Color get success400 => const Color(0xFF0B895B);

  @override
  Color get success500 => const Color(0xFF17B26A);

  @override
  Color get success600 => const Color(0xFF47CD89);

  @override
  Color get success700 => const Color(0xFF75E0A7);

  @override
  Color get success800 => const Color(0xFFABEFC6);

  @override
  Color get success900 => const Color(0xFFDCFAE6);

  // Warning colors (darker oranges)
  @override
  Color get warning50 => const Color(0xFF2E2004);

  @override
  Color get warning100 => const Color(0xFF4D2E07);

  @override
  Color get warning200 => const Color(0xFF6C3C0A);

  @override
  Color get warning300 => const Color(0xFF8B4A0D);

  @override
  Color get warning400 => const Color(0xFFAA5810);

  @override
  Color get warning500 => const Color(0xFFF79009);

  @override
  Color get warning600 => const Color(0xFFFDB022);

  @override
  Color get warning700 => const Color(0xFFFEC84B);

  @override
  Color get warning800 => const Color(0xFFFEDF89);

  @override
  Color get warning900 => const Color(0xFFFEF0C7);

  // Error colors (darker reds)
  @override
  Color get error50 => const Color(0xFF3A0A0D);

  @override
  Color get error100 => const Color(0xFF5C0F14);

  @override
  Color get error200 => const Color(0xFF7E141B);

  @override
  Color get error300 => const Color(0xFFA01922);

  @override
  Color get error400 => const Color(0xFFC21E29);

  @override
  Color get error500 => const Color(0xFFF04438);

  @override
  Color get error600 => const Color(0xFFF97066);

  @override
  Color get error700 => const Color(0xFFFDA29B);

  @override
  Color get error800 => const Color(0xFFFECDCA);

  @override
  Color get error900 => const Color(0xFFFEE4E2);
}

class DarkTextColor extends TextColor {
  @override
  Color get textBody => DarkColorBase().white100;

  @override
  Color get textBrand => DarkColorBrand().primary500;

  @override
  Color get textBrandActive => DarkColorBrand().primary400;

  @override
  Color get textDescription => DarkColorBase().gray400;

  @override
  Color get textDisable => DarkColorBase().gray500;

  @override
  Color get textError => DarkColorBase().error500;

  @override
  Color get textErrorActive => DarkColorBase().error400;

  @override
  Color get textGray => DarkColorBase().gray500;

  @override
  Color get textPlaceholder => DarkColorBase().gray500;

  @override
  Color get textSuccess => DarkColorBase().success500;

  @override
  Color get textTertiary => const Color(0xFF9DA4AE);

  @override
  Color get textWarning => DarkColorBase().warning500;

  @override
  Color get textWhite => DarkColorBase().black100;
}

class DarkBorderColor extends BorderColor {
  @override
  Color get borderBrand => DarkColorBrand().primary400;

  @override
  Color get borderBrandActive => DarkColorBrand().primary300;

  @override
  Color get borderBrandError => DarkColorBase().error400;

  @override
  Color get borderBrandErrorActive => DarkColorBase().error300;

  @override
  Color get borderBrandSuccess => DarkColorBase().success400;

  @override
  Color get borderBrandWarning => DarkColorBase().warning400;

  @override
  Color get borderDark => DarkColorBase().white100;

  @override
  Color get borderDisable => DarkColorBase().gray800;

  @override
  Color get borderPrimary => DarkColorBase().gray700;

  @override
  Color get borderSecondary => DarkColorBase().gray800;

  @override
  Color get borderTertiary => DarkColorBase().white20;

  @override
  Color get borderWhite => DarkColorBase().black100;
}

class DarkForegroundColor extends ForegroundColor {
  @override
  Color get fgBrandPrimary => DarkColorBrand().primary500;

  @override
  Color get fgBrandPrimaryActive => DarkColorBrand().primary400;

  @override
  Color get fgBrandSecondary => DarkColorBrand().primary600;

  @override
  Color get fgDisable => DarkColorBase().gray500;

  @override
  Color get fgErrorPrimary => DarkColorBase().error500;

  @override
  Color get fgPrimary => DarkColorBase().white100;

  @override
  Color get fgQuaternary => DarkColorBase().gray400;

  @override
  Color get fgQuinary => DarkColorBase().gray500;

  @override
  Color get fgSecondary => DarkColorBase().gray300;

  @override
  Color get fgSenary => DarkColorBase().gray700;

  @override
  Color get fgSuccessPrimary => DarkColorBase().success500;

  @override
  Color get fgTertiary => DarkColorBase().gray200;

  @override
  Color get fgWarningPrimary => DarkColorBase().warning500;

  @override
  Color get fgWhite => DarkColorBase().black100;
}

class DarkBackgroundColor extends BackgroundColor {
  @override
  Color get bgBrand => DarkColorBrand().primary900;

  @override
  Color get bgBrandSolid => DarkColorBrand().primary500;

  @override
  Color get bgBrandSolidActive => DarkColorBrand().primary400;

  @override
  Color get bgBrandSolidDisable => DarkColorBrand().primary900;

  @override
  Color get bgContainer => DarkColorBase().gray50;

  @override
  Color get bgDark => DarkColorBrand().primary50;

  @override
  Color get bgDarkItemActive => DarkColorBase().black100;

  @override
  Color get bgDisable => DarkColorBase().gray50;

  @override
  Color get bgError => DarkColorBase().error900;

  @override
  Color get bgErrorSolid => DarkColorBase().error500;

  @override
  Color get bgErrorSolidActive => DarkColorBase().error400;

  @override
  Color get bgModal => DarkColorBase().gray200;

  @override
  Color get bgPrimary => DarkColorBase().white2;

  @override
  Color get bgSecondary => DarkColorBase().gray50;

  @override
  Color get bgSuccess => DarkColorBase().success900;

  @override
  Color get bgTertiary => DarkColorBase().gray100;

  @override
  Color get bgWarning => DarkColorBase().warning900;
}
