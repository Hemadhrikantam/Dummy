import 'package:flutter/material.dart';

import '../../constent/app_colors.dart';

class AppTextIconButton extends StatelessWidget {
  final String name;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? splashColor;
  final IconData icon;
  final double? radius;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;

  const AppTextIconButton(
      {super.key,
      required this.name,
      required this.icon,
      this.onPressed,
      this.padding,
      this.backgroundColor,
      this.splashColor,
      this.borderColor,
      this.radius,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(splashColor),
        padding: WidgetStateProperty.all(padding ?? EdgeInsets.zero),
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 4)),
        ),
        side: WidgetStateProperty.all(
            BorderSide(color: borderColor ?? AppColors.primaryColor)),
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 20,
        color: textColor ?? AppColors.primaryColor,
      ),
      label: Text(
        name,
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}