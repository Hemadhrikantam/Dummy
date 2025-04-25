import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../addoption/presentation/widgets/adoption_card.dart';

class ClinicCard extends StatelessWidget {
  const ClinicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        children: [
          TextValueWidget(
            text: 'Clinic Name   1.5Km',
            value: 'Jeeva Pet Clinic',
          ),
          Styles.spacer,
          AppIcon(icon: Iconsax.map5, color: AppColors.stepperColor),
        ],
      ),
    );
  }
}
