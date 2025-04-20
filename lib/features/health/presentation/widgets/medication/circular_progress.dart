import 'package:dummy/core/constent/app_colors.dart';
import 'package:flutter/material.dart';

class CircularProgressWithText extends StatelessWidget {
  const CircularProgressWithText({
    required this.percentage,
    required this.progressColor,
    super.key,
  });

  final double percentage;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            strokeAlign: 3,
            strokeWidth: 5,
            value: percentage,
            color: progressColor,
            backgroundColor: AppColors.grey400.withOpacity(.4),
          ),
          Text(
            '${(percentage * 100).toStringAsFixed(0)}%',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: progressColor,
            ),
          ),
        ],
      ),
    );
  }
}
