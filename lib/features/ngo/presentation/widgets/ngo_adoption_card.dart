import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/ngo/domain/entities/listing.dart';
import 'package:dummy/features/ngo/presentation/pages/ngo_adoption_details_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_custom_chip.dart';

class NgoAdoptionCard extends StatelessWidget {
  const NgoAdoptionCard({
    super.key,
    required this.isAllPet,
    this.adoption,
    this.onTap,
  });
  final Listing? adoption;
  final bool isAllPet;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap:
          onTap ??
          () {
            context.push(NgoAdoptionDetailsPage.route(adoption));
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
                url: adoption?.imageUrl ?? '',
              ),
              Styles.gap15,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Styles.gap10,
                  Text(
                    adoption?.petName ?? '',
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.stepperColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Styles.gap10,
                  TextValueWidget(
                    text: 'Breed & age',
                    value: '${adoption?.breedName} ${adoption?.age ?? ''}',
                  ),
                  Styles.gap10,
                  TextValueWidget(text: 'Location', value: ''),
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
                  (adoption?.status == 'adopted')
                      ? AppColors.brown.withOpacity(0.2)
                      : AppColors.backGroundGreen,
              textColor:
                  (adoption?.status == 'adopted')
                      ? AppColors.brown
                      : AppColors.greenText,
              subTitle: '',
              title: (adoption?.status == 'adopted') ? 'Adopted' : 'Available',
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
