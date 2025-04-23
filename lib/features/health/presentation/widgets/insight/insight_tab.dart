import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import 'health_status_card.dart';
import 'learn_sections.dart';
import 'personalized_recommendations_section.dart';
import 'predictive_alerts_section.dart';
import 'recommendations_section.dart';

class InsightTab extends StatelessWidget {
  const InsightTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsOnlyT20,
      child: CustomCard(
        borderColor: AppColors.white,
        child: ListView(
          children: [
            HealthStatusCard(),
            Styles.gap20,
            CustomCard(
              borderColor: AppColors.buttonBackground,
              child: Row(
                children: [
                  AppAssestsImage(
                    path: ImageResources.nailsIcon,
                    height: context.height * .06,
                    width: context.height * .06,
                    boxFit: BoxFit.contain,
                  ),
                  Styles.gap20,
                  Expanded(
                    child: Text(
                      'Luna has had 10 walks this month—great job keeping her active!',
                      style: context.textTheme.titleMedium?.copyWith(
                        color: AppColors.buttonTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Styles.gap20,
            CustomCard(
              borderColor: AppColors.buttonBackground,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(ImageResources.dashboardLogo, height: 25),
                      Styles.gap6,
                      CustomCard(
                        padding: Styles.edgeInsetsAll04,
                        borderRadius: Styles.borderRadiusCircular40,
                        backgroundColor: AppColors.buttonBackground,
                        child: Text(
                          'Premium',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: AppColors.white,
                            fontSize: 7,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Styles.gap20,
                  Text(
                    'Luna has had 10 walks this month—great job keeping her active!',
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.buttonTextColor,
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
                          name: "Check Symptoms",
                          borderColor: AppColors.grey500,
                          textColor: AppColors.buttonTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Styles.gap20,
            PredictiveAlertsSection(),
            Styles.gap20,
            PersonalizedRecommendationsSection(),
            Styles.gap20,
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Styles.radiusCircular08,
                bottomRight: Styles.radiusCircular08,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: AppColors.buttonBackground),
                    left: BorderSide(color: AppColors.buttonBackground),
                    right: BorderSide(color: AppColors.buttonBackground),
                    bottom: BorderSide.none,
                  ),
                  borderRadius: Styles.borderRadiusCircular08,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(ImageResources.dogImage),
                  ),
                ),
                height: context.height * .25,
                width: context.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 6,
                      left: 6,
                      child: CustomCard(
                        backgroundColor: AppColors.buttonBackground,
                        padding:
                            Styles.edgeInsetsAll02 + Styles.edgeInsetsOnlyW20,
                        borderRadius: Styles.borderRadiusCircular40,
                        borderColor: AppColors.transparent,
                        child: Text(
                          'Happy',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: AppColors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding:
                            Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyT20,
                        height: context.height * .1,
                        width: context.width * .9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Styles.radiusCircular08,
                            bottomRight: Styles.radiusCircular08,
                          ),
                          gradient: AppColors.blackAndWhite,
                        ),
                        child: Text(
                          'Luna seems happiest at the beach based on your recent photos!',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: AppColors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Styles.gap20,
            RecommendationsSection(),
            Styles.gap20,
            LearnSections(),
          ],
        ),
      ),
    );
  }
}
