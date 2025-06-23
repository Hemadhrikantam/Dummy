import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:flutter/material.dart';

class LenearProgressWidget extends StatelessWidget {
  final int currentScreenIndex;

  const LenearProgressWidget({super.key, required this.currentScreenIndex});

  @override
  Widget build(BuildContext context) {
    double progressValue = (currentScreenIndex + 1) / 6;

    return Expanded(
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(
          begin: 0.0,
          end: progressValue,
        ),
        duration: const Duration(milliseconds: 500), // Adjust speed here
        curve: Curves.easeInOut, // Smooth curve
        builder: (context, value, _) {
          return LinearProgressIndicator(
            value: value,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.stepperColor),
            minHeight: 15,
            borderRadius: Styles.borderRadiusCircular12,
          );
        },
      ),
    );
  }
}
