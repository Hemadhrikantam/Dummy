import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_chip.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/health/presentation/bloc/medication_details/medication_details_bloc.dart';
import 'package:dummy/features/health/presentation/widgets/medication/circular_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constant/app_text.dart';
import 'add_medication_fields.dart';

class MedicationDetailsCard extends StatelessWidget {
  const MedicationDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationDetailsBloc, MedicationDetailsState>(
      builder: (context, state) {
        return CustomCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppCustomChipWidget(
                backgroundColor: AppColors.buttonBackground.withOpacity(.1),
                textColor: AppColors.stepperColor,
                subTitle: '',
                fontSize: 14,
                title:
                    '${state.medication?.endDate?.difference(DateTime.now()).inDays ?? 0} Days Left',
              ),
              Styles.gap6,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.medication?.name.split(' ')[0] ?? '',
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: AppColors.stepperColor,
                        ),
                      ),
                      Styles.gap4,
                      Text(
                        state.medication?.company ?? '',
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
                        '${state.medication?.dosageValue ?? ""} /\nServing',
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // DayWithTimeWidget(
                          //   day: '${AppText.morning} ',
                          //   time:
                          //       '- ${state.medication?.morningTime.split(':')[0]}.${state.medication?.morningTime.split(':')[2]} PM IST',
                          // ),
                          // DayWithTimeWidget(
                          //   day: '${AppText.afternoon} ',
                          //   time:
                          //       '- ${state.medication?.afternoonTime.split(':')[0]}.${state.medication?.morningTime.split(':')[1]} PM IST',
                          // ),
                          // DayWithTimeWidget(
                          //   day: '${AppText.night} ',
                          //   time:
                          //       '- ${state.medication?.nightTime.split(':')[0]}.${state.medication?.nightTime.split(':')[1]} PM IST',
                          // ),
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
                  // AppTextButton(
                  //   padding: Styles.edgeInsetsAll12 + Styles.edgeInsetsOnlyW25,
                  //   backgroundColor: AppColors.white,
                  //   name: AppText.viewMore,
                  //   borderColor: AppColors.grey500,
                  //   textColor: AppColors.buttonTextColor,
                  // ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
