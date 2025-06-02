import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/styles.dart';

// class AppButton extends StatelessWidget {
//   final void Function()? onPressed;
//   final Widget name;
//   final bool? enable;
//   final double? fontSize;
//   final FontWeight? fontWight;
//   final double? width;
//   final double? height;
//   final BorderRadiusGeometry? borderRadius;
//   final EdgeInsetsGeometry? padding;
//   final Color? backgroundColor;
//   final Color? borderColor;
//   final bool showShadow;
//   const AppButton({
//     super.key,
//     this.onPressed,
//     required this.name,
//     this.enable,
//     this.fontSize,
//     this.fontWight,
//     this.width,
//     this.height,
//     this.borderRadius = BorderRadius.zero,
//     this.padding,
//     this.backgroundColor,
//     this.borderColor,
//     this.showShadow = true,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: padding,
//       width: width,
//       height: height ?? 44,
//       decoration: BoxDecoration(
//         color: backgroundColor ?? AppColors.buttonBackground,
//         borderRadius: Styles.borderRadiusCircular40,

//         // border: Border.all(color: const Color(0x42A7581A), width: 1),
//         boxShadow: [
//           // if (showShadow)
//           //   BoxShadow(
//           //     color: Color(0xFFA75A1D),
//           //     offset: Offset(0, 4),
//           //     blurRadius: 0,
//           //     spreadRadius: 0,
//           //   ),
//         ],
//       ),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           elevation: 0,
//           backgroundColor: backgroundColor ?? AppColors.buttonBackground,
//           shape: RoundedRectangleBorder(
//             borderRadius: Styles.borderRadiusCircular40,
//             side: BorderSide(color: borderColor ?? AppColors.transparent),
//           ),
//           padding:
//               padding ??
//               const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//         ),
//         onPressed: onPressed,
//         child: name,
//       ),
//     );
//   }
// }

class AppButton extends StatelessWidget {
  const AppButton({
    required this.name,
    super.key,
    this.onPressed,
    this.backgroundGradientColor,
    this.enable,
    this.textColor,
    this.fontSize,
    this.fontWight,
    this.width,
    this.borderRadius,
    this.padding,
    this.borderColor,
    this.borderWidth,
    this.height,
    this.backgroundColor, this.showShadow,
  });

  final void Function()? onPressed;
  final Widget name;
  final LinearGradient? backgroundGradientColor;
  final bool? enable;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWight;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;
  final double? borderWidth;
  final Color? backgroundColor;
  final bool? showShadow;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 38,
      child: Container(
        padding: Styles.edgeInsetsOnlyH00,
        decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.buttonBackground,
        borderRadius: Styles.borderRadiusCircular40,
        ),
        child: ElevatedButton(
          
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
          backgroundColor: backgroundColor ?? AppColors.buttonBackground,
          shape: RoundedRectangleBorder(
            borderRadius: Styles.borderRadiusCircular40,
            side: BorderSide(color: borderColor ?? AppColors.transparent),
          ),
          padding:
              padding ??
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          ),
          child: FittedBox(
            child: name
          ),
        ),
      ),
    );
  }
}
