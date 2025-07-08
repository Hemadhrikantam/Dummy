import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/utils/app_utils.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_switch.dart';
import '../../../domain/entities/vaccination.dart';
import '../../pages/vaccination_details_page.dart';

class VaccinesCard extends StatelessWidget {
  const VaccinesCard({super.key, required this.vaccination});
  final PetVaccination vaccination;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: () {
        context.push(VaccinationDetailsPage.route());
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
                  text: vaccination.vaccinationName,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.stepperColor,
                  ),
                  children: [
                    TextSpan(
                      text: vaccination.company,
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
                    value: true,
                    onChanged: (value) {
                      if (value) {
                        BottomModels.vaccinationReminderSheet(
                          context,
                          vaccination,
                        );
                      }
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
                    AppText.dateAdministered,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Text(
                    AppUtil.formatDateToMMDDYYYY(vaccination.dateAdministered),
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
                    AppText.duedate,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Text(
                    AppUtil.formatDateToMMDDYYYY(vaccination.dueDate),
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
