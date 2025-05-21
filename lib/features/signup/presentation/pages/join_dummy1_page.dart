import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
//import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/features/auth/presentation/pages/continue_with_phone.dart';
import 'package:dummy/features/signup/presentation/pages/join_dummy2_page.dart';
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
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap15,
          Text(
            AppText.letsCreateYopurAccount,
            style: context.textTheme.titleSmall?.copyWith(fontSize: 13),
          ),
          Image.asset(ImageResources.iPhone, height: 450),
          AppButton(
            name: Text(
              AppText.continueWithEmail,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(JoinDummy2Page.routeName);
            },
          ),
          Styles.gap15,
          AppButton(
            name: Text(
              AppText.continueWithPhone,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {
              context.pushNamed(ContinueWithPhone.routeName);
            },
          ),
          Styles.gap15,
          AppOutlinedButton(
            icon: AppAssestsImage(
              path: ImageResources.googleIcon,
              height: 24,
              width: 24,
            ),
            name: Text(
              AppText.continueWithGoogle,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
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
