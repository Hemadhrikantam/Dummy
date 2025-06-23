import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    required this.name,
    super.key,
    this.icon,
    this.width,
    this.onPressed,
    this.textColor,
    this.borderColor,
    this.backgroundColor,
  });
  final Widget? icon;
  final Widget name;
  final double? width;
  final void Function()? onPressed;
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.whiteShade,
          side: BorderSide(color: borderColor ?? AppColors.grey400),
          shape: RoundedRectangleBorder(
            borderRadius: Styles.borderRadiusCircular25,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon ?? Styles.sizedBox,
            if (icon != null) Styles.sizedBoxW04,
            name,
          ],
        ),
      ),
    );
  }
}
