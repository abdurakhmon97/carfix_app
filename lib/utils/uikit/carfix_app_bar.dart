import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:flutter/material.dart';

class CarfixAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CarfixAppBar({
    required this.title,
    this.isBackButtonVisible = true,
    this.onBackTap,
    super.key,
  });

  final String title;
  final VoidCallback? onBackTap;
  final bool isBackButtonVisible;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: context.textTheme.titleLarge,
        overflow: TextOverflow.clip,
      ),
      backgroundColor: context.colorScheme.primaryContainer,
      leading: _appBarLeading(context),
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
    );
  }

  Widget _appBarLeading(BuildContext context) {
    if (!isBackButtonVisible) {
      return const SizedBox.shrink();
    }
    return CarfixGestureDetector(
      onTap: onBackTap ?? () => Navigator.of(context).pop(),
      child: Icon(
        Icons.arrow_back_ios_new,
        color: context.colorScheme.primary,
        size: 24,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
