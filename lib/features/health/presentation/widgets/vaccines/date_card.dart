import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/utils/bottom_models.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../../core/widgets/custom_card.dart';

class DateCard extends StatefulWidget {
  const DateCard({super.key, required this.isGiven});
  final bool isGiven;
  @override
  State<DateCard> createState() => _DateCardState();
}

class _DateCardState extends State<DateCard> {
  bool isOpen = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: AppColors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.isGiven ? AppText.dateAdministered : AppText.dueDate,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Text(
                    '12/01/2025',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),

              if (widget.isGiven)
                Container(
                margin: Styles.edgeInsetsAll02,
                  decoration: BoxDecoration(
                    color: AppColors.stepperColor,
                    borderRadius: Styles.borderRadiusCircular05,
                  ),
                  padding: Styles.edgeInsetsAll02,
                  child: Icon(Icons.done, size: 20, color: Colors.white),
                ),
              if (!widget.isGiven)
                CustomCard(
                  onTap: () {
                    setState(() {
                      isOpen = !isOpen;
                    });
                  },
                  padding: Styles.edgeInsetsAll02,
                  borderRadius: Styles.borderRadiusCircular50,
                  backgroundColor: AppColors.stepperColor,
                  child: AppIconButton(
                    padding: Styles.edgeInsetsOnlyH00,
                    backgroundColor: AppColors.transparent,
                    icon:
                        isOpen
                            ? Icons.keyboard_arrow_up_outlined
                            : Icons.keyboard_arrow_down_outlined,
                    size: 25,
                    iconColor: AppColors.white,
                    borderColor: AppColors.transparent,
                  ),
                ),
            ],
          ),
          if(widget.isGiven)
          Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     AppText.notes,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.grey500,
                    ),
                  ),
                  Text(
                    'sdsdbsiubdsudsbdssdisbdisbsbcb',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
          if (isOpen)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Styles.divider,
                Text(
                  AppText.markAsGiven,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey500,
                    fontSize: 14,
                  ),
                ),
                Styles.gap10,
                CustomCheckBox(
                  isChecked: isChecked,
                  label: AppText.markAsGiven,
                  fontSize: 22,
                  onChanged: (value) {
                    BottomModels.vaccinationMarkingBottomSheet(context).then((
                      value,
                    ) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    });
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }
}
