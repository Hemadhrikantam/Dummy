import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/styles.dart';

class TimerWidget extends StatelessWidget {
  final String minutes;
  final String seconds;

  const TimerWidget({super.key, required this.minutes, required this.seconds});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll30,
      child: Row(
        children: [
          Expanded(
            child: CustomCard(
              padding: Styles.edgeInsetsAll25,
              borderRadius: Styles.borderRadiusCircular20,
              backgroundColor: AppColors.stepperColor,
              child: Text(
                minutes,
                style: context.textTheme.titleLarge?.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Styles.gap4,
          Text(
            ':',
            style: context.textTheme.titleLarge?.copyWith(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              color: AppColors.stepperColor,
            ),
          ),
          Styles.gap4,
          Expanded(
            child: CustomCard(
              padding: Styles.edgeInsetsAll25,
              borderRadius: Styles.borderRadiusCircular20,
              backgroundColor: AppColors.stepperColor,
              child: Text(
                seconds,
                style: context.textTheme.titleLarge?.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
