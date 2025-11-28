import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/app_utils.dart';
import 'package:dummy/core/widgets/app_custom_check_box.dart';
import 'package:dummy/features/health/presentation/bloc/medication_details/medication_details_bloc.dart';
import 'package:dummy/features/health/presentation/widgets/medication/date_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../../core/widgets/custom_card.dart';

class DateCard extends StatefulWidget {
  const DateCard({super.key, required this.date});
  final MedicationDateLogModel date;
  @override
  State<DateCard> createState() => _DateCardState();
}

class _DateCardState extends State<DateCard> {
  bool isOpen = false;
  bool isMorning = false;
  bool isAfternoon = false;
  bool isNight = false;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: AppColors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppText.date,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Text(
                    AppUtil.formatDateToMMDDYYYY(widget.date.date),
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              CustomCard(
                onTap: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                padding: Styles.edgeInsetsAll02,
                borderRadius: Styles.borderRadiusCircular50,
                backgroundColor: AppColors.stepperColor,
                child: AppIconButton(
                  padding: Styles.edgeInsetsOnlyH00,
                  backgroundColor: AppColors.transparent,
                  icon:
                      isOpen
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined,
                  size: 25,
                  iconColor: AppColors.white,
                  borderColor: AppColors.transparent,
                ),
              ),
            ],
          ),
          if (isOpen)
            Column(
              children:
                  widget.date.logs
                      .map(
                        (e) => Padding(
                          padding: Styles.edgeInsetsOnlyT10,
                          child: CustomCheckBox(
                            fontSize: 22,
                            isChecked: e.status != 'missed',
                            label: e.timeslotName,
                            onChanged: (value) {
                              context.read<MedicationDetailsBloc>().add(
                                MedicationDetailsEvent.updateMedicationLog(
                                  medicationId:
                                      context
                                          .read<MedicationDetailsBloc>()
                                          .state
                                          .medication!
                                          .id,
                                  logId: e.scheduleId,
                                  check: value,
                                  date: widget.date.date,
                                ),
                              );
                            },
                          ),
                        ),
                      )
                      .toList(),
            ),
          // if (isOpen)
          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Styles.divider,
          //       Text(
          //         AppText.markAsGiven,
          //         style: context.textTheme.bodyMedium?.copyWith(
          //           fontWeight: FontWeight.w400,
          //           color: AppColors.grey500,
          //           fontSize: 14,
          //         ),
          //       ),
          //       Styles.gap10,
          //       CustomCheckBox(
          //         fontSize: 22,
          //         isChecked: widget.date.morning,
          //         label: AppText.morning,
          //         onChanged: (value) {
          //           // context.read<MedicationDetailsBloc>().add(
          //           // MedicationDetailsEvent.updateDate(
          //           //   widget.date.copyWith(morning: !widget.date.morning),
          //           // ),
          //           // );
          //         },
          //       ),
          //       Styles.gap10,
          //       CustomCheckBox(
          //         fontSize: 22,
          //         isChecked: widget.date.afternoon,
          //         label: AppText.afternoon,
          //         onChanged: (value) {
          //           // context.read<MedicationDetailsBloc>().add(
          //           //   MedicationDetailsEvent.updateDate(
          //           //     widget.date.copyWith(afternoon: !widget.date.afternoon),
          //           //   ),
          //           // );
          //         },
          //       ),
          //       Styles.gap10,
          //       CustomCheckBox(
          //         isChecked: widget.date.night,
          //         fontSize: 22,
          //         label: AppText.night,
          //         onChanged: (value) {
          //           // context.read<MedicationDetailsBloc>().add(
          //           //   MedicationDetailsEvent.updateDate(
          //           //     widget.date.copyWith(night: !widget.date.night),
          //           //   ),
          //           // );
          //         },
          //       ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
