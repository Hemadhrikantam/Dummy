import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/styles.dart';
import '../../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';

class MedicationDeleteSuccessBottomSheetContent extends StatefulWidget {
  const MedicationDeleteSuccessBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  State<MedicationDeleteSuccessBottomSheetContent> createState() =>
      _MedicationDeleteSuccessBottomSheetContentState();
}

class _MedicationDeleteSuccessBottomSheetContentState
    extends State<MedicationDeleteSuccessBottomSheetContent> {
  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(context).pop();
        Navigator.of(context).pop();
      }
    });
  }

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
          // Row(
          //   children: [
          //     Expanded(
          //       child: AppTextButton(
          //         onPressed: () {
          //           Navigator.of(context).pop();
          //         },
          //         borderColor: AppColors.grey500,
          //         backgroundColor: AppColors.white,
          //         textColor: AppColors.buttonTextColor,
          //         radius: 50,
          //         name: AppText.undo,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
