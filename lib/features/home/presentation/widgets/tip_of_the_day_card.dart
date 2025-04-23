import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/core/widgets/info_card.dart';
import 'package:flutter/material.dart';

class TipOfTheDayCard extends StatelessWidget {
  const TipOfTheDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: AppColors.background,
      backgroundColor: AppColors.background,
      child: Column(
        children: [
          Row(
            children: [
              AppAssestsImage(path: ImageResources.ai2, height: 24, width: 24),
              Styles.gap10,
              Expanded(
                child: Text(
                  AppText.wagAi,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.stepperColor,
                  ),
                ),
              ),
              Text(
                AppText.tipOfTheDay,
                style: context.textTheme.titleMedium?.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: AppColors.stepperColor,
                ),
              ),
            ],
          ),
          Styles.gap20,
          InfoCard(
            backgroundColor: AppColors.transparent,
            title: '“Luna’s due for a deworming in 3 days.” (Due: 03/01/2025).',
          ),
        ],
      ),
    );
  }
}
