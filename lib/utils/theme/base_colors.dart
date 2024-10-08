import 'package:flutter/material.dart';

abstract class BaseColors {
  const BaseColors();

  Color get primary5 => primary.withOpacity(0.05);

  Color get primary10 => primary.withOpacity(0.1);

  Color get primary20 => primary.withOpacity(0.2);

  Color get primary40 => primary.withOpacity(0.4);

  Color get primary60 => primary.withOpacity(0.6);

  Color get primary80 => primary.withOpacity(0.8);

  Color get primary90 => primary.withOpacity(0.9);

  Color get primary => const Color(0xFF0055FF);

  Color get secondaryPrimary => const Color(0xFFFFD700);

  Color get secondaryPrimary90 => secondaryPrimary.withOpacity(0.9);

  Color get secondaryPrimary80 => secondaryPrimary.withOpacity(0.8);

  Color get secondaryPrimary60 => secondaryPrimary.withOpacity(0.6);

  Color get secondaryPrimary40 => secondaryPrimary.withOpacity(0.4);

  Color get secondaryPrimary20 => secondaryPrimary.withOpacity(0.2);

  Color get secondaryPrimary10 => secondaryPrimary.withOpacity(0.1);

  Color get secondaryPrimary5 => secondaryPrimary.withOpacity(0.05);

  Color get black => const Color.fromRGBO(29, 21, 21, 1);

  Color get black90 => const Color.fromRGBO(52, 44, 44, 1);

  Color get black80 => const Color.fromRGBO(74, 68, 68, 1);

  Color get black60 => const Color.fromRGBO(119, 115, 115, 1);

  Color get black40 => const Color.fromRGBO(165, 161, 161, 1);

  Color get black20 => const Color.fromRGBO(210, 208, 208, 1);

  Color get black10 => const Color.fromRGBO(232, 232, 232, 1);

  Color get black5 => const Color.fromRGBO(244, 243, 243, 1);

  Color get white => const Color.fromRGBO(255, 255, 255, 1);

  Color get errorDefault => const Color.fromRGBO(254, 88, 88, 1);

  Color get errorLight => const Color.fromRGBO(255, 136, 136, 1);

  Color get errorDark => const Color.fromRGBO(210, 50, 50, 1);

  Color get successDefault => const Color.fromRGBO(42, 199, 105, 1);

  Color get successLight => const Color.fromRGBO(64, 221, 127, 1);

  Color get successDark => const Color.fromRGBO(26, 183, 89, 1);

  Color get warningDefault => const Color.fromRGBO(246, 166, 9, 1);

  Color get warningLight => const Color.fromRGBO(255, 188, 31, 1);

  Color get warningDark => const Color.fromRGBO(232, 152, 6, 1);

  Color get otherGrey => const Color.fromRGBO(50, 48, 69, 1);

  Color get backgroundSecondary => const Color.fromRGBO(87, 26, 141, 1);

  Color get backgroundPrimary => const Color.fromRGBO(0, 191, 139, 1);

  Color get success;

  Color get error;

  Color get text900;

  Color get text500;

  Color get background;
}
