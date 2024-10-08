import 'package:carfix_app/presentation/authorization/login_screen.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/theme/app_theme.dart';
import 'package:carfix_app/utils/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

const _appLogoHeight = 120.0;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String tag = '/splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController lottieAnimation;

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
            (value) => context.goNamed(LoginScreen.tag),
          );
    });
  }

  @override
  void dispose() {
    lottieAnimation.dispose();
    expanded.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: getQueryData(context).size.width,
        height: getQueryData(context).size.height,
        color: AppTheme.colors.background,
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
                    style: TextStyles.title3Bold,
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
  }
}
