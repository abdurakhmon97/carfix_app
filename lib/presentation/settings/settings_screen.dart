import 'package:carfix_app/application/language_provider.dart';
import 'package:carfix_app/application/theme_provider.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_app/utils/uikit/dialog_manager.dart';
import 'package:carfix_app/utils/uikit/icon_title_widget.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const String tag = 'settings';

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.settings;
    final isDark = context.read<ThemeProvider>().mode == ThemeMode.dark;
    return Scaffold(
      appBar: CarfixAppBar(
        title: tr.title,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(height: 16),
            CarfixGestureDetector(
              onTap: () {
                context.read<ThemeProvider>().setTheme(
                      isDark ? ThemeMode.light : ThemeMode.dark,
                    );
              },
              child: Row(
                children: [
                  Expanded(
                    child: IconTitleWidget(
                      icon: SvgPicture.asset(AppIcons.icThemeChange),
                      title: tr.theme,
                      isChevron: false,
                    ),
                  ),
                  Switch(
                    value: isDark,
                    onChanged: (_) {
                      context.read<ThemeProvider>().setTheme(
                            isDark ? ThemeMode.light : ThemeMode.dark,
                          );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            IconTitleWidget(
              icon: SvgPicture.asset(AppIcons.icLanguageChange),
              title: tr.language,
              onTap: () {
                DialogManager.openBottomSheet(
                  context: context,
                  isDismissible: false,
                  builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        children: [
                          Text(
                            'Tilni tanlang',
                            style: context.textTheme.titleLarge,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          CarfixButton(
                            title: 'O\'zbek',
                            isLoading: false,
                            onTap: () {
                              context
                                  .read<LanguageProvider>()
                                  .setLocale(AppLocale.uz);
                              context.pop();
                            },
                          ),
                          const SizedBox(height: 16),
                          CarfixButton(
                            title: 'Русский',
                            isLoading: false,
                            onTap: () {
                              context
                                  .read<LanguageProvider>()
                                  .setLocale(AppLocale.ru);
                              context.pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            IconTitleWidget(
              icon: SvgPicture.asset(AppIcons.icShare),
              title: tr.share,
            ),
            const SizedBox(height: 16),
            IconTitleWidget(
              icon: SvgPicture.asset(AppIcons.icSupport),
              title: tr.support,
            ),
            const SizedBox(height: 16),
            IconTitleWidget(
              icon: SvgPicture.asset(AppIcons.icFaq),
              title: tr.faq,
            ),
          ],
        ),
      ),
    );
  }
}
