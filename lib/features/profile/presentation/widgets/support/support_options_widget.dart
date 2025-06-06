import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SupportItemsWidget extends StatelessWidget {
  final String leadingIcon;
  final String? title;
  final String subtitle;
  final IconData trailingIcon;
  final Color? color;
  final bool tailingIconCover;
  final Function()? onPressed;
  const SupportItemsWidget({
    super.key,
    required this.leadingIcon,
    this.title,
    this.tailingIconCover = false,
    required this.trailingIcon,
    this.color,
    this.onPressed,
    required this.subtitle,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (title != null)
                        Text(
                          title!,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: AppColors.black.withOpacity(.5),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      Text(
                        subtitle,
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                if (!tailingIconCover)
                  AppIcon(
                    icon: trailingIcon,
                    size: 24,
                    color: AppColors.stepperColor,
                  ),
                if (tailingIconCover)
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.stepperColor,
                      shape: BoxShape.circle,
                    ),
                    child: AppIcon(
                      icon: trailingIcon,
                      size: 24,
                      color: AppColors.white,
                    ),
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
