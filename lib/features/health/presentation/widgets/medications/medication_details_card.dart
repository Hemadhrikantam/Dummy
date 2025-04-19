import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_chip.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/health/presentation/widgets/medications/circular_progress.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_text.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import 'add_medication_fields.dart';

class MedicationDetailsCard extends StatelessWidget {
  const MedicationDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppCustomChipWidget(
            backgroundColor: AppColors.buttonBackground.withOpacity(.1),
            textColor: AppColors.greenText,
            subTitle: '',
            title: '3 Days Left',
          ),
          Styles.gap6,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tablets',
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
              CircularProgressWithText(
                percentage: .25,
                progressColor: AppColors.stepperColor,
              ),
            ],
          ),
          Styles.gap30,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppText.dosage,
                style: context.textTheme.labelLarge?.copyWith(
                  color: AppColors.grey500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3 Tablets /\nServing',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DayWithTimeWidget(
                        day: '${AppText.morning} ',
                        time: '- 3.30 PM IST',
                      ),
                      DayWithTimeWidget(
                        day: '${AppText.afternoon} ',
                        time: '- 3.30 PM IST',
                      ),
                      DayWithTimeWidget(
                        day: '${AppText.night} ',
                        time: '- 3.30 PM IST',
                      ),
                    ],
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
