import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/app_text_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../../core/widgets/custom_card.dart';

class HealthStatusCard extends StatelessWidget {
  const HealthStatusCard({super.key, required this.isEmpty});
  final bool isEmpty;
  @override
  Widget build(BuildContext context) {
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
                            ? [
                              AppAssestsImage(
                                path: ImageResources.injection,
                                height: 25,
                                width: 25,
                              ),
                              Styles.gap10,
                              Expanded(
                                child: Text(
                                  "Luna is a 5-year-old Labrador—start logging her daily care to see her health score!",
                                  style: context.textTheme.labelLarge?.copyWith(
                                    color: AppColors.text,
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ]
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
                                        "Luna's Health Status",
                                        style: context.textTheme.labelLarge
                                            ?.copyWith(
                                              color: AppColors.grey500,
                                            ),
                                      ),
                                      Text(
                                        "7/10",
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
