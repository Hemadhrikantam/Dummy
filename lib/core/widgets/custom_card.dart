import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.child,
    super.key,
    this.padding,
    this.onTap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.border,
    this.backgroundGradientColor,
    this.boxShadow,
  });
  final Widget child;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Color? borderColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onTap;
  final Border? border;
  final LinearGradient? backgroundGradientColor;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? Styles.borderRadiusCircular12,
          gradient: backgroundGradientColor,
          color: backgroundColor ?? AppColors.white,
          boxShadow: boxShadow,
          border: border ??
              Border.all(color: borderColor ?? AppColors.grey350, width: .5),
        ),
        child: Padding(
          padding: padding ?? Styles.edgeInsetsAll10,
          child: child,
        ),
      ),
    );
  }
}
