import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

import '../constent/app_colors.dart';
import '../constent/styles.dart';
import '../models/tab_model.dart';
import 'custom_card.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    required TabController tabController,
    required this.tabs,
    super.key,
    this.backgroundColor,
    this.indicatorColor,
    this.labelColor,
    this.unselectedLabelColor,
    this.indicatorBorderColor,
    this.borderColor,
    this.labelFontSize,
    this.isScrollable,
    this.tabAlignment,
    this.labelPadding,
    this.padding,
  }) : _tabController = tabController;

  final TabController _tabController;
  final List<TabModel> tabs;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final Color? indicatorBorderColor;
  final Color? borderColor;
  final double? labelFontSize;
  final bool? isScrollable;
  final TabAlignment? tabAlignment;
  final EdgeInsets? labelPadding;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: padding ?? Styles.edgeInsetsAll08,
      backgroundColor:
          backgroundColor ?? AppColors.buttonBackground.withOpacity(.16),
      borderRadius: Styles.borderRadiusCircular50,
      border: Border.all(
        color: borderColor ?? AppColors.buttonBackground.withOpacity(.52),
      ),
      child: TabBar(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        isScrollable: isScrollable ?? false,
        tabAlignment: tabAlignment,
        dividerHeight: 0,
        indicator: BoxDecoration(
          color: indicatorColor ?? AppColors.lighterGreen,
          borderRadius: Styles.borderRadiusCircular50,
          border: Border.all(
            color: indicatorBorderColor ?? AppColors.transparent,
          ),
        ),
        labelColor: labelColor ?? AppColors.darkGreen,
        indicatorSize: TabBarIndicatorSize.tab,
        labelPadding: labelPadding,
        labelStyle: TextStyle(fontWeight: FontWeight.w700),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
        padding: Styles.edgeInsetsOnlyH00,
        indicatorPadding: Styles.edgeInsetsOnlyH00,
        unselectedLabelColor: unselectedLabelColor ?? AppColors.black,
        tabs:
            tabs
                .map(
                  (item) => Tab(
                    child: Center(
                      child: Text(
                        item.text,
                        style: TextStyle(
                          fontSize: labelFontSize ?? 16,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}

class InnerCustomTabBar extends StatelessWidget {
  const InnerCustomTabBar({
    required this.index,
    required this.tabController,
    required this.tabs,
    super.key,
    this.isScrollable = false,
    this.onlyText = false,
    this.tabTextStyle,
  });
  final List<TabModel> tabs;
  final String index;
  final TabController tabController;
  final bool isScrollable;
  final bool onlyText;
  final TextStyle? tabTextStyle;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabAlignment: TabAlignment.start,
      isScrollable: isScrollable,
      controller: tabController,
      splashFactory: NoSplash.splashFactory,
      labelStyle:
          tabTextStyle?.copyWith(color: context.themeData.primaryColor) ??
          context.textTheme.titleSmall?.copyWith(
            color: context.themeData.primaryColor,
          ),
      labelColor: context.themeData.primaryColor,
      unselectedLabelColor: AppColors.black,
      indicatorColor: context.themeData.primaryColor,
      dividerColor: AppColors.transparent,
      unselectedLabelStyle:
          tabTextStyle?.copyWith(color: AppColors.grey600) ??
          context.textTheme.titleSmall?.copyWith(color: AppColors.grey600),
      labelPadding:
          isScrollable ? Styles.edgeInsetsOnlyW08 : Styles.edgeInsetsZero,
      tabs: tabs.map((item) => Tab(text: item.text)).toList(),
    );
  }
}
