import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/custom_card.dart';

class PersonalizedRecommendationsSection extends StatelessWidget {
  const PersonalizedRecommendationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Personalized Recommendations",
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
                "Luna's expenses show you're spending a lot on food—try a vet-recommended diet to optimize her health.",
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.stepperColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
