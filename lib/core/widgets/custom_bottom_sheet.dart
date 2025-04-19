import 'package:dummy/core/extention/device_size_extention.dart';
import 'package:flutter/material.dart';

import '../constent/app_colors.dart';
import '../constent/styles.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Styles.radiusCircular20,
          topRight: Styles.radiusCircular20,
        ),
      ),
      padding: Styles.edgeInsetsAll10,
      // height: 100,
      child: child,
    );
  }
}
