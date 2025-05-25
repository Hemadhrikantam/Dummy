import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/close_button_widget.dart';
import 'package:dummy/features/signup/presentation/widgets/plan_info_widget.dart';
import 'package:dummy/features/signup/presentation/widgets/premium_info_card.dart';
import 'package:dummy/features/signup/presentation/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

import 'remainder_page.dart';

class PremiumPage1 extends StatelessWidget {
  const PremiumPage1({super.key});
  static const routeName = '/PremiumPage1';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const PremiumPage1(),
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
            children: [CloseButtonWidget()],
          ),
          Styles.gap10,
          Text(
            AppText.unlockTheBest,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap20,
          PremiumInfoCardWidget(),
          Styles.gap20,
          AppButton(
            name: Text(
              AppText.tryFor,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              context.pushNamed(RemainderPage.routeName);
            },
          ),
          Styles.gap15,
          PlanInfoWidget(),
          Styles.gap20,
          // RatingWidget(),
        ],
      ),
    );
  }
}
