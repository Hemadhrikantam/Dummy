import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/features/signup/presentation/pages/premium/premium_page1.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/buttons/app_button.dart';

class WelcomeToDummyPage extends StatefulWidget {
  const WelcomeToDummyPage({super.key});
  static const routeName = '/WelcomeToDummyPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const WelcomeToDummyPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<WelcomeToDummyPage> createState() => _WelcomeToDummyPageState();
}

class _WelcomeToDummyPageState extends State<WelcomeToDummyPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      context.pushNamed(PremiumPage1.routeName);
      // context.read<AuthBloc>().add(const AuthEvent.checkUser());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(children: [BackButtonWidget()]),
          Styles.gap20,
          Text(
            AppText.welcomeToDummyPag,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap20,
          Text(AppText.yourAccountIsReady, style: context.textTheme.titleSmall),
          Styles.gap30,
          __ImageUploadWidget(),
          Styles.gap30,
          Text(
            AppText.unlockMoreWithDummy,
            style: context.textTheme.titleSmall?.copyWith(
              color: AppColors.stepperColor,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          Styles.gap20,
          AppButton(
            name: Text(
              AppText.startUsingDummy,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              AppAlert.showToast(
                message: '🎉 Wait pannunga adhuve next page pogum...😎',
              );
            },
          ),
          // Styles.gap15,
          // AppOutlinedButton(
          //   name: Text(
          //     AppText.skip,
          //     style: context.textTheme.titleSmall?.copyWith(
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class __ImageUploadWidget extends StatelessWidget {
  const __ImageUploadWidget();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: AppColors.buttonBackground,
      child: ClipOval(
        child: SizedBox(
          width: 200,
          height: 200,
          child: AppAssestsImage(path: ImageResources.dog),
        ),
      ),
    );
  }
}
