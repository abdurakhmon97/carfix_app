import 'package:carfix_app/presentation/otp/otp_arguments.dart';
import 'package:carfix_app/presentation/otp/otp_screen.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  static const String tag = 'registration';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormFieldState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return Scaffold(
      appBar: CarfixAppBar(
        title: tr.registration.title,
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
              CarfixTextField(
                controller: _usernameController,
                inputType: TextInputType.phone,
                hintText: tr.shared.phoneNumber,
              ),
              const SizedBox(height: 16),
              CarfixTextField(
                controller: _passwordController,
                hintText: tr.shared.password,
              ),
              const SizedBox(height: 16),
              CarfixTextField(
                controller: _repeatPasswordController,
                hintText: tr.shared.repeatPassword,
              ),
              const SizedBox(height: 24),
              CarfixButton(
                title: tr.registration.title,
                isLoading: false,
                onTap: () => context.pushNamed(
                  OtpScreen.tag,
                  extra: OtpArguments(phoneNumber: _usernameController.text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
