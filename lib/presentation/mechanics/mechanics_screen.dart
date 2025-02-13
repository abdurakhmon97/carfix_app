import 'package:carfix_app/presentation/mechanic_details/arguments.dart';
import 'package:carfix_app/presentation/mechanic_details/mechanic_details_screen.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_app/utils/uikit/carfix_chips.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MechanicsScreen extends StatefulWidget {
  const MechanicsScreen({super.key});

  @override
  State<MechanicsScreen> createState() => _MechanicsScreenState();
}

class _MechanicsScreenState extends State<MechanicsScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return Scaffold(
      appBar: CarfixAppBar(
        title: tr.mechanics.title,
        isBackButtonVisible: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(height: 16),
            CarfixTextField(
              controller: _searchController,
              hintText: tr.shared.search,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                itemCount: 10,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (_, index) {
                  return CarfixGestureDetector(
                    onTap: () => context.pushNamed(
                      MechanicDetailsScreen.tag,
                      extra: MechanicDetailsArguments(),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: context.colorScheme.surfaceBright,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AppIcons.icCircleProfile,
                                    height: 44,
                                  ),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ism Familiya',
                                        style: context.textTheme.labelMedium,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Ustani adresi',
                                        style: context.textTheme.labelSmall
                                            ?.copyWith(
                                          color: context
                                              .colorScheme.inverseSurface,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => Container(
                                    height: 16,
                                    width: 16,
                                    margin: const EdgeInsets.only(right: 2),
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
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'MATOR buzuldimi hech ikkilanmasadan bizga olib kelavering, qo’li gul ustalarimiz hammasini zo’r qilib . berishadi',
                            style: context.textTheme.labelSmall,
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 20,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (_, index) {
                                return CarfixChips(title: 'Skill $index');
                              },
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
