import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/buttons/app_text_button.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:dummy/features/health/domain/entities/ai_insight.dart';
import 'package:dummy/features/home/presentation/widgets/pet_information_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/image_resources.dart';
import '../../../../../core/constant/styles.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../../core/widgets/custom_card.dart';

class HealthStatusCard extends StatelessWidget {
  const HealthStatusCard({
    super.key,
    required this.insight,
    required this.selectedPet,
  });
  final AiInsight? insight;
  final DashboardPetDetails? selectedPet;
  @override
  Widget build(BuildContext context) {
    bool isEmpty = insight == null;
    return CustomCard(
      backgroundColor: AppColors.buttonBackground,
      borderColor: AppColors.darkOrange.withOpacity(.28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              AppAssestsImage(path: ImageResources.dog, height: 45, width: 45),
              Styles.gap20,
              Expanded(
                child: CustomCard(
                  borderColor: AppColors.black.withOpacity(.1),
                  child: Row(
                    mainAxisAlignment:
                        isEmpty
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.spaceBetween,
                    children:
                        isEmpty
                            ? ([
                              AppAssestsImage(
                                path: ImageResources.injection,
                                height: 25,
                                width: 25,
                              ),
                              Styles.gap10,
                              Expanded(
                                child: Text(
                                  " ${selectedPet?.name ?? ''} is a ${calculateAge(selectedPet?.dob ?? '')} old ${selectedPet?.breedName ?? ''}—start logging her daily care to see her health score!",
                                  style: context.textTheme.labelLarge?.copyWith(
                                    color: AppColors.text,
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ])
                            : [
                              Row(
                                children: [
                                  AppAssestsImage(
                                    borderRadius: Styles.borderRadiusCircular00,
                                    path: ImageResources.heartIcon,
                                    height: 25,
                                    width: 25,
                                    boxFit: BoxFit.contain,
                                  ),
                                  Styles.gap10,

                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        " ${selectedPet?.name ?? ''} Health Status",
                                        style: context.textTheme.labelLarge
                                            ?.copyWith(
                                              color: AppColors.grey500,
                                            ),
                                      ),
                                      Text(
                                        "${insight?.summary.healthScore}/100",
                                        style: context.textTheme.labelLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              AppAssestsImage(
                                borderRadius: Styles.borderRadiusCircular00,
                                path: ImageResources.pawIcon,
                                height: 30,
                                width: 30,
                                boxFit: BoxFit.contain,
                              ),
                            ],
                  ),
                ),
              ),
            ],
          ),
          Styles.gap10,
          if (isEmpty)
            AppTextButton(
              backgroundColor: AppColors.white,
              name: "Go to Daily Care Button",
              borderColor: AppColors.grey500,
              textColor: AppColors.buttonTextColor,
            ),
          if (!isEmpty)
            CustomCard(
              padding: Styles.edgeInsetsAll10,
              borderColor: AppColors.black.withOpacity(.1),
              child: Row(
                children: [
                  AppAssestsImage(
                    path: ImageResources.syringeIcon,
                    height: context.height * .04,
                    width: context.height * .04,
                    boxFit: BoxFit.cover,
                  ),
                  Styles.gap10,
                  Expanded(
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text:
                            "Great job logging her meals and walks! She missed her last deworming dose",
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                        children: [
                          TextSpan(
                            text: "(Due: 03/01/2025). ",
                            style: context.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: AppColors.stepperColor,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
