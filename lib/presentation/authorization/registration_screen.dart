import 'package:carfix_app/application/auth/auth_bloc.dart';
import 'package:carfix_app/presentation/otp/otp_arguments.dart';
import 'package:carfix_app/presentation/otp/otp_screen.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_app/utils/inject.dart';
import 'package:carfix_app/utils/uikit/carfix_phone_field.dart';
import 'package:carfix_app/utils/uikit/dialog_manager.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  static const String tag = 'registration';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();

  final _authBloc = AuthBloc(inject());

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
    return BlocProvider(
      create: (context) => _authBloc,
      child: Scaffold(
        appBar: CarfixAppBar(title: tr.registration.title),
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
                /*const SizedBox(height: 16),
              CarfixTextField(
                controller: _passwordController,
                hintText: tr.shared.password,
              ),
              const SizedBox(height: 16),
              CarfixTextField(
                controller: _repeatPasswordController,
                hintText: tr.shared.repeatPassword,
              ),*/
                const SizedBox(height: 24),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (_, state) {
                    if (state is AuthError) {
                      DialogManager.openErrorDialog(
                        context: context,
                        error: state.error,
                      );
                    } else if (state is AuthRegisterSuccess) {
                      context.pushNamed(
                        OtpScreen.tag,
                        extra:
                            OtpArguments(phoneNumber: _usernameController.text),
                      );
                    }
                  },
                  builder: (_, state) {
                    bool loading = false;
                    if (state is AuthLoading) {
                      loading = true;
                    }
                    return CarfixButton(
                      title: tr.registration.title,
                      isLoading: loading,
                      onTap: () {
                        if (_formKey.currentState?.validate() == true) {
                          _authBloc.add(
                            AuthEvent.register(
                              phone: _usernameController.text.adjustToPhone(),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
