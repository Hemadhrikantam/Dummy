import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_custom_listview_builder.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class TimeLineTab extends StatelessWidget {
  const TimeLineTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomCard(
          borderColor: AppColors.white,
          child: AppCustomListViewBuilder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            isExpand: false,
            shrinkWrap: true,
            separatorBuilder: (context, i) => Styles.gap8,
            itemBuilder: (context, i) {
              return CustomCard(
                padding: Styles.edgeInsetsAll06,
                borderColor: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
                child: Row(
                  children: [
                    AppAssestsImage(
                      path: ImageResources.profileDog,
                      height: 108,
                      width: 111,
                    ),
                    Styles.gap10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomCard(
                            borderRadius: Styles.borderRadiusCircular25,
                            backgroundColor: AppColors.buttonBackground,
                            padding: Styles.edgeInsetsAll08,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppIcon(
                                  icon: Icons.cake_outlined,
                                  size: 16,
                                  color: AppColors.white,
                                ),
                                Styles.gap2,
                                Text(
                                  'Birthday',
                                  style: context.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Styles.gap6,
                          Text(
                            'This is pic captued in a beach, he’s running.....',
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Styles.gap6,
                          Text(
                            '12/01/2025',
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: AppColors.stepperColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
