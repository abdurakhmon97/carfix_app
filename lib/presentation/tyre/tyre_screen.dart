import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TyreScreen extends StatefulWidget {
  const TyreScreen({super.key});

  static const String tag = 'tyre';

  @override
  State<TyreScreen> createState() => _TyreScreenState();
}

class _TyreScreenState extends State<TyreScreen> {
  final _changeMileage = TextEditingController();
  final _mileageToChange = TextEditingController();

  bool isXStyleChanged = false;

  @override
  void dispose() {
    _changeMileage.dispose();
    _mileageToChange.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return Scaffold(
      appBar: CarfixAppBar(title: tr.tyre.title),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              tr.tyre.changeMileage,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                SizedBox(
                  width: context.screenSize.width / 2,
                  child: CarfixTextField(
                    controller: _changeMileage,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    inputType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'KM',
                  style: context.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              tr.tyre.mileageToChange,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                SizedBox(
                  width: context.screenSize.width / 2,
                  child: CarfixTextField(
                    controller: _mileageToChange,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    inputType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'KM',
                  style: context.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text(
                    tr.tyre.xStyleChanged,
                    style: context.textTheme.bodyLarge,
                  ),
                ),
                CupertinoSwitch(
                  value: isXStyleChanged,
                  onChanged: (_) {
                    setState(
                      () {
                        isXStyleChanged = !isXStyleChanged;
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 32),
            CarfixButton(
              title: tr.shared.save,
              isLoading: false,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
