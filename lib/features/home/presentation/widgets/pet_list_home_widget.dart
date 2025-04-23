import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class PetListHomeWidget extends StatelessWidget {
  const PetListHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCard(
          padding: Styles.edgeInsetsZero,
          borderRadius: Styles.borderRadiusCircular40,
          border: Border.all(width: 2, color: AppColors.white),
          child: AppAssestsImage(
            path: ImageResources.dog,
            height: 81,
            width: 81,
            borderRadius: Styles.borderRadiusCircular40,
          ),
        ),
        Styles.gap10,
        CustomCard(
          padding: Styles.edgeInsetsAll25,
          borderRadius: Styles.borderRadiusCircular40,
          backgroundColor: AppColors.stepperColor,
          borderColor: AppColors.stepperColor,
          child: Icon(Icons.add, color: AppColors.white, size: 31),
        ),
      ],
    );
  }
}