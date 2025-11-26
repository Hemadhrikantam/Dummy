import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppAssestsImage(
              height: 30,
              width: 50,
              boxFit: BoxFit.contain,
              path: ImageResources.wag,
            ),
            Text(
              "Wag",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.stepperColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Styles.gap4,
        Text(
          'Hi, I’m wag your personal pet AI',
          style: context.textTheme.titleLarge?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Styles.gap8,
        Text(
          'How Can I help you today?',
          style: context.textTheme.titleLarge?.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColors.grey500,
          ),
        ),
      ],
    );
  }
}
