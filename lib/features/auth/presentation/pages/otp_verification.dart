import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/log_utility.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/loading_widget.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/auth/presentation/pages/pet_type_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';

import '../../../../core/utils/bottom_models.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});
  static const routeName = '/OtpVerification';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const OtpVerification(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _OtpVerification();
}

class _OtpVerification extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        padding: Styles.edgeInsetsOnlyW08,
        children: [
          Row(
            children: [
              BackButtonWidget(),
              Styles.gap10,
              AppAssestsImage(
                path: ImageResources.dashboardLogo,
                boxFit: BoxFit.contain,
                height: 50,
                width: MediaQuery.of(context).size.width * 0.3,
              ),
            ],
          ),
          Styles.gap32,
          Text(
            AppText.enterVerificationCode,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
          ),
          Styles.gap12,
          Text(
            AppText.enter4DigitVerificationCode,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 16),
          ),
          Styles.gap32,
          _OTPInput(),
          Styles.gap40,

          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) async {
              if (state.loginStatus.success) {
                BottomModels.otpSuccessBottomSheet(context);
                await Future.delayed(const Duration(milliseconds: 1800));
                context.pop();
                context.pushNamed(PetTypePage.routeName);
              }
            },
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.loginStatus.loading
                    ? LoadingWidget.circularProgressIndicatorCenter
                    : AppButton(
                      name: Text(
                        AppText.continueBtn,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: AppColors.buttonTextColor,
                        ),
                      ),
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        if (state.otp.isValid) {
                          context.read<AuthBloc>().add(AuthEvent.login());
                        } else {
                          AppAlert.showToast(
                            message: AppText.enter4DigitVerificationCode,
                          );
                        }
                      },
                    );
              },
            ),
          ),
          Styles.gap16,
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       AppText.resend,
          //       style: context.textTheme.bodyMedium?.copyWith(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 18,
          //         color: Color(0xFFA7581A),
          //       ),
          //     ),
          //     Text(
          //       " in $_secondsRemaining sec",
          //       style: context.textTheme.bodyMedium?.copyWith(fontSize: 12),
          //     ),
          //   ],
          // )
          //,
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.sendOtpStatus.loading
                  ? LoadingWidget.circularProgressIndicatorCenter
                  : ResendTimerText(
                    onResend: () {
                      context.read<AuthBloc>().add(AuthEvent.sendOtp());
                    },
                  );
            },
          ),
        ],
      ),
    );
  }
}

class _OTPInput extends StatefulWidget {
  const _OTPInput();

  @override
  State<_OTPInput> createState() => _OTPInputState();
}

class _OTPInputState extends State<_OTPInput> {
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  final List<TextEditingController> _controllers = List.generate(
    6,
    (_) => TextEditingController(),
  );

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _handleInput(String value, int index) {
    if (value.length == 1 && index < 5) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    }
    if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
    _controllers.every((controller) => controller.text.length == 1);

    // if (allFilled) {
    final otp = _controllers.map((c) => c.text).join();
    LogUtility.warning(otp);
    context.read<AuthBloc>().add(AuthEvent.otp(otp));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Padding(
          padding: Styles.edgeInsetsOnlyW02,
          child: SizedBox(
            width: 45,
            height: 45,
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              onChanged: (value) => _handleInput(value, index),
              maxLength: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                counterText: '',
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular25,
                  borderSide: const BorderSide(color: Colors.grey, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: Styles.borderRadiusCircular25,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class ResendTimerText extends StatefulWidget {
  final VoidCallback onResend;

  const ResendTimerText({super.key, required this.onResend});

  @override
  State<ResendTimerText> createState() => _ResendTimerTextState();
}

class _ResendTimerTextState extends State<ResendTimerText> {
  int _secondsRemaining = 30;
  Timer? _timer;

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
        timer.cancel();
      }
    });
  }

  void _handleResend() {
    widget.onResend();
    setState(() {
      _secondsRemaining = 30;
    });
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _secondsRemaining > 0
        ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppText.resend,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColors.stepperColor,
              ),
            ),
            Text(
              " in $_secondsRemaining sec",
              style: context.textTheme.bodyMedium?.copyWith(fontSize: 12),
            ),
          ],
        )
        : Center(
          child: GestureDetector(
            onTap: _handleResend,
            child: Text(
              AppText.resend,
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColors.stepperColor,
              ),
            ),
          ),
        );
  }
}
