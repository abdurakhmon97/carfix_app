import 'package:carfix_app/utils/uikit/tokens/colors.dart';
import 'package:flutter/material.dart';

const _letterSpacingMultiplier = 1.0;

class Typographies {
  const Typographies._();

  static const headlineLG = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    height: 32 / 24,
    letterSpacing: _letterSpacingMultiplier * -0.3,
  );

  static const headlineSM = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 28 / 20,
    letterSpacing: _letterSpacingMultiplier * -0.3,
  );
  static final headlineSMw700 = headlineSM.copyWith(
    fontWeight: FontWeight.w700,
  );
  static final headlineSMWhite = headlineSM.copyWith(
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static const titleRegular = TextStyle(
    fontSize: 18,
    height: 24 / 18,
    letterSpacing: _letterSpacingMultiplier * -0.3,
  );
  static const titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 24 / 18,
    letterSpacing: _letterSpacingMultiplier * -0.3,
  );
  static const titleSemiBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 24 / 18,
    letterSpacing: _letterSpacingMultiplier * -0.3,
  );

  static final titleSemiBoldWhite = titleSemiBold.copyWith(color: Colors.white);

  static const bodyTextLGRegular = TextStyle(
    fontSize: 16,
    height: 21 / 16,
    letterSpacing: _letterSpacingMultiplier * -0.3,
  );
  static const bodyTextLGMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 21 / 16,
    letterSpacing: _letterSpacingMultiplier * -0.3,
  );

  static final bodyTextLGMediumWhite =
      bodyTextLGMedium.copyWith(color: Colors.white);

  static const bodyTextLGSemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 21 / 16,
    letterSpacing: _letterSpacingMultiplier * -0.3,
  );
  static const bodyTextSMRegular = TextStyle(
    fontSize: 14,
    height: 19 / 14,
  );
  static const bodyTextSMMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 19 / 14,
  );
  static const bodyTextSMSemiBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 19 / 14,
  );
  static const labelLGRegular = TextStyle(
    fontSize: 12,
    height: 16 / 12,
  );

  static final labelLGRegularGrey =
      labelLGRegular.copyWith(color: ColorBase.black60);

  static const labelLGMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 16 / 12,
  );

  static final labelLGMediumPrimary =
      labelLGMedium.copyWith(color: ColorBrand.primary700);

  static final labelLGMediumSecondary =
      labelLGMedium.copyWith(color: ColorBase.gray500);

  static const labelLGSemiBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
  );

  static final labelLGSemiBoldGreen = labelLGSemiBold.copyWith(
    color: ColorBase.success700,
  );
  static final labelLGSemiBoldOrange = labelLGSemiBold.copyWith(
    color: ColorBase.warning600,
  );

  static const labelSMRegular = TextStyle(
    fontSize: 10,
    height: 15 / 10,
  );
  static const labelSMMedium = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 15 / 10,
  );
  static const labelSMSemiBold = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    height: 15 / 10,
  );

  //------------------------------- COLOR TEXT STYLE -----------------------

  static final bodyTextLGSemiBoldWhite = bodyTextLGSemiBold.copyWith(
    color: TextColor.textWhite,
  );

  static final bodyTextLGSemiBoldBrand = bodyTextLGSemiBold.copyWith(
    color: TextColor.textBrand,
  );

  static final bodyTextLGSemiBoldBrandActive = bodyTextLGSemiBold.copyWith(
    color: TextColor.textBrandActive,
  );

  static final bodyTextLGSemiBoldErrorActive = bodyTextLGSemiBold.copyWith(
    color: TextColor.textErrorActive,
  );

  static final bodyTextSMSemiBoldBrand = bodyTextSMSemiBold.copyWith(
    color: TextColor.textBrand,
  );
  static final bodyTextSMSemiBoldSuccess = bodyTextSMSemiBold.copyWith(
    color: ColorBase.success600,
  );

  static final bodyTextSMSemiBoldBrandActive = bodyTextSMSemiBold.copyWith(
    color: TextColor.textBrandActive,
  );

  static final bodyTextSMSemiBoldError = bodyTextSMSemiBold.copyWith(
    color: TextColor.textError,
  );

  static final bodyTextLGMediumPlaceholder = bodyTextLGMedium.copyWith(
    color: TextColor.textPlaceholder,
  );

  static final bodyTextSMRegularBody = bodyTextSMRegular.copyWith(
    color: TextColor.textBody,
  );

  static final bodyTextSMRegularBodyGrey = bodyTextSMRegular.copyWith(
    color: TextColor.textDescription,
  );

  static final bodyTextSMRegularError = bodyTextSMRegular.copyWith(
    color: TextColor.textError,
  );

  static final bodyTextSMMediumDescription = bodyTextSMMedium.copyWith(
    color: TextColor.textDescription,
  );

  static final bodyTextLGSemiBoldDescription = bodyTextLGSemiBold.copyWith(
    color: TextColor.textDescription,
  );
  static final bodyTextLGMediumBody = bodyTextLGMedium.copyWith(
    color: TextColor.textBody,
  );

  static final bodyTextSMSemiBoldWhite = bodyTextSMSemiBold.copyWith(
    color: TextColor.textWhite,
  );
  static final labelLGRegularDescription = labelLGRegular.copyWith(
    color: TextColor.textDescription,
  );

  static final bodyTextSMMediumBrand = bodyTextSMMedium.copyWith(
    color: TextColor.textBrand,
  );
  static final headlineSMPlaceholder = headlineSM.copyWith(
    color: TextColor.textPlaceholder,
  );
  static final bodyTextSMSemiBoldDescription = bodyTextSMSemiBold.copyWith(
    color: TextColor.textDescription,
  );
  static final titleSemiBoldSuccess =
      titleSemiBold.copyWith(color: TextColor.textSuccess);
  static final titleSemiBoldBrand =
      titleSemiBold.copyWith(color: TextColor.textBrand);
  static final bodyTextSMMediumSuccess =
      bodyTextSMMedium.copyWith(color: TextColor.textSuccess);
  static final bodyTextSMRegularWarning =
      bodyTextSMRegular.copyWith(color: TextColor.textWarning);
  static final bodyTextSMRegularTertiary =
      bodyTextSMRegular.copyWith(color: TextColor.textTertiary);
  static final bodyTextLGMediumBrand =
      bodyTextLGMedium.copyWith(color: TextColor.textBrand);
  static final bodyTextSMRegularWhite = bodyTextSMRegular.copyWith(
    color: TextColor.textWhite,
  );
  static final bodyTextSMRegularDescription = bodyTextSMRegular.copyWith(
    color: TextColor.textDescription,
  );
  static final titleSemiBoldError = titleSemiBold.copyWith(
    color: TextColor.textError,
  );
  static final bodyTextSMMediumWhite = bodyTextSMMedium.copyWith(
    color: TextColor.textWhite,
  );
  static final labelLGMediumDescription = labelLGMedium.copyWith(
    color: TextColor.textDescription,
  );
  static final bodyTextLGRegularWhite = bodyTextLGRegular.copyWith(
    color: TextColor.textWhite,
  );
  static final bodyTextSMMediumError =
      bodyTextSMMedium.copyWith(color: TextColor.textError);
}
