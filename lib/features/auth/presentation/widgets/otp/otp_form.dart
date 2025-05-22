import 'dart:async';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/features/auth/presentation/pages/reset_password_page.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/buttons/back_button.dart';
import 'otp.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({super.key});

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  int _secondsRemaining = 60;
  late Timer _timer;
  bool _showResendButton = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        setState(() {
          _showResendButton = true;
        });
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        padding: Styles.edgeInsetsAll08,
        children: [
          Row(children: [BackButtonWidget()]),
          Styles.gap20,
          Text(
            AppText.resetYourPassword,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          Styles.gap10,
          Text(
            AppText.weWillSendYouFourDigitCode,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
          Styles.gap50,
          OTPField(),
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.verify,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              context.pushNamed(ResetPasswordPage.routeName);
            },
          ),
          Styles.gap15,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!_showResendButton) ...[
                Text(
                  AppText.resend,
                  style: context.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w900,
                    color: AppColors.buttonTextColor,
                  ),
                ),
                Text(
                  ' in $_secondsRemaining s',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.buttonTextColor,
                  ),
                ),
              ] else ...[
                AppTextButton(
                  name: AppText.resend,
                  onPressed: () {},
                  textColor: AppColors.buttonTextColor,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
