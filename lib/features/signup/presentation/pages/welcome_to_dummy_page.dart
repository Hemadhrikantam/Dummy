import 'dart:async';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:dummy/features/signup/presentation/pages/premium/premium_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
  Timer? _navigationTimer;
  @override
  void initState() {
    super.initState();
    _navigationTimer = Timer(Duration(seconds: 6), () {
      context.pushNamed(PremiumPage1.routeName);
    });
  }

  void cancelTimer() {
    if (_navigationTimer != null && _navigationTimer!.isActive) {
      _navigationTimer!.cancel();
      print('Navigation timer cancelled');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(children: [const BackButtonWidget()]),
          Styles.gap20,
          Text(
            AppText.welcomeToDummyPag,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
          ),
          Styles.gap12,
          Text(AppText.yourAccountIsReady, style: context.textTheme.titleSmall),
          Styles.gap30,
          __ImageUploadWidget(),
          Styles.gap50,
          Text(
            AppText.unlockMoreWithDummy,
            style: context.textTheme.titleSmall?.copyWith(
              color: AppColors.stepperColor,
              fontWeight: FontWeight.w600,
              fontSize: 16
            ),
            textAlign: TextAlign.center,
          ),
          Styles.gap12,
          AppButton(
            showShadow: false,
            backgroundColor: AppColors.white,
            name: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppText.explore,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.buttonTextColor,
                  ),
                ),
                Styles.gap10,
                AppAssestsImage(
                  boxFit: BoxFit.contain,
                  path: ImageResources.dashboardLogo,
                  height: 20,
                  width: 50,
                ),
                Styles.gap10,
                SvgPicture.asset(
                  ImageResources.premium,
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            onPressed: () {
              cancelTimer();
              context.pushNamed(PremiumPage1.routeName);
            },
          ),
          Styles.gap50,
          AppButton(
            name: Text(
              AppText.startUsingDummy,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              cancelTimer();
              context.pushNamed(DashboardPage.routeName);
            },
          ),
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
      radius: 90,
      backgroundColor: AppColors.buttonBackground,
      child: ClipOval(
        child: SizedBox(
          width: 180,
          height: 180,
          child: AppAssestsImage(path: ImageResources.dog),
        ),
      ),
    );
  }
}
