import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';

class PetImageWidget extends StatelessWidget {
  const PetImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70,
      backgroundColor: AppColors.buttonBackground,
      child: AppAssestsImage(path: ImageResources.dog),
    );
  }
}
