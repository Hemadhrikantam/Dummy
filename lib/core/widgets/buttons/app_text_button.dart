import 'package:flutter/material.dart';

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

  const AppTextButton(
      {super.key,
      required this.name,
      this.radius = 50,
      this.onPressed,
      this.padding,
      this.backgroundColor,
      this.splashColor,
      this.borderColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(splashColor),
        padding: WidgetStateProperty.all(padding ?? const EdgeInsets.all(11)),
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        ),
      ),
      onPressed: onPressed,
      child: Text(name,
          style: TextStyle(
            color: textColor ?? AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          )),
    );
  }
}
