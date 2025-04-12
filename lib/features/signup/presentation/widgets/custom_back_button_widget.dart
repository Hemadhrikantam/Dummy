import 'package:dummy/core/constent/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;
  final EdgeInsetsGeometry? padding;

  const CustomBackButton({
    Key? key,
    this.onPressed,
    this.backgroundColor,
    this.iconColor = Colors.white,
    this.size = 30.0, // Reduced size
    this.padding = const EdgeInsets.all(6.0), // Adjust padding for smaller size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () => Navigator.of(context).pop(),
      borderRadius: BorderRadius.circular(size! / 2), // Make it circular
      child: Container(
        width: size,
        height: size,
        padding: padding,
        decoration: BoxDecoration(
          color:
              backgroundColor ??
              AppColors.stepperColor, // Using AppColors.stepperColor
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: iconColor,
            size: size! * 0.6, // Adjust icon size relative to the button size
          ),
        ),
      ),
    );
  }
}

// How to use this custom back button in your WelcomeToDummyPage:

// ... inside your WelcomeToDummyPage's build method:

// Row(children: [
//   const CustomBackButton(), // Will use default size and AppColors.stepperColor
// ]),

// Or with more explicit parameters:

// Row(children: [
//   const CustomBackButton(
//     backgroundColor: AppColors.stepperColor,
//     size: 30.0,
//   ),
// ]),
