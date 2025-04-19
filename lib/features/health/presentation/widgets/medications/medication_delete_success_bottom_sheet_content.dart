import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';

class MedicationDeleteSuccessBottomSheetContent extends StatelessWidget {
  const MedicationDeleteSuccessBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              AppIconButton(
                padding: Styles.edgeInsetsOnlyH00,
                backgroundColor: AppColors.transparent,
                icon: Icons.check_circle,
                size: 25,
                iconColor: AppColors.red,
                borderColor: AppColors.transparent,
              ),
              Styles.gap10,
              Text(
                AppText.deletedSuccessfully,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Styles.gap10,
          Row(
            children: [
              Expanded(
                child: AppTextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  borderColor: AppColors.grey500,
                  backgroundColor: AppColors.white,
                  textColor: AppColors.buttonTextColor,
                  radius: 50,
                  name: AppText.undo,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
