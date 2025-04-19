import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constent/app_text.dart';
import '../constent/styles.dart';
import 'app_icon.dart';
import 'custom_card.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderColor: AppColors.grey400,
      borderRadius: Styles.borderRadiusCircular50,
      child: Row(
        children: [
          Text(AppText.filter, style: context.textTheme.titleMedium),
          Styles.gap20,
          AppIcon(icon: Iconsax.setting_4),
        ],
      ),
    );
  }
}
