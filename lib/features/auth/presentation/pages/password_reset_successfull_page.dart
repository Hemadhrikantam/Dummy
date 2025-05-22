import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../core/widgets/buttons/back_button.dart';
import '../../../../core/constent/image_resources.dart';
import '../../../../core/widgets/app_assets_image.dart';

class PasswordResetSuccessfullPage extends StatelessWidget {
  const PasswordResetSuccessfullPage({super.key});
  static const routeName = '/PasswordResetSuccessfullPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PasswordResetSuccessfullPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        padding: Styles.edgeInsetsAll08,
        children: [
          Row(children: [BackButtonWidget()]),
          Styles.gap20,
          AppAssestsImage(
            height: context.height * .07,
            width: context.width * .1,
            boxFit: BoxFit.contain,
            path: ImageResources.medsIcon,
          ),
          Styles.gap20,
          Text(
            AppText.passwordResetSuccessfully,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          Styles.gap10,
          Text(
            AppText.dummysOwnerForgotOnceToo,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
          Styles.gap50,
          AppButton(
            name: Text(
              AppText.login,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              context.pushNamed(LoginPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
