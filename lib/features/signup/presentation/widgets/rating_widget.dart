import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppAssestsImage(path: ImageResources.badgeIcon, height: 42,width: 42,),
        Styles.gap10,
        Text(
          AppText.rating,
          style: context.textTheme.titleSmall?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.stepperColor,
          ),
        ),
        Styles.gap6,
        __Stars(),
      ],
    );
  }
}

class __Stars extends StatelessWidget {
  const __Stars();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Iconsax.star1, color: Colors.amberAccent),
        Icon(Iconsax.star1, color: Colors.amberAccent),
        Icon(Iconsax.star1, color: Colors.amberAccent),
        Icon(Iconsax.star1, color: Colors.amberAccent),
        Icon(Iconsax.star, color: Colors.amberAccent, size: 19,),
      ],
    );
  }
}
