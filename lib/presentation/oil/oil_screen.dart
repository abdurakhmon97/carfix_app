import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OilScreen extends StatefulWidget {
  const OilScreen({super.key});

  static const String tag = 'oil';

  @override
  State<OilScreen> createState() => _OilScreenState();
}

class _OilScreenState extends State<OilScreen> {
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
      appBar: CarfixAppBar(title: tr.oil.title),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CarfixTextField(
              controller: _changeMileage,
              labelText: tr.oil.changeMileage,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              inputType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            CarfixTextField(
              controller: _mileageToChange,
              labelText: tr.oil.mileageToChange,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              inputType: TextInputType.number,
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
