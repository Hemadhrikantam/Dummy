import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/app_text.dart';
import '../../../../core/widgets/app_custom_check_box.dart';
import '../../../../core/widgets/app_custom_chip.dart';
import '../../../../core/widgets/buttons/app_icon_button.dart';
import 'adoption_card.dart';

class AdoptionDetailsCard extends StatefulWidget {
  const AdoptionDetailsCard({super.key});

  @override
  State<AdoptionDetailsCard> createState() => _AdoptionDetailsCardState();
}

class _AdoptionDetailsCardState extends State<AdoptionDetailsCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: AppColors.transparent,
      backgroundColor: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              AppAssestsImage(
                height: context.height * .4,
                path: ImageResources.dogImage,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: Styles.edgeInsetsAll10 + Styles.edgeInsetsOnlyT20,
                  height: context.height * .1,
                  width: context.width * .89,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Styles.radiusCircular08,
                      bottomRight: Styles.radiusCircular08,
                    ),
                    gradient: AppColors.blackAndWhite,
                  ),
                ),
              ),
              Positioned(
                top: context.height * .18,
                right: 10,
                child: CustomCard(
                  padding: Styles.edgeInsetsAll02,
                  borderRadius: Styles.borderRadiusCircular50,
                  borderColor: AppColors.transparent,
                  child: AppIconButton(
                    padding: Styles.edgeInsetsOnlyH00,
                    backgroundColor: AppColors.transparent,
                    icon: Icons.keyboard_arrow_right_rounded,
                    size: 25,
                    iconColor: AppColors.black,
                    borderColor: AppColors.transparent,
                  ),
                ),
              ),
            ],
          ),
          Styles.gap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Max',
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.stepperColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              AppCustomChipWidget(
                backgroundColor: AppColors.backGroundGreen,
                textColor: AppColors.greenText,
                subTitle: '',
                title: 'Available',
              ),
            ],
          ),
          Styles.gap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextValueWidget(text: 'Breed & Age', value: 'Pomerian, 3 Y'),
              TextValueWidget(text: 'Location', value: 'Bengaluru'),
            ],
          ),
          Styles.gap30,
          TextValueWidget(text: 'Description', value: 'Pomerian, 3 Y'),
          Styles.gap30,
          TextValueWidget(text: 'Contact', value: '+91 9897564567'),
          Styles.gap30,
          TextValueWidget(text: 'Email', value: 'sparrow@gmail.com'),
          Styles.gap30,
          Styles.gap10,
          CustomCheckBox(
            isChecked: isChecked,
            fontSize: 20,
            label: AppText.markAsAdopted,
            onChanged: (value) {
              setState(() {
                isChecked = !isChecked;
              });
            },
          ),
        ],
      ),
    );
  }
}
