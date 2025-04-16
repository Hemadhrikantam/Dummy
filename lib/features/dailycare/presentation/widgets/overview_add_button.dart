import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class OverviewAddButton extends StatelessWidget {
  const OverviewAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppAssestsImage(path: ImageResources.overviewaddpicture, height: 80),
          Styles.gap15,
          Text(
            AppText.emptyDailyCareTitle,
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          Styles.gap10,
          Text(
            AppText.emptyDailyCareSubtitleMeals,
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
          ),
          Styles.gap20,
          // You can add a button here to navigate back or to a logging screen if needed
        ],
      ),
    );
  }
}
