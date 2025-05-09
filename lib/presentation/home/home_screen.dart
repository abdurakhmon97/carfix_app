import 'package:carfix_app/presentation/add_car/add_car_screen.dart';
import 'package:carfix_app/presentation/oil/oil_screen.dart';
import 'package:carfix_app/presentation/settings/settings_screen.dart';
import 'package:carfix_app/presentation/tyre/tyre_screen.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_app/utils/uikit/carfix_colors.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 16 + context.viewPaddingTop,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarfixGestureDetector(
                  onTap: () => context.pushNamed(
                    SettingsScreen.tag,
                  ),
                  child: const Icon(
                    Icons.settings,
                    color: CarfixColors.primary,
                  ),
                ),
                const Icon(
                  Icons.notifications_active,
                  color: CarfixColors.primary,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.colorScheme.onPrimary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  CarfixGestureDetector(
                    onTap: () => context.pushNamed(
                      AddCarScreen.tag,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: CarfixColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.08),
                            offset: const Offset(0, -2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.add,
                        color: CarfixColors.primary,
                        size: 48,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tr.home.addCar,
                    style: context.textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CarfixGestureDetector(
                  onTap: () => context.pushNamed(OilScreen.tag),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: CarfixColors.white.withValues(alpha: 0.6),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: const Icon(
                          Icons.water_drop,
                          color: CarfixColors.primary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        tr.oil.title,
                        style: context.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                CarfixGestureDetector(
                  onTap: () => context.pushNamed(TyreScreen.tag),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: CarfixColors.white.withValues(alpha: 0.6),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: const Icon(
                          Icons.change_circle,
                          color: CarfixColors.primary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        tr.tyre.title,
                        style: context.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
