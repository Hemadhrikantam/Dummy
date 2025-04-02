import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: AppColors.stepperColor,
      borderRadius: Styles.borderRadiusCircular40,
      padding: Styles.edgeInsetsAll04,
      child: Row(
        children: [
          Styles.sizedBoxH02,
          AppIcon(
            icon: Icons.arrow_back_ios,
            size: 16,
            color: AppColors.white,
            onTap: () {
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
