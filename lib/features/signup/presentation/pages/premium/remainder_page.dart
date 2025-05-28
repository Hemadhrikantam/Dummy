import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/close_button_widget.dart';
import 'package:dummy/features/signup/presentation/pages/premium/dummy_timer_page.dart';
import 'package:dummy/features/signup/presentation/widgets/plan_info_widget.dart';
import 'package:flutter/material.dart';

import 'start_30_days_free_page1.dart';

class RemainderPage extends StatelessWidget {
  const RemainderPage({super.key});
  static const routeName = '/RemainderPage';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const RemainderPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CloseButtonWidget(
                onTap: () {
                  context.pushNamed(DummyTimerPage.routeName);
                },
              ),
            ],
          ),
          Styles.gap10,
          Text(
            AppText.weWillSendRemainder,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 27,
            ),
          ),
          Styles.gap50,
          Image.asset(ImageResources.notificantionImage, height: 120),
          Styles.gap50,
          AppButton(
            name: Text(
              AppText.continueForFree,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              context.pushNamed(Start30DaysFreePage1.routeName);
            },
          ),
          Styles.gap15,
          PlanInfoWidget(),
          Styles.gap100,
          Styles.gap100,
          //RatingWidget(),
        ],
      ),
    );
  }
}
