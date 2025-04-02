import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/material.dart';


class AppButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget name;
  final Color? buttonColor;
  final bool? enable;
  final Color? textColor;
  final Color? borderColor;
  final double? fontSize;
  final FontWeight? fontWight;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;

  const AppButton({
    super.key,
    this.onPressed,
    required this.name,
    this.buttonColor,
    this.enable,
    this.textColor,
    this.borderColor,
    this.fontSize,
    this.fontWight,
    this.width,
    this.borderRadius = BorderRadius.zero,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: Styles.borderRadiusCircular20,
              side: BorderSide(color: borderColor ?? Colors.transparent),
            ),
          ),
          backgroundColor:
              WidgetStateProperty.all(buttonColor ?? AppColors.primaryColor),
          elevation: WidgetStateProperty.all(enable ?? false ? 0 : 0),
        ),
        onPressed: onPressed,
        child: name);
  }
}

class CustomTextButtonWithoutBorder extends StatelessWidget {
  const CustomTextButtonWithoutBorder({
    super.key,
    required this.name,
    this.radius = 5,
    this.onPressed,
    this.padding,
    this.backgroundColor,
    this.splashColor,
    this.borderColor,
    this.textColor,
  });
  final String name;
  final double radius;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? splashColor;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
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
