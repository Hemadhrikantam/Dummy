import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/custom_card.dart';

class PredictiveAlertsSection extends StatelessWidget {
  const PredictiveAlertsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Predictive Alerts",
          style: context.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        Styles.gap20,
        CustomCard(
          borderColor: AppColors.buttonBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Luna hasn't had a grooming session in 2 weeks—regular grooming can prevent skin issues.",
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.stepperColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Styles.gap20,
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      backgroundColor: AppColors.white,
                      name: "Log Grooming in Daily Care",
                      borderColor: AppColors.grey500,
                      textColor: AppColors.buttonTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
