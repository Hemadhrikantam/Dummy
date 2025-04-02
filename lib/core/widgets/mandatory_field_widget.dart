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
          TextSpan(text: labelText),
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
