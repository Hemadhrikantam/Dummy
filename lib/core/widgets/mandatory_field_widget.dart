import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import '../constent/app_colors.dart';

class MandatoryFieldWidget extends StatelessWidget {
  const MandatoryFieldWidget(
      {required this.labelText, super.key, this.required = true});
  final String labelText;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: labelText, style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
          if (required)
            const TextSpan(
              text: ' *',
              style: TextStyle(
                color: AppColors.textRed,
              ),
            ),
        ],
      ),
    );
  }
}
