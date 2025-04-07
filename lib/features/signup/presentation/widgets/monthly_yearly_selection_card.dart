import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class MonthlyYearlySelectionCard extends StatelessWidget {
  const MonthlyYearlySelectionCard({
    super.key,
    required this.title,
    required this.value,
    required this.trialText,
    required this.backgroundColor,
    required this.textColor,
    required this.isSelected,
    required this.onTap,
    this.badgeText,
  });

  final String title;
  final String value;
  final String trialText;
  final String? badgeText;
  final Color backgroundColor;
  final Color textColor;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final borderRadius = Styles.borderRadiusCircular15;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration:
                isSelected
                    ? BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 159, 87, 15),
                          Color(0xFFFFB347),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: borderRadius,
                    )
                    : BoxDecoration(
                      borderRadius: borderRadius,
                      border: Border.all(color: AppColors.stepperColor),
                    ),
            padding:Styles.edgeInsetsAll20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Colors.white : textColor,
                  ),
                ),
                Styles.gap4,
                Text(
                  value,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: isSelected ? Colors.white : textColor,
                  ),
                ),
                if (badgeText == null)
                Styles.gap30,
                if (badgeText != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 202, 166),
                      borderRadius: Styles.borderRadiusCircular20,
                    ),
                    child: Text(
                      badgeText!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.stepperColor,
                      ),
                    ),
                  ),
                  if (badgeText != null) Styles.gap4,
                Text(
                  trialText,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: isSelected ? Colors.white : textColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          if (isSelected)
            Positioned(
              top: -6,
              right: -6,
              child: CustomCard(
                padding: Styles.edgeInsetsAll02,
                child: const Icon(
                  Icons.check,
                  size: 16,
                  color: Colors.orange,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
