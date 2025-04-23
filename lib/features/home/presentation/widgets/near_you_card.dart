import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class NearYouCard extends StatelessWidget {
  const NearYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: AppColors.background,
      borderColor: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.nearYou,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Styles.gap10,
         
        ],
      ),
    );
  }
}

