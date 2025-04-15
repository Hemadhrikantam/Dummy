import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(ImageResources.dashboardLogo, height: 45),
        AppAssestsImage(path: ImageResources.dog, height: 45, width: 45),
      ],
    );
  }
}
