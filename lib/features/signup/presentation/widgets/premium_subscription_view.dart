import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/signup/presentation/pages/premium/dummy_timer_page.dart';
import 'package:dummy/features/signup/presentation/widgets/monthly_yearly_selection_card.dart';
import 'package:dummy/features/signup/presentation/widgets/plan_info_widget.dart';
import 'package:flutter/material.dart';

class PremiumSubscriptionView extends StatefulWidget {
  const PremiumSubscriptionView({super.key});

  @override
  State<StatefulWidget> createState() => _PremiumSubscriptionView();
}

class _PremiumSubscriptionView extends State<PremiumSubscriptionView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          selectedIndex == 0 ? AppText.saveBySwitching : AppText.renewEarlyBy,
          style: context.textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),

        Styles.gap20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (selectedIndex == 0)
              _PlanInfoCard(
                planType: AppText.monthlyPremiumPlan,
                bilingInfo: AppText.nextBillingMonthly,
                paymentMethod: AppText.card,
              ),
            if (selectedIndex == 1)
              _PlanInfoCard(
                planType: AppText.annualPremiumPlan,
                bilingInfo: AppText.renewsonApril,
                paymentMethod: AppText.card,
              ),
          ],
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
                  trialText: "",
                  badgeText: AppText.currentPlan,
                  badgeFontWeight: FontWeight.w600,
                  badgeColor: AppColors.white,
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
                  trialText: "",
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
            selectedIndex == 0
                ? AppText.save20bySwitching
                : AppText.renewEarlybyButton,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.buttonTextColor,
            ),
          ),
          onPressed: () {
            context.pushNamed(DummyTimerPage.routeName);
          },
        ),
        Styles.gap12,
        AppButton(
          backgroundColor: AppColors.white,
          name: Text(
            AppText.cancelPlan,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.buttonTextColor,
            ),
          ),
          onPressed: () {},
        ),
        Styles.gap12,
        PlanInfoWidget(),
        Styles.gap20,
      ],
    );
  }
}

class _PlanInfoCard extends StatelessWidget {
  const _PlanInfoCard({
    required this.planType,
    required this.bilingInfo,
    required this.paymentMethod,
  });
  final String planType;
  final String bilingInfo;
  final String paymentMethod;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyW04,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppText.planType,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.grey700,
            ),
          ),
          Text(
            planType,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.text,
            ),
          ),
          Styles.gap8,
          Text(
            AppText.bilingInfo,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.grey700,
            ),
          ),
          Text(
            bilingInfo,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.text,
            ),
          ),
          Styles.gap8,
          Text(
            AppText.paymentMethod,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.grey700,
            ),
          ),
          Text(
            paymentMethod,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.text,
            ),
          ),
          Styles.gap8,
          AppButton(
            borderColor: AppColors.grey400,
            backgroundColor: AppColors.white,
            name: Text(
              AppText.viewMore,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.buttonTextColor,
              ),
            ),
            onPressed: () {
              BottomModels.planOverviewBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }
}
