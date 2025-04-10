import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_text_field.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/features/signup/presentation/pages/welcome_to_dummy_page.dart';
import 'package:flutter/material.dart';
part '../widgets/join_dummy_fields.dart';

class JoinDummy2Page extends StatelessWidget {
  const JoinDummy2Page({super.key});
  static const routeName = '/JoinDummy2Page';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const JoinDummy2Page(),
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
          __YourName(),
          __EmailAddress(),
          __Password(),
          __ConfirmPassword(),
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.startYourPetsJourney,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(WelcomeToDummyPage.routeName);
            },
          ),
          Styles.gap15,
          AppOutlinedButton(
            name: Text(
              AppText.alreadyHaveAccount,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                //color: AppColors.white,
              ),
            ),
            onPressed: () {},
          ),
          Styles.gap30,
        ],
      ),
    );
  }
}
