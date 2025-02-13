import 'package:carfix_app/utils/extensions.dart';
import 'package:flutter/material.dart';

class CarfixChips extends StatelessWidget {
  const CarfixChips({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.secondaryContainer,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: Text(
        title,
        style: context.textTheme.labelSmall?.copyWith(
          color: context.colorScheme.onSecondaryContainer,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
