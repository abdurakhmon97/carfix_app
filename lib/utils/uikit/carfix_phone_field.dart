import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/uikit/phone_formatter.dart';
import 'package:flutter/material.dart';

class CarfixPhoneField extends CarfixTextField {
  CarfixPhoneField({
    required super.controller,
    super.validationModes = const [
      ValidationMode.onChanged,
    ],
    super.padding = EdgeInsets.zero,
    super.onChanged,
    super.autofocus,
    super.validator,
    super.key,
    super.labelText,
    super.prefixIcon,
  }) : super(
          inputFormatters: [PhoneFormatter()],
          inputType: TextInputType.phone,
        );

  @override
  State<StatefulWidget> createState() => CarfixPhoneFieldState();
}

class CarfixPhoneFieldState extends CarfixTextFieldState<CarfixPhoneField> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      formatAndSetValue(controller.text);
    });
  }
}
