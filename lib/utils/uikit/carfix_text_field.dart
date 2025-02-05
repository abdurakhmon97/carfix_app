import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ValidationMode {
  onChanged,
  onEditingComplete,
  onSubmitted,
  onFocus,
  onUnFocus,
  onUnFocusWithValue,
}

class CarfixTextField extends StatefulWidget {
  const CarfixTextField({
    required this.controller,
    this.padding = EdgeInsets.zero,
    this.enabled = true,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
    this.minLines = 1,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 16,
    ),
    this.validationModes = const [],
    this.focusNode,
    this.labelText,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.onTap,
    this.inputType,
    this.inputFormatters,
    this.textInputAction,
    this.hintText,
    this.prefixIcon,
    this.autofocus,
    this.helperText,
    this.maxLength,
    super.key,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? labelText;
  final Widget? suffixIcon;
  final EdgeInsets padding;
  final EdgeInsets contentPadding;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final bool enabled;
  final VoidCallback? onTap;
  final TextInputType? inputType;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final int maxLines;
  final int minLines;
  final List<ValidationMode> validationModes;
  final String? hintText;
  final Widget? prefixIcon;
  final bool? autofocus;
  final String? helperText;
  final int? maxLength;

  @override
  State<StatefulWidget> createState() => CarfixTextFieldState();
}

class CarfixTextFieldState<T extends CarfixTextField> extends State<T> {
  late final FocusNode _focusNode;
  late final TextEditingController _controller;

  FocusNode get focusNode => _focusNode;

  TextEditingController get controller => _controller;

  final _formFieldKey = GlobalKey<FormFieldState<String>>();

  @protected
  List<TextInputFormatter>? get inputFormatters => widget.inputFormatters;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _controller = widget.controller;
    _resetFocusListeners();
    if (widget.validationModes.contains(ValidationMode.onChanged)) {
      controller.addListener(validate);
    }
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    if (oldWidget.focusNode != widget.focusNode) {
      _resetFocusListeners();
    }

    super.didUpdateWidget(oldWidget);
  }

  void formatAndSetValue(String value) {
    final oldValue = controller.value;
    final newValue = oldValue.copyWith(text: value);
    var formattedValue = inputFormatters?.fold<TextEditingValue>(
          newValue,
          (TextEditingValue newValue, TextInputFormatter formatter) =>
              formatter.formatEditUpdate(oldValue, newValue),
        ) ??
        newValue;
    formattedValue = formattedValue.copyWith(
      selection: TextSelection.collapsed(offset: formattedValue.text.length),
    );
    controller.value = formattedValue;
    onChanged(formattedValue.text);
  }

  @protected
  void onChanged(String value) {
    _setFormFieldValue(value);
    if (widget.validationModes.contains(ValidationMode.onChanged)) {
      validate();
    }
    setState(() {
      widget.onChanged?.call(value);
    });
  }

  @protected
  void onSubmitted(String value) {
    _setFormFieldValue(value);
    if (widget.validationModes.contains(ValidationMode.onSubmitted)) {
      validate();
    }
  }

  @protected
  void onEditingComplete() {
    final value = controller.text;
    _setFormFieldValue(value);
    if (widget.validationModes.contains(ValidationMode.onEditingComplete)) {
      validate();
    }

    final textInputAction = widget.textInputAction;

    switch (textInputAction) {
      case TextInputAction.next:
        FocusScope.of(context).nextFocus();
        break;
      case TextInputAction.previous:
        FocusScope.of(context).previousFocus();
        break;
      case TextInputAction.none:
      case TextInputAction.unspecified:
      case TextInputAction.done:
      case TextInputAction.go:
      case TextInputAction.search:
      case TextInputAction.send:
      case TextInputAction.continueAction:
      case TextInputAction.join:
      case TextInputAction.route:
      case TextInputAction.emergencyCall:
      case TextInputAction.newline:
      default:
        focusNode.unfocus();
    }
  }

  bool validate() {
    return _formFieldKey.currentState?.validate() ?? false;
  }

  void _resetFocusListeners() {
    focusNode.removeListener(_focusListener);
    focusNode.addListener(_focusListener);
  }

  void _focusListener() {
    if (focusNode.hasFocus) {
      if (widget.validationModes.contains(ValidationMode.onFocus)) {
        validate();
      }
    } else {
      if (widget.validationModes.contains(ValidationMode.onUnFocus)) {
        validate();
      }
      if (widget.validationModes.contains(ValidationMode.onUnFocusWithValue) &&
          controller.text.isNotEmpty) {
        validate();
      }
    }
    if (mounted) {
      setState(() {});
    }
  }

  void _setFormFieldValue(String? value) {
    // ignore: invalid_use_of_protected_member
    _formFieldKey.currentState?.setValue(value);
  }

  void resetFormField() {
    _formFieldKey.currentState?.reset();
  }

  @override
  Widget build(BuildContext context) {
    return CarfixGestureDetector(
      onTap: widget.onTap,
      child: FormField(
        key: _formFieldKey,
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (state) {
          final hasError = state.hasError;
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.labelText != null) ...[
                Text(
                  '${widget.labelText}',
                  style: context.textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
              ],
              Container(
                height: widget.maxLines > 1 ? null : 46,
                padding: widget.padding,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: TextFormField(
                  controller: controller,
                  focusNode: focusNode,
                  autofocus: widget.autofocus ?? false,
                  keyboardType: widget.inputType,
                  enabled: widget.enabled,
                  maxLength: widget.maxLength,
                  onChanged: onChanged,
                  onEditingComplete: onEditingComplete,
                  onFieldSubmitted: onSubmitted,
                  textInputAction: widget.textInputAction,
                  textCapitalization: widget.textCapitalization,
                  style: context.textTheme.bodySmall,
                  inputFormatters: widget.inputFormatters,
                  maxLines: widget.maxLines,
                  minLines: widget.minLines,
                  cursorColor: context.colorScheme.primary,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                    focusedBorder: _getBorder(hasError),
                    enabledBorder: _getBorder(hasError),
                    disabledBorder: _getBorder(hasError),
                    hintText: widget.hintText,
                    hintStyle: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.secondary,
                    ),
                    fillColor: Colors.transparent,
                    suffixIcon: _suffix,
                    suffixIconConstraints: _suffixIconConstraints,
                    prefixIcon: _prefix,
                    prefixIconConstraints: _prefixIconConstraints,
                    counterText: "",
                  ),
                ),
              ),
              if (state.hasError) ...[
                const SizedBox(height: 8),
                Text(
                  state.errorText!,
                  style: context.textTheme.labelMedium?.copyWith(
                    color: context.colorScheme.error,
                  ),
                ),
              ] else if (widget.helperText != null) ...[
                const SizedBox(height: 8),
                Text(
                  widget.helperText!,
                  style: context.textTheme.labelMedium?.copyWith(
                    color: context.colorScheme.secondary,
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }

  InputBorder _getBorder(bool hasError) {
    late Color color;
    if (hasError) {
      color = context.colorScheme.errorContainer;
    } else if (_focusNode.hasFocus) {
      color = context.colorScheme.secondary;
    } else {
      color = context.colorScheme.onSecondary;
    }
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: color, width: 1),
    );
  }

  Widget? get _suffix {
    if (widget.suffixIcon != null) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: widget.suffixIcon,
      );
    }
    return null;
  }

  BoxConstraints? get _suffixIconConstraints {
    if (widget.suffixIcon != null) {
      return const BoxConstraints.expand(
        height: 22,
        width: 54,
      );
    }
    return null;
  }

  Widget? get _prefix {
    if (widget.prefixIcon != null) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10.5,
        ),
        child: widget.prefixIcon,
      );
    }
    return null;
  }

  BoxConstraints? get _prefixIconConstraints {
    if (widget.suffixIcon != null) {
      return const BoxConstraints.expand(
        height: 45,
        width: 56,
      );
    }
    return null;
  }
}
