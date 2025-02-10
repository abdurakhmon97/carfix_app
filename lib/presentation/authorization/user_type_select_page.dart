import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum _UserType { driver, mechanic }

class UserTypeSelectPage extends StatefulWidget {
  const UserTypeSelectPage({super.key});

  static const String tag = '/user-type-select';

  @override
  State<UserTypeSelectPage> createState() => _UserTypeSelectPageState();
}

class _UserTypeSelectPageState extends State<UserTypeSelectPage> {
  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      AppIcons.icCarDriver,
                      height: 66,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      tr.userSelectType.driver,
                    ),
                    const SizedBox(height: 24),
                    Container(
                      height: 24,
                      width: 24,
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF2F80ED),
                          width: 2,
                        ),
                      ),
                      child: const DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFF2F80ED),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                Opacity(
                  opacity: 0.4,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AppIcons.icCarMechanic,
                        height: 66,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        tr.userSelectType.mechanic,
                      ),
                      const SizedBox(height: 24),
                      Container(
                        height: 24,
                        width: 24,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF2F80ED),
                            width: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            CarfixButton(
              title: tr.shared.next,
              onTap: () {},
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}
