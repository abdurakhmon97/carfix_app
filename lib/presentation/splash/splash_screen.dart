import 'package:carfix_app/application/language/language_bloc.dart';
import 'package:carfix_app/presentation/authorization/login_screen.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_app/utils/uikit/dialog_manager.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

const _appLogoHeight = 120.0;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String tag = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController lottieAnimation;

  final _langBloc = LanguageBloc();
  ValueNotifier<bool> expanded = ValueNotifier(false);

  final duration = const Duration(seconds: 1);

  MediaQueryData getQueryData(BuildContext context) => MediaQuery.of(context);

  @override
  void initState() {
    super.initState();
    lottieAnimation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    Future.delayed(duration).then((_) {
      expanded.value = true;
      lottieAnimation.forward().then(
            (_) => _actionOnLanguage(_langBloc.state),
          );
    });
  }

  @override
  void dispose() {
    lottieAnimation.dispose();
    expanded.dispose();
    super.dispose();
  }

  void _actionOnLanguage(LanguageState state) {
    if (state is CheckLocaleInStorageSuccess && !state.isSelected) {
      DialogManager.openBottomSheet(
        context: context,
        isDismissible: false,
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Text(
                  'Tilni tanlang',
                  style: context.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                CarfixButton(
                  title: 'O\'zbek',
                  isLoading: false,
                  onTap: () {
                    BlocProvider.of<LanguageBloc>(context).add(
                      const SwitchLocale(locale: AppLocale.uz),
                    );
                    context.goNamed(LoginScreen.tag);
                  },
                ),
                const SizedBox(height: 16),
                CarfixButton(
                  title: 'Русский',
                  isLoading: false,
                  onTap: () {
                    BlocProvider.of<LanguageBloc>(context).add(
                      const SwitchLocale(locale: AppLocale.ru),
                    );
                    context.goNamed(LoginScreen.tag);
                  },
                ),
              ],
            ),
          );
        },
      );
    } else {
      context.goNamed(LoginScreen.tag);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _langBloc
        ..add(
          CheckLocaleInStorage(),
        ),
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: context.colorScheme.onPrimary,
            body: SizedBox(
              width: context.screenSize.width,
              height: context.screenSize.height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    padding: const EdgeInsets.all(8),
                    duration: duration,
                    curve: Curves.fastOutSlowIn,
                    child: SvgPicture.asset(
                      AppIcons.icCarfixLogo,
                      height: _appLogoHeight,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: expanded,
                    builder: (_, bool expanded, __) {
                      return AnimatedCrossFade(
                        firstCurve: Curves.fastOutSlowIn,
                        crossFadeState: !expanded
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: duration,
                        firstChild: Container(),
                        secondChild: Text(
                          "Carfix",
                          style: context.textTheme.headlineMedium,
                        ),
                        alignment: Alignment.centerLeft,
                        sizeCurve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
