import 'package:carfix_app/utils/theme/theme_settings.dart';
import 'package:flutter/material.dart';

import 'base_colors.dart';

class DarkTheme extends BaseColors {
  final Map<String, Color> constColors;

  DarkTheme({required this.constColors});

  @override
  Color get background => const Color.fromRGBO(21, 20, 31, 1);

  @override
  Color get text500 => constColors[ColorNames.text500]!;

  @override
  Color get text900 => constColors[ColorNames.text900]!;

  @override
  Color get success => constColors[ColorNames.success]!;

  @override
  Color get error => constColors[ColorNames.error]!;
}
