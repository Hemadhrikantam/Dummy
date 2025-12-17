import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/features/health/domain/entities/ai_insight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/styles.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../dailycare/presentation/bloc/daily_care/daily_care_bloc.dart';
import '../../../../dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';

class PredictiveAlertsSection extends StatelessWidget {
  const PredictiveAlertsSection({super.key, this.aiInsight});
  final AiInsight? aiInsight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Predictive Alerts",
          style: context.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        Styles.gap20,
        CustomCard(
          borderColor: AppColors.buttonBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${aiInsight?.petName ?? ''} hasn't had a grooming session in 2 weeks—regular grooming can prevent skin issues.",
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.stepperColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Styles.gap20,
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        context.read<DashboardBloc>().add(
                          DashboardEvent.changePage(2),
                        );
                        context.read<DailyCareBloc>().add(
                          DailyCareEvent.changePageIndex(3),
                        );
                      },
                      backgroundColor: AppColors.white,
                      name: "Log Grooming in Daily Care",
                      borderColor: AppColors.grey500,
                      textColor: AppColors.buttonTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
