import 'dart:io';

import 'package:dummy/core/constent/app_colors.dart';
import 'package:dummy/core/constent/app_text.dart';
import 'package:dummy/core/constent/image_resources.dart';
import 'package:dummy/core/constent/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/app_assets_image.dart';
import 'package:dummy/di/injection.dart';
import 'package:flutter/material.dart';

class AdoptionNavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const AdoptionNavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

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
              opened: false,
              index: 0,
            ),
            __NavItem(
              selectedAsset: ImageResources.heart,
              unselectedAsset: ImageResources.unselectedHeart,
              selected: pageIndex == 1,
              text: AppText.health,
              onTap: onTap,
              opened: false,
              index: 1,
            ),
            Styles.gap80,
            __NavItem(
              selectedAsset: ImageResources.health,
              unselectedAsset: ImageResources.unselectedHealth,
              selected: pageIndex == 2,
              text: AppText.dailyCare,
              onTap: onTap,
              opened: false,
              index: 2,
            ),

            __NavItem(
              selectedAsset: ImageResources.pet,
              unselectedAsset: ImageResources.unselectedPet,
              selected: pageIndex == 3,
              text: AppText.addoption,
              onTap: onTap,
              opened: true,
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
    required this.opened,
  });
  final String selectedAsset;
  final String unselectedAsset;
  final bool selected;
  final void Function(int index)? onTap;
  final String text;
  final int index;
  final bool opened;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: Styles.edgeInsetsAll04,
        decoration: BoxDecoration(
          color: opened ? Colors.transparent : AppColors.buttonBackground,
          borderRadius: Styles.borderRadiusCircular08,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Styles.gap10,
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
            if(!opened)
            Positioned(
              top: 2,
              right: 2,
              child: AppAssestsImage(
                path: ImageResources.lock,
                width: 10,
                height: 10,
                boxFit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
