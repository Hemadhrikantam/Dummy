import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/health/domain/entities/clinic.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_adoption_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../addoption/presentation/widgets/adoption_card.dart';

class ClinicCard extends StatelessWidget {
  const ClinicCard({super.key, required this.clinic});

  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        children: [
          TextValueWidget(
            text: 'Clinic Name   ${0}Km',
            value: clinic.name ?? '',
          ),
          Styles.spacer,
          AppIcon(icon: Iconsax.map5, color: AppColors.stepperColor),
        ],
      ),
    );
  }
}
