import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constent/app_text.dart';
import '../constent/styles.dart';
import 'app_icon.dart';
import 'custom_card.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 97,
      child: CustomCard(
        onTap: onTap,
        padding: Styles.edgeInsetsAll06,
        borderColor: AppColors.grey400,
        borderRadius: Styles.borderRadiusCircular50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Styles.gap6,
            Text(AppText.filter, style: context.textTheme.titleMedium),
            Styles.gap12,
            AppIcon(icon: Iconsax.setting_4, size: 20),
            Styles.gap6,
          ],
        ),
      ),
    );
  }
}
