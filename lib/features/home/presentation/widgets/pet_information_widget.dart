import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class PetInformationWidget extends StatelessWidget {
  const PetInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: AppColors.buttonBackground,
      borderColor: AppColors.brown,
      child: Column(
        children: [
          CustomCard(
            child: Row(
              children: [
                __InfoValue(
                  image: ImageResources.breed,
                  title: AppText.breed,
                  value: 'Indie',
                ),
                __InfoValue(
                  image: ImageResources.age,
                  title: AppText.age,
                  value: '2 Years',
                ),
                Styles.gap10,
                __InfoValue(
                  image: ImageResources.weight,
                  title: AppText.weight,
                  value: '14 kgs',
                ),
              ],
            ),
          ),
          Styles.gap10,
          CustomCard(
            child: Row(
              children: [
                __InfoValue(
                  image: ImageResources.petType,
                  title: AppText.petType,
                  value: 'Dog',
                ),
                __InfoValue(
                  image: ImageResources.gender,
                  title: AppText.gender,
                  value: 'Female',
                ),
                Expanded(child: Styles.sizedBox),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class __InfoValue extends StatelessWidget {
  const __InfoValue({
    required this.image,
    required this.title,
    required this.value,
  });
  final String image;
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          AppAssestsImage(path: image, height: 20, width: 20),
          Styles.gap6,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey600,
                  fontSize: 10,
                ),
              ),
              Styles.gap2,
              Text(
                value,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.stepperColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
