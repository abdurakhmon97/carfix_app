import 'package:carfix_app/presentation/authorization/registration_screen.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/uikit/carfix_phone_field.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String tag = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormFieldState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return Scaffold(
      appBar: CarfixAppBar(
        title: tr.login.title,
        isBackButtonVisible: false,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              CarfixPhoneField(
                controller: _usernameController,
                validationModes: const [ValidationMode.onUnFocus],
                validator: (_) {
                  if (_usernameController.text.length != 18) {
                    return tr.registration.enterValidNumber;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              CarfixTextField(
                controller: _passwordController,
                hintText: tr.shared.password,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(tr.login.forgotPassword),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              CarfixButton(
                title: tr.login.title,
                isLoading: false,
                onTap: () {},
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () => context.pushNamed(
                  RegistrationScreen.tag,
                ),
                child: Text(
                  tr.login.register,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
