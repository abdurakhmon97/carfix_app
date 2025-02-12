import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddCarScreen extends StatefulWidget {
  const AddCarScreen({super.key});

  static const String tag = 'add-card';

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  final _passportSeries = TextEditingController();
  final _passportNumber = TextEditingController();
  final _vinNumber = TextEditingController();

  @override
  void dispose() {
    _passportSeries.dispose();
    _passportNumber.dispose();
    _vinNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.addCar;
    return Scaffold(
      appBar: CarfixAppBar(title: tr.title),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr.carPassport,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                SizedBox(
                  width: context.screenSize.width / 5,
                  child: CarfixTextField(
                    controller: _passportSeries,
                    hintText: "AA",
                    maxLength: 2,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CarfixTextField(
                    controller: _passportNumber,
                    hintText: "1234567",
                    maxLength: 7,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              tr.carVin,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            CarfixTextField(
              controller: _vinNumber,
              maxLength: 17,
            ),
            const SizedBox(height: 32),
            CarfixButton(
              title: context.tr.shared.next,
              onTap: () => context.pop(),
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}
