import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/image_resources.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:dummy/features/dashboard/domain/entities/dashboard_details.dart';
import 'package:flutter/material.dart';

class PetInformationWidget extends StatelessWidget {
  const PetInformationWidget({super.key, required this.dashboardPetDetails});
  final DashboardPetDetails? dashboardPetDetails;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: AppColors.buttonBackground,
      borderRadius: BorderRadius.only(
        bottomLeft: Styles.radiusCircular08,
        bottomRight: Styles.radiusCircular08,
      ),
      borderColor: AppColors.brown,
      border: Border.all(color: AppColors.buttonBackground),
      child: Column(
        children: [
          CustomCard(
            child: Row(
              children: [
                Expanded(
                  child: __InfoValue(
                    image: ImageResources.pet,
                    title: AppText.name,
                    value: dashboardPetDetails?.name ?? '',
                  ),
                ),
                Expanded(
                  child: __InfoValue(
                    image: ImageResources.breed,
                    title: AppText.breed,
                    value: dashboardPetDetails?.breedName ?? '',
                  ),
                ),
                Expanded(
                  child: __InfoValue(
                    image: ImageResources.age,
                    title: AppText.age,
                    value: calculateAge(dashboardPetDetails?.dob ?? ''),
                  ),
                ),
              ],
            ),
          ),
          Styles.gap10,
          CustomCard(
            child: Row(
              children: [
                Expanded(
                  child: __InfoValue(
                    image: ImageResources.petType,
                    title: AppText.petType,
                    value: dashboardPetDetails?.type ?? '',
                  ),
                ),
                Expanded(
                  child: __InfoValue(
                    image: ImageResources.gender,
                    title: AppText.gender,
                    value:
                        (dashboardPetDetails?.gender ?? '') == 'male'
                            ? AppText.male
                            : AppText.female,
                  ),
                ),
                Expanded(
                  child: __InfoValue(
                    image: ImageResources.weight,
                    title: AppText.weight,
                    value:
                        '${double.parse(dashboardPetDetails?.weightValue ?? '0.0').toInt()} ${dashboardPetDetails?.weightUnit ?? ''}s',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String calculateAge(String dob) {
  final birthDate = DateTime.tryParse(dob);
  if (birthDate == null) return '-';
  final now = DateTime.now();
  int age = now.year - birthDate.year;
  if (now.month < birthDate.month ||
      (now.month == birthDate.month && now.day < birthDate.day)) {
    age--;
  }
  return '$age Years';
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppAssestsImage(path: image, height: 20, width: 20),
        Styles.gap6,
        Flexible(
          child: Column(
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
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.stepperColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
