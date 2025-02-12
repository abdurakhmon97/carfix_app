import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_app/utils/uikit/carfix_colors.dart';
import 'package:flutter/material.dart';

class CarfixButton extends StatelessWidget {
  const CarfixButton({
    super.key,
    required this.title,
    this.onTap,
    this.isLoading = false,
    this.leftIcon,
    this.rightIcon,
  });

  final String title;
  final VoidCallback? onTap;
  final bool isLoading;
  final Widget? leftIcon;
  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isLoading ? () {} : onTap,
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all(
          const Size.fromHeight(36),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevation: WidgetStateProperty.all(0),
        backgroundColor: WidgetStateProperty.all(
          _buttonColor(context),
        ),
        overlayColor: WidgetStateProperty.all(_onTapColor(context)),
        alignment: Alignment.center,
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
      ),
      child: isLoading
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox.square(
                  dimension: 24,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: context.colorScheme.primary,
                      strokeWidth: 2,
                    ),
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leftIcon != null) ...[
                  leftIcon!,
                  const SizedBox(width: 16),
                ],
                Text(
                  title,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ),
                ),
                if (rightIcon != null) ...[
                  const SizedBox(width: 16),
                  rightIcon!,
                ],
              ],
            ),
    );
  }

  Color _buttonColor(BuildContext context) {
    if (onTap == null) {
      return CarfixColors.primary.withValues(alpha: 0.5);
    }
    return CarfixColors.primary;
  }

  Color _onTapColor(BuildContext context) {
    return context.colorScheme.primary;
  }
}
