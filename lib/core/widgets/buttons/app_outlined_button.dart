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
  });
  final IconData? icon;
  final String name;
  final double? width;
  final void Function()? onPressed;
  final Color? textColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: borderColor ?? AppColors.grey600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: Styles.borderRadiusCircular25,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 15,
            ),
            Styles.sizedBoxW04,
            Text(
              name,
            ),
          ],
        ),
      ),
    );
  }
}
