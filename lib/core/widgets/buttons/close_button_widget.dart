import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/extention/app_navigation.dart';
import 'package:dummy/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return AppIcon(
      icon: Icons.close,
      color: AppColors.buttonTextColor,
      size: 24,
      onTap:
          onTap ??
          () {
            context.pop();
          },
    );
  }
}
