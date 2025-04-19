import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class PetListWidget extends StatelessWidget {
  const PetListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCard(
          padding: Styles.edgeInsetsZero,
          borderRadius: Styles.borderRadiusCircular08,
          border: Border.all(width: 2, color: AppColors.stepperColor),
          child: AppAssestsImage(
            path: ImageResources.profileDog,
            height: 64,
            width: 64,
          ),
        ),
        Styles.gap10,
        CustomCard(
          padding: Styles.edgeInsetsAll16,
          borderRadius: Styles.borderRadiusCircular08,
          backgroundColor: AppColors.stepperColor,
          child: Icon(Icons.add, color: AppColors.white, size: 31),
        ),
      ],
    );
  }
}
