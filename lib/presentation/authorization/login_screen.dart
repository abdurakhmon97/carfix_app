import 'package:carfix_app/application/theme/theme_bloc.dart';
import 'package:carfix_app/utils/theme/app_theme.dart';
import 'package:carfix_app/utils/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String tag = '/login';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (_, state) {
        if (state is ThemeLoaded) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Login'),
            ),
            body: Center(
              child: Switch(
                value: state.mode == ThemeMode.dark,
                onChanged: (_) {
                  context.read<ThemeBloc>().add(
                        ChangeTheme(
                          state.mode == ThemeMode.dark
                              ? ThemeMode.light
                              : ThemeMode.dark,
                        ),
                      );
                },
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
