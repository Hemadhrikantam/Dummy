import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/custom_card.dart';

class VaccinationSuccessContent extends StatelessWidget {
  const VaccinationSuccessContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppAssestsImage(
                path: ImageResources.medsIcon,
                height: context.height * .1,
                boxFit: BoxFit.contain,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: AppText.greatJobKeeping,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: AppColors.stepperColor,
                  ),
                  children: [
                    TextSpan(
                      text: "[Pet's Name]! ",
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: AppColors.stepperColor,
                      ),
                    ),
                    TextSpan(
                      text: AppText.healthy,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: AppColors.stepperColor,
                      ),
                    ),
                  ],
                ),
              ),
              Styles.gap20,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rabies  ',
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppColors.stepperColor,
                        ),
                      ),
                      Text(
                        'Abhayrab',
                        style: context.textTheme.labelMedium?.copyWith(
                          color: AppColors.stepperColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Styles.gap10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.dateAdministered,
                        style: context.textTheme.labelLarge?.copyWith(
                          color: AppColors.grey500,
                        ),
                      ),
                      Text(
                        '12/01/2025',
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.duedate,
                        style: context.textTheme.labelLarge?.copyWith(
                          color: AppColors.grey500,
                        ),
                      ),
                      Text(
                        '12/01/2025',
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Styles.gap30,
              AppButton(
                name: Center(
                  child: Text(
                    AppText.addVaccination,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.buttonTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Styles.gap10,
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      backgroundColor: AppColors.white,
                      name: AppText.home,
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
        CustomCard(
          backgroundColor: AppColors.buttonBackground.withOpacity(.6),
          child: Row(
            children: [
              AppAssestsImage(
                path: ImageResources.medsIcon,
                height: context.height * .05,
                width: context.height * .05,
                boxFit: BoxFit.contain,
              ),
              Styles.gap10,
              Expanded(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: AppText.dummyWouldBeProudOfYouForKeeping,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.buttonTextColor,
                    ),
                    children: [
                      TextSpan(
                        text: "[Pet's Name]! ",
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.buttonTextColor,
                        ),
                      ),
                      TextSpan(
                        text: AppText.healthy,
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.buttonTextColor,
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
    );
  }
}
