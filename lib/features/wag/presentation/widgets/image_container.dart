import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:flutter/material.dart';

class ImagesContainer extends StatelessWidget {
  const ImagesContainer({
    super.key,
    required this.path,
    required this.backgroundColor,
    required this.borderColor,
    required this.iconColor,
    required this.size,
    this.onTap,
  });
  final String path;
  final Color backgroundColor;
  final Color borderColor;
  final Color iconColor;
  final double size;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor, // border color
            width: 1,
          ),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor,
          child:
              path.contains('svg')
                  ? AppSVGImage(path: path, height: size, color: iconColor)
                  : AppAssestsImage(path: path, height: size),
        ),
      ),
    );
  }
}
