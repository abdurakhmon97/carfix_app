import 'package:carfix_app/presentation/mechanic_details/arguments.dart';
import 'package:carfix_app/presentation/mechanic_details/widgets/star.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
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
    return Scaffold(
      appBar: const CarfixAppBar(
        title: 'Mechanic name',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
