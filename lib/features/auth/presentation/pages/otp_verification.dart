import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/enum/yourself.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:dummy/features/auth/presentation/pages/ngo_registration_page.dart';
import 'package:dummy/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:dummy/features/signup/presentation/pages/meet_your_pet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return AppButton(
                name: Text(
                  AppText.continueBtn,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.buttonTextColor,
                  ),
                ),
                onPressed: () async {
                  BottomModels.otpSuccessBottomSheet(context);
                  Future.delayed(const Duration(seconds: 2), () {
                    if (state.yourself == Yourself.petParent) {
                      context.pushNamed(MeetYourPetScreen.routeName);
                    } else if (state.yourself == Yourself.lookingAdoption) {
                      context.pushNamedAndRemoveUntil(DashboardPage.routeName);
                    } else if (state.yourself == Yourself.ngo) {
                      context.pushNamed(NgoRegistrationPage.routeName);
                    }
                  });
                },
              );
            },
          ),
          Styles.gap16,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppText.resend,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFFA7581A),
                ),
              ),
              Text(
                " in 30 sec",
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OTPInput extends StatefulWidget {
  const _OTPInput({super.key});

  @override
  State<_OTPInput> createState() => _OTPInputState();
}

class _OTPInputState extends State<_OTPInput> {
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final List<TextEditingController> _controllers = List.generate(
    4,
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
    if (value.length == 1 && index < 3) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    }
    if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            width: 50,
            height: 50,

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
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.grey, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  // borderSide: const BorderSide(color: Colors.orange, width: 2),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
