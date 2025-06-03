import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constent/app_colors.dart';
import '../../../../../core/constent/image_resources.dart';
import '../../../../../core/constent/styles.dart';
import '../../../../../core/widgets/app_custom_listview_builder.dart';
import '../../../../../core/widgets/custom_card.dart';

class LearnSections extends StatelessWidget {
  const LearnSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Learn",
              style: context.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Image.asset(ImageResources.dashboardLogo, height: 25),
                Styles.gap6,
                SvgPicture.asset(ImageResources.premium,width: 50,),
              ],
            ),
          ],
        ),
        Styles.gap10,
        SizedBox(
          height: context.height * .25,
          child: AppCustomListViewBuilder(
            itemCount: 5,
            padding: Styles.edgeInsetsOnlyH00,
            isExpand: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, i) => Styles.gap10,
            itemBuilder: (BuildContext context, int i) {
              return ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Styles.radiusCircular08,
                  bottomRight: Styles.radiusCircular08,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.buttonBackground),
                    borderRadius: Styles.borderRadiusCircular08,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(ImageResources.dogImage),
                    ),
                  ),
                  height: context.height * .25,
                  width: context.width * .8,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: Styles.edgeInsetsAll10,
                          height: context.height * .06,
                          width: context.width * .8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Styles.radiusCircular08,
                              bottomRight: Styles.radiusCircular08,
                            ),
                            color: AppColors.white,
                          ),
                          child: Text(
                            'Nutrition Tips for Labradors',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: AppColors.stepperColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
