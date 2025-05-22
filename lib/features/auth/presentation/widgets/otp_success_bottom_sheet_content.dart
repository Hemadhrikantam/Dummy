import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../core/widgets/app_graber.dart';
import '../../../../core/widgets/buttons/app_button.dart';

class OtpSuccessBottomSheetContent extends StatelessWidget {
  const OtpSuccessBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppGraber(),
          Styles.gap20,
          Text(
            AppText.verificationSuccessful,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.stepperColor,
            ),
          ),
          Styles.gap30,

          Row(
            children: [
              Expanded(
                child: AppButton(
                  onPressed: () {
                    context.pop();
                  },
                  borderColor: AppColors.grey500,
                  backgroundColor: AppColors.white,
                  name: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: AppText.continueBtn,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.buttonTextColor,
                        letterSpacing: -.5,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
