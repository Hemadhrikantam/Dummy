import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/styles.dart';

class AppGraber extends StatelessWidget {
  const AppGraber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.grey350,
            borderRadius: Styles.borderRadiusCircular10,
          ),
          child: const SizedBox(width: 100, height: 4),
        ),
      ],
    );
  }
}
