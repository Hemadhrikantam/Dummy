import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_outlined_button.dart';
import 'package:dummy/core/widgets/info_card.dart';
import 'package:dummy/core/widgets/stepper_widget.dart';
import 'package:dummy/features/signup/presentation/pages/welcome_to_dummy_page.dart';
import 'package:flutter/material.dart';

import 'join_dummy1_page.dart';

class NotificationPermissionPage extends StatelessWidget {
  const NotificationPermissionPage({super.key});
  static const routeName = '/NotificationPermissionPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const NotificationPermissionPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StepperWidget(currentScreenIndex: 4),
          Styles.gap20,
          Text(
            AppText.stayOnTop,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap15,
          Text(
            AppText.dummyCanSendYouRemainders,
            style: context.textTheme.titleSmall?.copyWith(fontSize: 13),
          ),
          Styles.gap30,
          Image.asset(ImageResources.notificantionImage, height: 120),
          Styles.gap30,
          AppButton(
            name: Text(
              AppText.allow,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.stepperColor,
              ),
            ),

            onPressed: () async {
              await showDialog(
                context: context,
                builder:
                    (ctx) => AlertDialog(
                      title: Text(AppText.allowNotificationTitle),
                      content: Text(AppText.allowNotificationContent),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(ctx),
                          child: Text(AppText.cancel),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(ctx);
                            context.pushNamed(WelcomeToDummyPage.routeName);
                          },
                          child: Text(AppText.allow),
                        ),
                      ],
                    ),
              );
              // context.pushNamed(JoinDummy1Page.routeName);
            },
          ),
          Styles.gap15,
          AppOutlinedButton(
            name: Text(
              AppText.maybeLater,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.stepperColor,
              ),
            ),
            onPressed: () {
              context.pushNamed(WelcomeToDummyPage.routeName);
            },
          ),
          Styles.gap30,
          InfoCard(title: AppText.ownerLovedRemainder),
        ],
      ),
    );
  }
}
