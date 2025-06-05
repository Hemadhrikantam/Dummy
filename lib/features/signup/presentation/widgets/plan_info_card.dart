import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class PlanInfoCard extends StatelessWidget {
  const PlanInfoCard({
    super.key,
    required this.planType,
    required this.bilingInfo,
    required this.paymentMethod,
  });
  final String planType;
  final String bilingInfo;
  final String paymentMethod;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyW04,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppText.planType,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.grey700,
            ),
          ),
          Text(
            planType,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.text,
            ),
          ),
          Styles.gap8,
          Text(
            AppText.bilingInfo,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.grey700,
            ),
          ),
          Text(
            bilingInfo,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.text,
            ),
          ),
          Styles.gap8,
          Text(
            AppText.paymentMethod,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.grey700,
            ),
          ),
          Text(
            paymentMethod,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.text,
            ),
          ),
        ],
      ),
    );
  }
}
