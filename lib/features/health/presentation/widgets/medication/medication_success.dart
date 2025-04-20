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
import 'add_medication_fields.dart';

class MedicationSuccessContent extends StatelessWidget {
  const MedicationSuccessContent({super.key});

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
                  text: AppText.medicationAddedFor,
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
                      text: AppText.youreDoingGreat,
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
              TotalDosage(),
              Styles.gap20,
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
                child: Text(
                  AppText.usersKeepTheirPetsMedOnTrack,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: AppColors.buttonTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
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
