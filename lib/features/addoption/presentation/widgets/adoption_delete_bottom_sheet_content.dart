import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';

class AdoptionDeleteBottomSheetContent extends StatelessWidget {
  const AdoptionDeleteBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppText.delete,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Styles.gap10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: AppText.areYouSureToDelete,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: "[Pet's Name]'s ",
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: AppText.medicationQuestionMark,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Styles.gap20,
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
                      name: AppText.cancel,
                    ),
                  ),
                  Styles.gap15,
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                        BottomModels.medicationDeleteSuccessBottomSheet(
                          context,
                        );
                      },
                      radius: 50,
                      borderColor: AppColors.transparent,
                      backgroundColor: AppColors.red,
                      name: AppText.delete,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
