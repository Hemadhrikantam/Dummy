import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/health/domain/entities/clinic.dart';
import 'package:dummy/features/ngo/presentation/widgets/ngo_adoption_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/utils/app_utils.dart';

class ClinicCard extends StatelessWidget {
  const ClinicCard({super.key, required this.clinic});

  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        children: [
          Expanded(
            child: TextValueWidget(
              text:
                  'Clinic Name   ${AppUtil.formatDistanceKm(clinic.distance)}',
              value: clinic.name,
            ),
          ),
          Styles.gap10,
          AppIcon(
            onTap: () {
              AppUtil.openGoogleMap(
                latitude: clinic.latitude,
                longitude: clinic.longitude,
                label: clinic.name,
              );
            },
            icon: Iconsax.map5,
            color: AppColors.stepperColor,
          ),
        ],
      ),
    );
  }
}
