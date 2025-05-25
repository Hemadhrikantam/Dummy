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
import 'package:dummy/features/auth/presentation/pages/otp_verification.dart';
import 'package:flutter/material.dart';

class ContinueWithPhone extends StatefulWidget {
  const ContinueWithPhone({super.key});
  static const routeName = '/ContinueWithPhone';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const ContinueWithPhone(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  createState() => _ContinueWithPhone();
}

class _ContinueWithPhone extends State<ContinueWithPhone> {
  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
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
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: Styles.edgeInsetsOnlyW08,
            children: [
              Styles.gap20,
              __YourPhone(),
              Styles.gap20,

              AppButton(
                name: Text(
                  AppText.continueBtn,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  context.pushNamed(OtpVerification.routeName);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class __YourPhone extends StatelessWidget {
  const __YourPhone();

  @override
  Widget build(BuildContext context) {
    return PhoneTextField(
      headerText: AppText.enterPhoneNumber,
      onChange: (value) {
        // context.read<LoginBloc>().add(LoginEvent.mobileNumber(value.number));
      },
      placeHolder: AppText.enterPhoneNumber,
    );
  }
}
