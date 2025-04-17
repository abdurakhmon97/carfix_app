import 'package:carfix_app/application/auth/auth_bloc.dart';
import 'package:carfix_app/application/language_provider.dart';
import 'package:carfix_app/application/theme_provider.dart';
import 'package:carfix_app/data/storage/shared_pref_storage.dart';
import 'package:carfix_app/di/di_container.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/inject.dart';
import 'package:carfix_app/utils/navigation.dart';
import 'package:carfix_app/utils/uikit/tokens/dark_colors.dart';
import 'package:carfix_app/utils/uikit/tokens/light_colors.dart';
import 'package:carfix_app/utils/uikit/tokens/open_colors.dart';
import 'package:carfix_app/utils/uikit/tokens/open_typographies.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  await initDi();
  await SharedPrefStorage().initPrefs();
  runApp(
    TranslationProvider(child: const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = Navigation().router;

  @override
  Widget build(BuildContext context) {
    return CarfixGestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => AuthBloc(inject())),
        ],
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => LanguageProvider()..loadLocale(),
            ),
            ChangeNotifierProvider(
              create: (_) => ThemeProvider()..loadThemeMode(),
            ),
          ],
          child: Builder(builder: (context) {
            return MaterialApp.router(
              title: tr.applicationName,
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light().copyWith(
                extensions: [
                  OpenColors.light,
                  OpenTypographies.fromColors(LightTextColor()),
                ],
              ),
              darkTheme: ThemeData.dark().copyWith(
                extensions: [
                  OpenColors.dark,
                  OpenTypographies.fromColors(DarkTextColor()),
                ],
              ),
              themeMode: Provider.of<ThemeProvider>(context).mode,
              routeInformationParser: _router.routeInformationParser,
              routeInformationProvider: _router.routeInformationProvider,
              routerDelegate: _router.routerDelegate,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                DefaultCupertinoLocalizations.delegate,
              ],
              supportedLocales: AppLocaleUtils.supportedLocales,
              locale: Locale(
                Provider.of<LanguageProvider>(context).locale?.languageCode ??
                    'uz',
              ),
              builder: (_, child) {
                return child ?? const SizedBox.shrink();
              },
            );
          }),
        ),
      ),
    );
  }
}
