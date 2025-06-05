import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_graber.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/signup/presentation/widgets/plan_info_card.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';

class PlanOverviewBottomSheet extends StatelessWidget {
  const PlanOverviewBottomSheet({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.35,
      maxChildSize: 1,
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          padding: Styles.edgeInsetsOnlyW20,
          children: [
            Styles.gap6,
            AppGraber(),
            Styles.gap16,
            Text(
              AppText.planOverview,
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Styles.gap20,
            PlanInfoCard(
              planType: AppText.annualPremiumPlan,
              bilingInfo: AppText.renewsonApril,
              paymentMethod: AppText.card,
            ),
            Styles.gap20,
            PlanInfoCard(
              planType: AppText.annualPremiumPlan,
              bilingInfo: AppText.renewsonApril,
              paymentMethod: AppText.card,
            ),
            Styles.gap20,
            PlanInfoCard(
              planType: AppText.annualPremiumPlan,
              bilingInfo: AppText.renewsonApril,
              paymentMethod: AppText.card,
            ),
            Styles.gap20,
            PlanInfoCard(
              planType: AppText.annualPremiumPlan,
              bilingInfo: AppText.renewsonApril,
              paymentMethod: AppText.card,
            ),
            Styles.gap20,
            PlanInfoCard(
              planType: AppText.annualPremiumPlan,
              bilingInfo: AppText.renewsonApril,
              paymentMethod: AppText.card,
            ),
            Styles.gap20,
            PlanInfoCard(
              planType: AppText.annualPremiumPlan,
              bilingInfo: AppText.renewsonApril,
              paymentMethod: AppText.card,
            ),
          ],
        );
      },
    );
  }
}
