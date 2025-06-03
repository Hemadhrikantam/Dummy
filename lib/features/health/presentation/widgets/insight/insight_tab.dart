import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/health/presentation/widgets/goldern_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    final empty = false;
    return Padding(
      padding: Styles.edgeInsetsOnlyT20,
      child: CustomCard(
        borderColor: AppColors.white,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageResources.mdipaw)),
          ),
          child: ListView(
            children: [
              HealthStatusCard(isEmpty: empty),
              Styles.gap20,
              CustomCard(
                borderColor: AppColors.buttonBackground,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
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
                            empty
                                ? "Track Luna’s daily care to unlock more insights!"
                                : 'Luna has had 10 walks this month—great job keeping her active!',
                            style: context.textTheme.titleMedium?.copyWith(
                              color: AppColors.stepperColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppTextButton(
                      backgroundColor: AppColors.white,
                      name: "Log Walks",
                      borderColor: AppColors.grey500,
                      textColor: AppColors.buttonTextColor,
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
                        SvgPicture.asset(ImageResources.premium, width: 50),
                      ],
                    ),
                    Styles.gap20,
                    Text(
                      'Luna has had 10 walks this month—great job keeping her active!',
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
                            name: empty ? "Learn More" : "Check Symptoms",
                            borderColor: AppColors.grey500,
                            textColor: AppColors.buttonTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (!empty)
                Column(
                  children: [
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
                            right: BorderSide(
                              color: AppColors.buttonBackground,
                            ),
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
                              child: GoldernContainer(
                                child: Padding(
                                  padding: Styles.edgeInsetsOnlyW10,
                                  child: Text(
                                    "Happy",
                                    style: TextStyle(color: AppColors.white),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                padding:
                                    Styles.edgeInsetsAll10 +
                                    Styles.edgeInsetsOnlyT20,
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
                  ],
                ),
              Styles.gap20,
              RecommendationsSection(),
              Styles.gap20,
              LearnSections(),
            ],
          ),
        ),
      ),
    );
  }
}
