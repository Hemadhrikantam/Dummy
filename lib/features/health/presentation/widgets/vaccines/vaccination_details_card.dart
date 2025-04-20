import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_chip.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';

class VaccinationDetailsCard extends StatelessWidget {
  const VaccinationDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styles.gap6,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rabies',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: AppColors.stepperColor,
                    ),
                  ),
                  Styles.gap4,
                  Text(
                    'Abhayrab',
                    style: context.textTheme.labelMedium?.copyWith(
                      color: AppColors.stepperColor,
                    ),
                  ),
                ],
              ),
              AppCustomChipWidget(
                backgroundColor: AppColors.buttonBackground.withOpacity(.1),
                textColor: AppColors.stepperColor,
                subTitle: '',
                title: '3 Days Left',
              ),
            ],
          ),
          Styles.gap30,
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
          Styles.gap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextButton(
                padding: Styles.edgeInsetsAll12 + Styles.edgeInsetsOnlyW25,
                backgroundColor: AppColors.white,
                name: AppText.viewMore,
                borderColor: AppColors.grey500,
                textColor: AppColors.buttonTextColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
