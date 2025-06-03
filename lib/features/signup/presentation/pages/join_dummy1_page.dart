import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/features/auth/presentation/pages/continue_with_phone.dart';
import 'package:flutter/material.dart';

class JoinDummy1Page extends StatelessWidget {
  const JoinDummy1Page({super.key});
  static const routeName = '/JoinDummy1Page';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const JoinDummy1Page(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        children: [
          Row(children: [BackButtonWidget()]),
          Styles.gap20,
          Text(
            AppText.joinDummyToday,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
          ),
          Styles.gap12,
          Text(
            AppText.letsCreateYopurAccount,
            style: context.textTheme.titleSmall?.copyWith(fontSize: 14,fontWeight: FontWeight.w400),
          ),
          Image.asset(ImageResources.iPhone, height: 450),
          Styles.gap30,
          Styles.gap30,
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.continueWithPhone,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              context.pushNamed(ContinueWithPhone.routeName);
            },
          ),

          Styles.gap30,
        ],
      ),
    );
  }
}
