import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../../../../core/constent/image_resources.dart';

class TrackingWidget extends StatelessWidget {
  const TrackingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 40,
          height: 250,
          child: Image.asset(ImageResources.trackImg, fit: BoxFit.contain),
        ),
        Styles.gap15,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TrackingStep(
                title: AppText.today,
                subtitle: AppText.getInstantAccess,
              ),
              Styles.gap20,
              _TrackingStep(
                title: AppText.in15Days,
                subtitle: AppText.weWillSendRemainder,
              ),
              Styles.gap20,
              _TrackingStep(
                title: AppText.in30Days,
                subtitle: AppText.youWillBeCharged("June 14"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TrackingStep extends StatelessWidget {
  final String title;
  final String subtitle;

  const _TrackingStep({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        Styles.gap4,
        Text(
          subtitle,
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
