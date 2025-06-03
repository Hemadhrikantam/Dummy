import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: AppColors.background,
      borderColor: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.quickActions,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          Styles.gap10,
          Row(
            children: [
              __ActionItem(
                image: ImageResources.logMeals,
                title: AppText.logMeals,
                onTap: () {},
              ),
              Styles.gap8,
              __ActionItem(
                image: ImageResources.logVaccin,
                title: AppText.logVaccin,
              ),
              Styles.gap8,

              __ActionItem(
                image: ImageResources.logWalks,
                title: AppText.logWalks,
              ),
            ],
          ),
          Styles.gap8,
          Row(
            children: [
              __ActionItem(
                image: ImageResources.checkMood,
                title: AppText.checkMood,
              ),
              Styles.gap8,
              __ActionItem(
                image: ImageResources.symptoms,
                title: AppText.symptoms,
              ),
              Styles.gap8,
              __ActionItem(
                image: ImageResources.addMemories,
                title: AppText.addMemories,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class __ActionItem extends StatelessWidget {
  const __ActionItem({required this.image, required this.title, this.onTap});
  final String image;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: CustomCard(
          backgroundColor: AppColors.white,
          child: Padding(
            padding: Styles.edgeInsetsOnlyH04,
            child: Column(
              children: [
                AppAssestsImage(path: image, height: 57, width: 57),
                Styles.gap10,
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: AppColors.stepperColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
