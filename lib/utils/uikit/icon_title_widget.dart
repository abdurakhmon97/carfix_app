import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:flutter/material.dart';

class IconTitleWidget extends StatelessWidget {
  const IconTitleWidget({
    required this.icon,
    required this.title,
    this.isChevron = true,
    this.onTap,
    super.key,
  });

  final Widget icon;
  final String title;
  final bool isChevron;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CarfixGestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: context.textTheme.titleMedium,
            ),
          ),
          if (isChevron)
            Icon(
              Icons.chevron_right,
              color: context.colorScheme.primary,
            ),
        ],
      ),
    );
  }
}
