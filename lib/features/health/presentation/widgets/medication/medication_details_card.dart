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

class MedicationDetailsCard extends StatefulWidget {
  const MedicationDetailsCard({super.key});

  @override
  State<MedicationDetailsCard> createState() => _MedicationDetailsCardState();
}

class _MedicationDetailsCardState extends State<MedicationDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationDetailsBloc, MedicationDetailsState>(
      builder: (context, state) {
        return CustomCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<
                        MedicationDetailsBloc,
                        MedicationDetailsState
                      >(
                        builder: (context, state) {
                          int daysLeft =
                              (state.medication?.endDate ?? DateTime.now())
                                  .difference(DateTime.now())
                                  .inDays;
                          if (daysLeft < 0) {
                            daysLeft = 0;
                          }
                          return daysLeft >= 0 &&
                                  (state.medication?.isActive ?? false)
                              ? AppCustomChipWidget(
                                backgroundColor: AppColors.buttonBackground
                                    .withOpacity(.1),
                                textColor: AppColors.stepperColor,
                                subTitle: '',
                                fontSize: 14,
                                title: '$daysLeft Days Left',
                              )
                              : Styles.sizedBox;
                        },
                      ),
                      Styles.gap6,
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
                    percentage: (state.medication?.progress ?? 0) / 100,
                    progressColor: AppColors.stepperColor,
                  ),
                ],
              ),
              Styles.gap10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.dosage,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Text(
                    '${state.medication?.dosageValue ?? ""} ${state.medication?.dosageTypeName ?? ""}',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
