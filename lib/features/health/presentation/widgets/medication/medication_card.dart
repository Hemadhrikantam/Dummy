import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/features/health/domain/entities/medication.dart';
import 'package:dummy/features/health/presentation/pages/medication_details_page.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/utils/app_utils.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_switch.dart';

class MedicationsCard extends StatelessWidget {
  const MedicationsCard({super.key, required this.medication});
  final PetMedication medication;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: () {
        context.push(MedicationDetailsPage.route(medication.id));
      },
      borderColor: AppColors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Tablet  ',
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.stepperColor,
                  ),
                  children: [
                    TextSpan(
                      text: medication.tabletName,
                      style: context.textTheme.labelMedium?.copyWith(
                        color: AppColors.stepperColor,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    AppText.reminder,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Styles.gap6,
                  CustomSwitch(
                    value: medication.reminder,
                    onChanged: (value) {
                      // setState(() {
                      //   isChecked = !isChecked;
                      // });
                    },
                  ),
                ],
              ),
            ],
          ),
          Styles.gap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.startDate,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Text(
                    AppUtil.formatDateToMMDDYYYY(medication.startDate),
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.endDate,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Text(
                    AppUtil.formatDateToMMDDYYYY(medication.endDate),
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
