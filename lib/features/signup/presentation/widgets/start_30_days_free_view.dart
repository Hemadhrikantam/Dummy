import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/features/signup/presentation/pages/premium/dummy_timer_page.dart';
import 'package:dummy/features/signup/presentation/widgets/monthly_yearly_selection_card.dart';
import 'package:dummy/features/signup/presentation/widgets/plan_info_widget.dart';
import 'package:dummy/features/signup/presentation/widgets/premium_info_card.dart';
import 'package:dummy/features/signup/presentation/widgets/tracking_widget.dart';
import 'package:flutter/material.dart';

class Start30DaysFreeView extends StatefulWidget {
  const Start30DaysFreeView({super.key});
  
  @override
  State<StatefulWidget> createState()=>_Start30DaysFreeView();
}
class _Start30DaysFreeView extends State<Start30DaysFreeView>{
    int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
            AppText.start30DayFreeTrail,
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),

          Styles.gap20,
          SizedBox(
            height: 300,
            child: Column(
              children: [
                if (selectedIndex == 0) PremiumInfoCardWidget(),
                if (selectedIndex == 1) TrackingWidget(),
              ],
            ),
          ),

          Styles.gap20,
          Padding(
            padding: Styles.edgeInsetsAll08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MonthlyYearlySelectionCard(
                    title: AppText.monthly,
                    value: AppText.monthlyPrice,
                    trialText: AppText.start3DayFreeTrail,
                    backgroundColor: AppColors.buttonBackground,
                    textColor: AppColors.stepperColor,
                    isSelected: selectedIndex == 0,
                    onTap: () => setState(() => selectedIndex = 0),
                  ),
                ),
                Styles.gap20,
                Expanded(
                  child: MonthlyYearlySelectionCard(
                    title: AppText.yearly,
                    value: AppText.yearlyPrice,
                    trialText: AppText.start301DayFreeTrail,
                    badgeText: AppText.save20Percent,
                    backgroundColor: AppColors.buttonBackground,
                    textColor: AppColors.stepperColor,
                    isSelected: selectedIndex == 1,
                    onTap: () => setState(() => selectedIndex = 1),
                  ),
                ),
              ],
            ),
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
              context.pushNamed(DummyTimerPage.routeName);
            },
          ),
          Styles.gap15,
          PlanInfoWidget(),
          Styles.gap20,
      ],
    );
  }
}