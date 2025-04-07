import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/toast_message.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/base_screen.dart';
import 'package:dummy/core/widgets/buttons/close_button_widget.dart';
import 'package:dummy/features/signup/presentation/widgets/monthly_yearly_selection_card.dart';
import 'package:dummy/features/signup/presentation/widgets/plan_info_widget.dart';
import 'package:dummy/features/signup/presentation/widgets/premium_info_card.dart';
import 'package:dummy/features/signup/presentation/widgets/rating_widget.dart';
import 'package:flutter/material.dart';


class Start30DaysFreePage1 extends StatefulWidget {
  const Start30DaysFreePage1({super.key});
  static const routeName = '/Start30DaysFreePage1';

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => const Start30DaysFreePage1(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<Start30DaysFreePage1> createState() => _Start30DaysFreePage1State();
}

class _Start30DaysFreePage1State extends State<Start30DaysFreePage1> {
  int selectedIndex = 0;

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
            AppText.start30DayFreeTrail,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          Styles.gap20,
          PremiumInfoCardWidget(),
          Styles.gap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MonthlyYearlySelectionCard(
                title: AppText.monthly,
                value: AppText.monthlyPrice,
                trialText: AppText.start3DayFreeTrail,
                backgroundColor: AppColors.buttonBackground,
                textColor: AppColors.stepperColor,
                isSelected: selectedIndex == 0,
                onTap: () => setState(() => selectedIndex = 0),
              ),
              Styles.gap20,
              MonthlyYearlySelectionCard(
                title: AppText.yearly,
                value: AppText.yearlyPrice,
                trialText: AppText.start301DayFreeTrail,
                badgeText: AppText.save20Percent,
                backgroundColor: AppColors.buttonBackground,
                textColor: AppColors.stepperColor,
                isSelected: selectedIndex == 1,
                onTap: () => setState(() => selectedIndex = 1),
              ),
            ],
          ),
          Styles.gap10,
          AppButton(
            name: Text(
              AppText.start3Day1FreeTrail,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
             AppAlert.showToast(message: '😄 Avasara padaadhinga Bro...😄');
            },
          ),
          Styles.gap15,
          PlanInfoWidget(),
          Styles.gap20,
          RatingWidget(),
        ],
      ),
    );
  }
}
