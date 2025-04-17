import 'package:carfix_app/application/auth/auth_bloc.dart';
import 'package:carfix_app/presentation/otp/otp_arguments.dart';
import 'package:carfix_app/utils/carfix_uikit.dart';
import 'package:carfix_app/utils/extensions.dart';
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

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return Scaffold(
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
            BlocBuilder<AuthBloc, AuthState>(
              builder: (_, state) {
                return switch (state) {
                  Loading() => CarfixButton(
                      title: tr.otp.verify,
                      isLoading: true,
                      onTap: () {},
                    ),
                  _ => CarfixButton(
                      title: tr.otp.verify,
                      isLoading: false,
                      onTap: () {
                        BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.register(
                            phone: _args.phoneNumber.removeSpaces(),
                          ),
                        );
                      },
                    ),
                };
              },
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tr.otp.didNotReceive,
                  style: context.textTheme.bodyMedium,
                ),
                const SizedBox(width: 8),
                Text(
                  tr.otp.retry,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
