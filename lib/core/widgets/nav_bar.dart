import 'dart:io';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/di/injection.dart';
import 'package:flutter/material.dart';

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
        height: 65,
        color: AppColors.white,
        child: Row(
          children: [
            __NavItem(
              selectedAsset: ImageResources.home,
              unselectedAsset: ImageResources.unselectedHome,
              selected: pageIndex == 0,
              text: AppText.home,
              onTap: onTap,
              index: 0,
            ),
            __NavItem(
              selectedAsset: ImageResources.heart,
              unselectedAsset: ImageResources.unselectedHeart,
              selected: pageIndex == 1,
              text: AppText.health,
              onTap: onTap,
              index: 1,
            ),
            Styles.gap80,
            __NavItem(
              selectedAsset: ImageResources.health,
              unselectedAsset: ImageResources.unselectedHealth,
              selected: pageIndex == 2,
              text: AppText.dailyCare,
              onTap: onTap,
              index: 2,
            ),

            __NavItem(
              selectedAsset: ImageResources.addoption,
              unselectedAsset: ImageResources.unselectedAddoption,
              selected: pageIndex == 3,
              text: AppText.addoption,
              onTap: onTap,
              index: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class __NavItem extends StatelessWidget {
  const __NavItem({
    required this.selectedAsset,
    required this.unselectedAsset,
    required this.selected,
    required this.onTap,
    required this.text,
    required this.index,
  });
  final String selectedAsset;
  final String unselectedAsset;
  final bool selected;
  final void Function(int index)? onTap;
  final String text;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Styles.gap20,
          InkWell(
            onTap: () => onTap?.call(index),
            child: Image.asset(
              selected ? selectedAsset : unselectedAsset,
              width: 24,
              height: 24,
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
