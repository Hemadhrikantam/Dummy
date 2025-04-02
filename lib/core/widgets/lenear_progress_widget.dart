import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/material.dart';

class LenearProgressWidget extends StatelessWidget {
  final int currentScreenIndex;

  const LenearProgressWidget({super.key, required this.currentScreenIndex});

  @override
  Widget build(BuildContext context) {
    double progressValue = (currentScreenIndex + 1) / 6;

    return Expanded(
      child: LinearProgressIndicator(
        value: progressValue,
        backgroundColor: Colors.white,
        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.stepperColor),
        minHeight: 15,
        borderRadius: Styles.borderRadiusCircular12,
      ),
    );
  }
}
