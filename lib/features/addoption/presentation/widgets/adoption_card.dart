import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/addoption/domain/entities/adoption.dart';
import 'package:dummy/features/addoption/presentation/pages/adoption_details_page.dart';
import 'package:dummy/features/addoption/presentation/pages/all_adoption_details_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_custom_chip.dart';

class AdoptionCard extends StatelessWidget {
  const AdoptionCard({super.key, required this.isAllPet, this.adoption});
  final Adoption? adoption;
  final bool isAllPet;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: () {
        if (isAllPet) {
          context.push(AllAdoptionDetailsPage.route(adoption));
        } else {
          context.push(AdoptionDetailsPage.route(adoption));
        }
      },
      padding: Styles.edgeInsetsAll06,
      borderColor: AppColors.buttonBackground,
      child: Stack(
        children: [
          Row(
            children: [
              AppNetworkImage(
                borderRadius: Styles.borderRadiusCircular12,
                height: context.height * .17,
                width: context.width * .3,
                boxFit: BoxFit.fitWidth,
                url: adoption?.petImage ?? '',
              ),
              Styles.gap15,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Styles.gap10,
                  Text(
                    adoption?.name ?? '',
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.stepperColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Styles.gap10,
                  TextValueWidget(
                    text: 'Breed & age',
                    value:
                        '${adoption?.petBreed.petBreed} ${adoption?.age ?? ''}',
                  ),
                  Styles.gap10,
                  TextValueWidget(
                    text: 'Location',
                    value: adoption?.address ?? '',
                  ),
                  Styles.gap4,
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: AppCustomChipWidget(
              backgroundColor:
                  (adoption?.isAdopted ?? false)
                      ? AppColors.brown.withOpacity(0.2)
                      : AppColors.backGroundGreen,
              textColor:
                  (adoption?.isAdopted ?? false)
                      ? AppColors.brown
                      : AppColors.greenText,
              subTitle: '',
              title: (adoption?.isAdopted ?? false) ? 'Adopted' : 'Available',
              padding: Styles.edgeInsetsAll06 + Styles.edgeInsetsOnlyW10,
            ),
          ),
        ],
      ),
    );
  }
}

class TextValueWidget extends StatelessWidget {
  const TextValueWidget({super.key, required this.text, required this.value});
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: context.textTheme.bodySmall?.copyWith(
            color: AppColors.black.withOpacity(.5),
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
        Text(
          value,
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w900,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
