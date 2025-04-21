import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constent/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final String name;
  final double radius;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? splashColor;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;

  const AppTextButton({
    super.key,
    required this.name,
    this.radius = 50,
    this.onPressed,
    this.padding,
    this.backgroundColor,
    this.splashColor,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(splashColor),
        padding: WidgetStateProperty.all(padding ?? const EdgeInsets.all(11)),
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(color: borderColor ?? AppColors.transparent),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        name,
        style: GoogleFonts.instrumentSans(
          color: textColor ?? AppColors.white,
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    );
  }
}
