import 'package:carfix_app/presentation/mechanic_details/arguments.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_app/utils/uikit/carfix_chips.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MechanicDetailsScreen extends StatelessWidget {
  const MechanicDetailsScreen({
    required this.arguments,
    super.key,
  });

  final MechanicDetailsArguments arguments;
  static const String tag = 'mechanic-details';

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.mechanicDetails;
    return Scaffold(
      appBar: const CarfixAppBar(
        title: 'Mechanic name',
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(16, 8, 16, context.viewPaddingBottom + 8),
        decoration: BoxDecoration(
          color: context.colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      color: context.colorScheme.primaryContainer,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      tr.call,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: context.colorScheme.primaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.directions,
                      color: context.colorScheme.primaryContainer,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      tr.direction,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: context.colorScheme.primaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: context.colorScheme.onPrimary,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 16),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        AppIcons.icCircleProfile,
                        height: 126,
                        width: 126,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        children: [
                          Row(
                            children: List.generate(
                              5,
                              (index) => Container(
                                height: 32,
                                width: 32,
                                margin: const EdgeInsets.only(right: 4),
                                decoration: const ShapeDecoration(
                                  color: Colors.yellow,
                                  shape: StarBorder(
                                    innerRadiusRatio: 0.5,
                                    pointRounding: 0.4,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            '5.0',
                            style: context.textTheme.displayMedium?.copyWith(
                              color: context.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tr.fio,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: context.colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Ustaning to\'liq ismi',
                    style: context.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tr.summary,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: context.colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Mator buzuldimi ? hech ikkilanmasadan bizga olib kelavering, qo’li gul ustalarimiz hammasini zo’r qilib . berishadi',
                    style: context.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tr.services,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: context.colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 4,
                    runSpacing: 8,
                    children: List.generate(
                      10,
                      (index) => SizedBox(
                        height: 20,
                        child: CarfixChips(title: 'Service no $index'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tr.contacts,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: context.colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '+998 90 123 45 67',
                    style: context.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '+998 91 123 45 67',
                    style: context.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tr.address,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: context.colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Guzar 16A, Mirzo Ulug’bek, Toshkent sh.',
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
