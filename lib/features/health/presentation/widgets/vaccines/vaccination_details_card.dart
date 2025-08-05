import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/core/widgets/app_custom_chip.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/health/presentation/bloc/vaccination_details/vaccination_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/app_text.dart';

class VaccinationDetailsCard extends StatelessWidget {
  const VaccinationDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VaccinationDetailsBloc, VaccinationDetailsState>(
      builder: (context, state) {
        if (state.initStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
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
                        state.vaccination?.vaccinationName ?? 'Rabies',
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: AppColors.stepperColor,
                        ),
                      ),
                      Styles.gap4,
                      Text(
                        state.vaccination?.company ?? 'Abhayrab',
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
                    fontSize: 14,
                    title:
                        '${state.vaccination?.dueDate.difference(DateTime.now()).inDays ?? 0} Days Left',
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
                        AppUtil.formatDateToMMDDYYYY(
                          state.vaccination?.dateAdministered ?? DateTime.now(),
                        ),
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
                        AppUtil.formatDateToMMDDYYYY(
                          state.vaccination?.dueDate ?? DateTime.now(),
                        ),
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Styles.gap20,
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     AppTextButton(
              //       padding: Styles.edgeInsetsAll12 + Styles.edgeInsetsOnlyW25,
              //       backgroundColor: AppColors.white,
              //       name: AppText.viewMore,
              //       borderColor: AppColors.grey500,
              //       textColor: AppColors.buttonTextColor,
              //     ),
              //   ],
              // ),
            ],
          ),
        );
      },
    );
  }
}
