import 'package:flutter/material.dart';
import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';

class AppButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget name;
  final bool? enable;
  final double? fontSize;
  final FontWeight? fontWight;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;

  const AppButton({
    super.key,
    this.onPressed,
    required this.name,
    this.enable,
    this.fontSize,
    this.fontWight,
    this.width,
    this.height,
    this.borderRadius = BorderRadius.zero,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height?? 44,
      decoration: BoxDecoration(
        color: AppColors.buttonBackground,
        borderRadius: Styles.borderRadiusCircular40,
        border: Border.all(color: const Color(0x42A7581A), width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFA75A1D),
            offset: Offset(0, 4),
            blurRadius: 0,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: Styles.borderRadiusCircular40,
          ),
          padding:
              padding ??
              const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        ),
        onPressed: onPressed,
        child: name,
      ),
    );
  }
}
