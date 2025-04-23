import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../../core/widgets/custom_card.dart';

class HealthStatusCard extends StatelessWidget {
  const HealthStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: AppColors.buttonBackground,
      borderColor: AppColors.darkOrange.withOpacity(.28),
      child: Column(
        children: [
          Row(
            children: [
              AppAssestsImage(path: ImageResources.dog, height: 45, width: 45),
              Styles.gap20,
              Expanded(
                child: CustomCard(
                  borderColor: AppColors.black.withOpacity(.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Luna's Health Status",
                                style: context.textTheme.labelLarge?.copyWith(
                                  color: AppColors.grey500,
                                ),
                              ),
                              Text(
                                "7/10",
                                style: context.textTheme.labelLarge?.copyWith(
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
                  child: Text(
                    'Great job logging her meals and walks! She missed her last deworming dose (Due: 03/01/2025)',
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
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
