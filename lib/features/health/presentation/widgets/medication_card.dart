import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_colors.dart';
import '../../../../core/widgets/app_custom_check_box.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/custom_switch.dart';

class MedicationsCard extends StatefulWidget {
  const MedicationsCard({super.key});

  @override
  State<MedicationsCard> createState() => _MedicationsCardState();
}

class _MedicationsCardState extends State<MedicationsCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
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
                      text: 'Abhayrab',
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
                    'Reminder',
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Styles.gap6,
                  CustomSwitch(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
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
