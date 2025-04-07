import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class PremiumInfoCard extends StatelessWidget {
  const PremiumInfoCard({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderRadius: Styles.borderRadiusCircular08,
      child: Row(
        children: [
          CustomCard(
            borderRadius: Styles.borderRadiusCircular25,
            padding: Styles.edgeInsetsAll02,
            backgroundColor: AppColors.stepperColor,
            child: Icon(Icons.check,size: 22, color: AppColors.white),
          ),
          Styles.gap10,
          Expanded(
            child: Text(
              title,
              style: context.textTheme.titleSmall?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
