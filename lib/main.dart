import 'package:carfix_app/application/language/language_bloc.dart';
import 'package:carfix_app/application/theme/theme_bloc.dart';
import 'package:carfix_app/data/storage/shared_pref_storage.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/navigation.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
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
          BlocProvider(create: (_) => ThemeBloc()..add(LoadTheme())),
          BlocProvider(
            create: (_) => LanguageBloc()..add(LoadLocale()),
          ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            if (state is ThemeLoaded) {
              return BlocBuilder<LanguageBloc, LanguageState>(
                builder: (_, langState) {
                  if (langState is LanguageLoaded) {
                    return MaterialApp.router(
                      title: tr.applicationName,
                      debugShowCheckedModeBanner: false,
                      theme: state.theme,
                      themeMode: state.mode,
                      routeInformationParser: _router.routeInformationParser,
                      routeInformationProvider:
                          _router.routeInformationProvider,
                      routerDelegate: _router.routerDelegate,
                      localizationsDelegates: const [
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                        DefaultCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: AppLocaleUtils.supportedLocales,
                      locale: Locale('uz'),
                      builder: (_, child) {
                        return child ?? const SizedBox.shrink();
                      },
                    );
                  }
                  return const SizedBox.shrink();
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
