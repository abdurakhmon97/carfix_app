import 'dart:ui';

import 'package:carfix_app/data/storage/shared_pref_storage.dart';

const Map<String, Map<String, Color>> constantColors = {
  SharedPrefStorage.lightTheme: {
    ColorNames.success: Color.fromRGBO(64, 221, 127, 1),
    ColorNames.error: Color.fromRGBO(255, 136, 136, 1),
    ColorNames.text900: Color.fromRGBO(21, 20, 31, 1),
    ColorNames.text500: Color.fromRGBO(120, 120, 120, 1),
  },
  SharedPrefStorage.darkTheme: {
    ColorNames.success: Color.fromRGBO(26, 183, 89, 1),
    ColorNames.error: Color.fromRGBO(210, 50, 50, 1),
    ColorNames.text900: Color.fromRGBO(255, 255, 255, 1),
    ColorNames.text500: Color.fromRGBO(122, 122, 122, 1),
  }
};

class ColorNames {
  static const primary = 'primary';
  static const success = 'success';
  static const error = 'Error';
  static const text900 = 'text-900';
  static const text500 = 'text-500';
}
