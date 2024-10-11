import 'package:carfix_app/utils/uikit/carfix_app_bar.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: tr.shared.phoneNumber,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: tr.shared.password,
                ),
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
              TextButton(
                onPressed: () {},
                child: Text(tr.login.title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
