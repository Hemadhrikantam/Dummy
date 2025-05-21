import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/phone_text_field.dart';
import 'package:dummy/features/signup/presentation/pages/welcome_to_dummy_page.dart';
import 'package:flutter/material.dart';

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
        padding: Styles.edgeInsetsAll08,
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
          Styles.gap20,
          Text(
            AppText.enterVerificationCode,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          Styles.gap10,
          Text(
            AppText.enter4DigitVerificationCode,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
          Styles.gap20,
          _OTPInput(),
          Styles.gap30,

          AppButton(
            name: Text(
              AppText.continueBtn,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              // context.pushNamed(WelcomeToDummyPage.routeName);
            },
          ),
          Styles.gap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppText.resend,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFFA7581A),
                ),
              ),
              Text(
                " in 30 sec",
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 14),
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return SizedBox(
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
        );
      }),
    );
  }
}
