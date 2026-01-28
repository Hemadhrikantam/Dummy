import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:flutter/material.dart';

class OverviewDailyHeaderWidget extends StatelessWidget {
  final List<String> tabs;
  final String selectedTab;
  final ValueChanged<String> onTabSelected;
  final bool isExpanded;
  final ScrollController scrollController;
  final Map<String, GlobalKey> tabKeys;

  const OverviewDailyHeaderWidget({
    super.key,
    required this.tabs,
    required this.selectedTab,
    required this.onTabSelected,
    required this.scrollController,
    required this.tabKeys,
    this.isExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: isExpanded ? Axis.vertical : Axis.horizontal,
      controller: scrollController,
      child: Row(
        children: tabs.map((tab) {
          final isSelected = tab == selectedTab;
          final tabKey = tabKeys[tab];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () => onTabSelected(tab),
              child: Container(
                key: tabKey,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.stepperColor
                      : Colors.transparent,
                  borderRadius: Styles.borderRadiusCircular25,
                  border: Border.all(
                    color: isSelected
                        ? AppColors.stepperColor
                        : AppColors.buttonBackground,
                  ),
                ),
                child: Text(
                  tab,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: isSelected ? AppColors.white : Colors.black,
                    fontWeight:
                        isSelected ? FontWeight.w700 : FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

