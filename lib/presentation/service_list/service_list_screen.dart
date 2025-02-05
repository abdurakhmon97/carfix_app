import 'package:carfix_app/presentation/oil/oil_screen.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ServiceListScreen extends StatelessWidget {
  const ServiceListScreen({super.key});

  static const String tag = '/service-list';

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return Scaffold(
      appBar: CarfixAppBar(
        title: tr.serviceList.title,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CarfixButton(
              title: tr.oil.title,
              isLoading: false,
              onTap: () => context.pushNamed(OilScreen.tag),
            ),
            const SizedBox(height: 16),
            CarfixButton(
              title: tr.tyre.title,
              isLoading: false,
              onTap: () => context.pushNamed(OilScreen.tag),
            ),
          ],
        ),
      ),
    );
  }
}
