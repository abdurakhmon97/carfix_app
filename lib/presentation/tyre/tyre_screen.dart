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
          children: [
            const SizedBox(height: 24),
            CarfixTextField(
              controller: _changeMileage,
              labelText: tr.tyre.changeMileage,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              inputType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            CarfixTextField(
              controller: _mileageToChange,
              labelText: tr.tyre.mileageToChange,
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
