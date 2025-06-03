import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../../core/widgets/custom_card.dart';

class DateCard extends StatefulWidget {
  const DateCard({super.key});

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
                    '12/01/2025',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Styles.divider,
                Text(
                  AppText.markAsGiven,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey500,
                    fontSize: 14
                  ),
                ),
                Styles.gap10,
                CustomCheckBox(
                  fontSize: 22,
                  isChecked: isMorning,
                  label: AppText.morning,
                  onChanged: (value) {
                    setState(() {
                      isMorning = !isMorning;
                    });
                  },
                ),
                Styles.gap10,
                CustomCheckBox(
                  fontSize: 22,
                  isChecked: isAfternoon,
                  label: AppText.afternoon,
                  onChanged: (value) {
                    setState(() {
                      isAfternoon = !isAfternoon;
                    });
                  },
                ),
                Styles.gap10,
                CustomCheckBox(
                  isChecked: isNight,
                  fontSize: 22,
                  label: AppText.night,
                  onChanged: (value) {
                    setState(() {
                      isNight = !isNight;
                    });
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }
}
