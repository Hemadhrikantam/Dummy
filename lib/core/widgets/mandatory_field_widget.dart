import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constent/app_colors.dart';

class MandatoryFieldWidget extends StatelessWidget {
  const MandatoryFieldWidget({
    required this.labelText,
    super.key,
    this.required = true,
  });
  final String labelText;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: labelText,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          if (required)
            TextSpan(
              text: ' *',
              style: GoogleFonts.instrumentSans(color: AppColors.textRed),
            ),
        ],
      ),
    );
  }
}
