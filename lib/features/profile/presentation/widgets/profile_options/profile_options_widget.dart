import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsItemsWidget extends StatelessWidget {
  final String leadingIcon;
  final String title;
  final IconData? trailingIcon;
  final Color? color;

  final Function()? onPressed;
  const SettingsItemsWidget({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.trailingIcon,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CustomCard(
        padding: Styles.edgeInsetsAll10,
        borderColor: AppColors.grey350,
        child: Column(
          children: [
            Row(
              children: [
                AppAssestsImage(path: leadingIcon, height: 45, width: 43),
                Styles.gap4,
                Expanded(
                  child: Text(
                    title,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
                AppAssestsImage(
                  path: ImageResources.arrowFarward,
                  height: 24,
                  width: 24,
                ),
                Styles.gap4,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
