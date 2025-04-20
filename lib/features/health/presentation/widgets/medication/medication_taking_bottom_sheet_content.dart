import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/custom_swipe_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/styles.dart';

class MedicationTakingBottomSheetContent extends StatelessWidget {
  const MedicationTakingBottomSheetContent({super.key, this.onTap});
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppText.tablet,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),

              Text(
                AppText.morning,
                style: context.textTheme.titleLarge?.copyWith(fontSize: 16),
              ),
            ],
          ),
          Styles.gap30,
          CustomSwipeButton(
            onSwipe: () {
              return BottomModels.medicationTakingSuccessBottomSheet(
                context,
              ).then((value) {
                context.pop();
              });
            },
          ),
        ],
      ),
    );
  }
}
