import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';

class MedicationTakingSuccessBottomSheetContent extends StatelessWidget {
  const MedicationTakingSuccessBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppAssestsImage(
            path: ImageResources.medsIcon,
            height: context.height * .07,
            boxFit: BoxFit.contain,
          ),
          Text(
            AppText.youreDoingGreat,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.stepperColor,
            ),
          ),
          Styles.gap10,
          Row(
            children: [
              Expanded(
                child: AppTextButton(
                  onPressed: () {
                    context.pop();
                  },
                  borderColor: AppColors.grey500,
                  backgroundColor: AppColors.white,
                  textColor: AppColors.buttonTextColor,
                  radius: 50,
                  name: AppText.close,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
