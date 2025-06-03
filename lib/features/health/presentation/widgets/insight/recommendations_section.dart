import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../../core/widgets/custom_card.dart';

class RecommendationsSection extends StatelessWidget {
  const RecommendationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommendations for Luna",
          style: context.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        Styles.gap20,
        RecommendationsCard(
          text:
              'Luna missed her last flea dose—set a reminder to stay on track.',
          chipText: 'Medication Reminder',
        ),
        Styles.gap10,
        RecommendationsCard(
          text:
              "Luna hasn't had a playdate in a while—plan a fun outing to keep her active!",
          chipText: 'Activity Boost',
        ),
      ],
    );
  }
}

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({
    super.key,
    required this.chipText,
    required this.text,
  });
  final String chipText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: Styles.edgeInsetsOnlyH00,
      borderColor: AppColors.buttonBackground,
      child: Stack(
        children: [
          Padding(
            padding: Styles.edgeInsetsAll10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppAssestsImage(
                  path: ImageResources.medsIcon,
                  height: 45,
                  width: 45,
                ),
                Styles.gap10,
                Text(
                  text,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: AppColors.stepperColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1751, 0.5754, 1.0],
                  colors: [
                    AppColors.buttonBackground,
                    Color(0xFFD29949),
                    Color(0xFF997035),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topRight: Styles.radiusCircular08,
                  bottomLeft: Styles.radiusCircular08,
                ),
              ),
              padding: Styles.edgeInsetsAll06 + Styles.edgeInsetsOnlyW10,

              child: Text(
                chipText,
                style: context.textTheme.bodySmall?.copyWith(
                  color: AppColors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
