import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_custom_date_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/utils/app_utils.dart';
import '../../../../../core/widgets/app_assets_image.dart';
import '../../../../../core/widgets/app_custom_check_box.dart';
import '../../../../../core/widgets/app_custom_text_field.dart';
import '../../../../../core/widgets/buttons/app_button.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_switch.dart';
part 'vaccination_marking_fields.dart';

class VaccinationMarkingBottomSheetContent extends StatefulWidget {
  const VaccinationMarkingBottomSheetContent({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  State<VaccinationMarkingBottomSheetContent> createState() =>
      _VaccinationMarkingBottomSheetContentState();
}

class _VaccinationMarkingBottomSheetContentState
    extends State<VaccinationMarkingBottomSheetContent> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styles.edgeInsetsAll20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Rabies',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.stepperColor,
            ),
          ),
          Styles.gap10,
          CustomCheckBox(
            isChecked: isChecked,
            label: AppText.markAsGiven,
            onChanged: (value) {
              setState(() {
                isChecked = !isChecked;
              });
            },
          ),
          Styles.gap10,
          CustomCard(
            padding: Styles.edgeInsetsAll08,
            backgroundColor: AppColors.buttonBackground.withOpacity(.6),
            border: Border.all(color: Colors.transparent),
            child: Row(
              children: [
                AppAssestsImage(
                  path: ImageResources.medsIcon,
                  height: context.height * .04,
                  width: context.height * .04,
                  boxFit: BoxFit.contain,
                ),
                Styles.gap10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${AppText.nextDueDate} : [12/01/2026]",
                      style: context.textTheme.titleMedium?.copyWith(
                        color: AppColors.buttonTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      AppText.autoSuggestedBasedOnAnnualFrequency,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: AppColors.buttonTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Styles.gap10,
          __Notes(),
          Styles.gap10,
          __DueDate(),
          Styles.gap10,
          Row(
            children: [
              CustomSwitch(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
              ),
              Styles.gap6,
              Text(
                AppText.applyThisInterval,
                style: context.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
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
                    context.pop();
                    // BottomModels.medicationDeleteBottomSheet(context);
                    // BottomModels.medicationTakingBottomSheet(context);
                  },
                  backgroundColor: AppColors.white,
                  borderColor: AppColors.grey400,
                  name: AppText.cancel,
                  textColor: AppColors.buttonTextColor,
                ),
              ),
              Styles.gap10,
              Expanded(
                child: AppButton(
                  onPressed: () {
                    context.pop();
                    BottomModels.vaccinationMarkedSuccessBottomSheet(context);
                  },
                  name: Center(
                    child: Text(
                      AppText.save,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: AppColors.buttonTextColor,
                        fontWeight: FontWeight.w700,
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
