import 'package:carfix_app/application/auth/auth_bloc.dart';
import 'package:carfix_app/presentation/otp/otp_arguments.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/const_links.dart';
import 'package:carfix_app/utils/extensions.dart';
import 'package:carfix_app/utils/inject.dart';
import 'package:carfix_app/utils/util_functions.dart';
import 'package:carfix_app/utils/uikit/dialog_manager.dart';
import 'package:carfix_localization/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    required this.arguments,
    super.key,
  });

  final OtpArguments arguments;
  static const String tag = '/otp';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  OtpArguments get _args => widget.arguments;

  final _otpController = TextEditingController();

  final _authBloc = AuthBloc(inject());

  final _isValid = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _isValid.addListener(() {
      if (_otpController.text.length == 6) {
        _isValid.value = true;
      } else {
        _isValid.value = false;
      }
    });
  }

  @override
  void dispose() {
    _otpController.dispose();
    _isValid.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return BlocProvider(
      create: (_) => _authBloc,
      child: Scaffold(
        appBar: CarfixAppBar(
          title: tr.registration.title,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Text(
                tr.otp.verification,
                style: context.textTheme.titleLarge,
              ),
              const SizedBox(height: 24),
              Text.rich(
                tr.otp.sentSmsTo(
                  number: TextSpan(
                    text: _args.phoneNumber,
                    style: context.textTheme.titleMedium,
                  ),
                ),
                style: context.textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                controller: _otpController,
                autofocus: true,
                keyboardType: TextInputType.number,
                length: 6,
                defaultPinTheme: PinTheme(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: context.colorScheme.surfaceContainerLowest,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  textStyle: context.textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 24),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (_, state) {
                  if (state is AuthError) {
                    DialogManager.openErrorDialog(
                      context: context,
                      error: state.error,
                    );
                  }
                },
                builder: (_, state) {
                  bool isLoading = switch (state) {
                    AuthLoading() => true,
                    _ => false,
                  };
                  return ValueListenableBuilder(
                    valueListenable: _isValid,
                    builder: (_, __, ___) {
                      return CarfixButton(
                        title: tr.otp.verify,
                        isLoading: isLoading,
                        onTap: _isValid.value
                            ? () => _authBloc.add(
                                  AuthEvent.register(
                                    phone: _args.phoneNumber.removeSpaces(),
                                  ),
                                )
                            : null,
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 24),
              CarfixGestureDetector(
                onTap: () => carfixLaunchUrl(ConstLinks.otpTg),
                child: Text(
                  tr.otp.openTelegram,
                  style: context.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
