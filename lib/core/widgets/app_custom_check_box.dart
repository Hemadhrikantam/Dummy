import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../constent/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    required this.isChecked,
    required this.label,
    required this.onChanged,
    super.key,
    this.maxWidth,
  });
  final bool isChecked;
  final String label;
  final ValueChanged<bool> onChanged;
  final double? maxWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!isChecked),
      child: Row(
        children: [
          CheckboxDesign(isChecked: isChecked),
          const SizedBox(width: 10),
          Container(
            constraints: maxWidth != null
                ? BoxConstraints(
                    maxWidth: maxWidth!,
                  )
                : null,
            child: Text(
              label,
              style: context.textTheme.bodyMedium,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

class CheckboxDesign extends StatelessWidget {
  const CheckboxDesign({required this.isChecked, super.key});
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey400),
        borderRadius: BorderRadius.circular(8),
        color: isChecked ? AppColors.greenText : AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Icon(
          Icons.check,
          size: 20,
          color: isChecked ? Colors.white : Colors.transparent,
        ),
      ),
    );
  }
}
