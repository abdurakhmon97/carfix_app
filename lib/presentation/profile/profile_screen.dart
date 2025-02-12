import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/uikit/icon_title_widget.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.profile;
    return Scaffold(
      appBar: CarfixAppBar(
        title: tr.title,
        isBackButtonVisible: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(height: 16),
            SvgPicture.asset(AppIcons.icCircleProfile),
            const SizedBox(height: 20),
            IconTitleWidget(
              icon: SvgPicture.asset(AppIcons.icProfile),
              title: tr.personalInfo,
            ),
            const SizedBox(height: 16),
            IconTitleWidget(
              icon: SvgPicture.asset(AppIcons.icProfile),
              title: tr.favoriteMechanics,
            ),
            const SizedBox(height: 16),
            IconTitleWidget(
              icon: SvgPicture.asset(AppIcons.icPassword),
              title: tr.password,
            ),
            const SizedBox(height: 16),
            IconTitleWidget(
              icon: SvgPicture.asset(AppIcons.icLogout),
              title: tr.logout,
            ),
          ],
        ),
      ),
    );
  }
}
