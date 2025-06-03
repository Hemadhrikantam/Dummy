import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/base_screen.dart';
import '../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../core/widgets/buttons/app_outlined_button.dart';
import '../../../../../core/widgets/buttons/back_button.dart';

class StartScreenContent extends StatelessWidget {
  const StartScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        padding: Styles.edgeInsetsAll08,
        children: [
          Row(children: [BackButtonWidget()]),
          Styles.gap20,
          Text(
            AppText.joinDummyToday,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          Styles.gap10,
          Text(
            AppText.letsCreateYopurAccount,
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
          Styles.gap20,
          AppAssestsImage(
            path: ImageResources.startScreenImg,
            boxFit: BoxFit.contain,
            height: context.height * .6,
          ),
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.continueWithEmail,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              context.pushNamed(SignupPage.routeName);
            },
          ),
          Styles.gap15,
          AppOutlinedButton(
            name: Row(
              children: [
                AppAssestsImage(
                  path: ImageResources.googleIcon,
                  boxFit: BoxFit.contain,
                  width: 25,
                  height: 25,
                ),
                Styles.gap10,
                Text(
                  AppText.continueWithGoogle,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.buttonTextColor,
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
