import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

class PlanInfoWidget extends StatelessWidget {
  const PlanInfoWidget({super.key, this.title});
final String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
     title?? AppText.planInfo,
      style: context.textTheme.titleSmall?.copyWith(
        color: AppColors.buttonTextColor,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
      textAlign: TextAlign.center,
    );
  }
}
