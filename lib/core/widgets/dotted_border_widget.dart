import 'package:dotted_border/dotted_border.dart';
import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DottedBorderWidget extends StatelessWidget {
  const DottedBorderWidget({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return

GestureDetector(
  onTap: onTap,
  child: DottedBorder(
    color: AppColors.stepperColor,
    strokeWidth: 1.5,
    borderType: BorderType.RRect,
    radius: Styles.radiusCircular08,
    dashPattern: [6, 3], 
    child: Container(
      padding: Styles.edgeInsetsAll25,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Iconsax.gallery_add,
            color: AppColors.stepperColor,
          ),
          Styles.gap6,
          Text(
            AppText.tapHereToAddMedia,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.stepperColor,
            ),
          ),
        ],
      ),
    ),
  ),
);

  }
}