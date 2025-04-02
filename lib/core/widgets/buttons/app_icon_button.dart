import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:flutter/widgets.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    this.onPressed,
    required this.icon,
    this.iconColor,
    this.borderColor,
    this.backgroundColor,
    this.enable,
    this.size,
    this.borderRadius,
    this.padding,
  });
  final void Function()? onPressed;
  final IconData icon;
  final bool? enable;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? size;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: key,
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.white,
          border: Border.all(
            color: borderColor ?? AppColors.baseColor,
            width: .5,
          ),
          borderRadius: borderRadius ?? Styles.borderRadiusCircular05,
        ),
        child: Padding(
          padding: padding ?? Styles.edgeInsetsAll02,
          child: Icon(
            icon,
            size: size ?? 35,
            color: iconColor ?? AppColors.black,
          ),
        ),
      ),
    );
  }
}
