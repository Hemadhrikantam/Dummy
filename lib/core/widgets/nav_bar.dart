import 'dart:io';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({super.key, required this.pageIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: Platform.isAndroid ? 16 : 0,
      ),
      child: Container(
        height: 70,
        color: AppColors.white,
        child: Row(
          children: [
            navItem(
              Iconsax.home,
              pageIndex == 0,
              onTap: () => onTap(0),
              text: AppText.home,
            ),
            navItem(
              Iconsax.heart,
              pageIndex == 1,
              onTap: () => onTap(1),
              text: AppText.health,
            ),
           Styles.gap80,
            navItem(
              Iconsax.status_up,
              pageIndex == 2,
              onTap: () => onTap(2),
              text: AppText.dailyCare,
            ),
            navItem(
              Iconsax.user_octagon,
              pageIndex == 3,
              onTap: () => onTap(3),
              text: AppText.addoption,
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem(
    IconData icon,
    bool selected, {
    Function()? onTap,
    required String text,
  }) {
    return Expanded(
      child: Column(
        children: [
          Styles.gap20,
          InkWell(
            onTap: onTap,
            child: Icon(
              icon,
              color: selected ? AppColors.stepperColor : AppColors.black,
            ),
          ),
          Text(
            text,
            style: currentContext.textTheme.titleSmall?.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: selected ? AppColors.stepperColor : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
